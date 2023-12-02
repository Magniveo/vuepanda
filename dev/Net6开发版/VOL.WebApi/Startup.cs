using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Autofac;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Http.Features;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Controllers;
using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using Microsoft.AspNetCore.Server.Kestrel.Core;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.FileProviders; 
using Microsoft.Extensions.Hosting;  
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using Newtonsoft.Json;
using Quartz;
using Quartz.Impl;
using Swashbuckle.AspNetCore.SwaggerGen;
using VOL.Core.Configuration;
using VOL.Core.Extensions;
using VOL.Core.Filters;
using VOL.Core.Middleware;
using VOL.Core.ObjectActionValidator;
using VOL.Core.Quartz;
using VOL.Core.Utilities.PDFHelper;
using VOL.Core.WorkFlow;
using VOL.Entity.DomainModels;
using VOL.WebApi.Controllers.Hubs;

namespace VOL.WebApi
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }
        private IServiceCollection Services { get; set; }
        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            //初始化模型验证Configuration
            services.UseMethodsModelParameters().UseMethodsGeneralParameters();
            services.AddSingleton<IObjectModelValidator>(new NullObjectModelValidator());
            Services = services;
            // services.Replace( ServiceDescriptor.Transient<IControllerActivator, ServiceBasedControllerActivator>());
            services.AddSession();
            services.AddMemoryCache();
            services.AddHttpContextAccessor();        
            services.AddMvc(options =>  
            {
                options.Filters.Add(typeof(ApiAuthorizeFilter));
                options.Filters.Add(typeof(ActionExecuteFilter));
                //  options.SuppressAsyncSuffixInActionNames = false;
            });
            services.AddControllers()   
              .AddNewtonsoftJson(op =>
              {
                  op.SerializerSettings.ContractResolver = new Newtonsoft.Json.Serialization.CamelCasePropertyNamesContractResolver();
                  op.SerializerSettings.DateFormatString = "yyyy-MM-dd HH:mm:ss";
              });

            Services.AddAuthentication(options =>
            {
                options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
                options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
            })
             .AddJwtBearer(options =>
             {
                 options.TokenValidationParameters = new TokenValidationParameters
                 {
                     SaveSigninToken = true,//保存token,后台验证token是否生效(重要)
                     ValidateIssuer = true,//是否验证Issuer
                     ValidateAudience = true,//是否验证Audience
                     ValidateLifetime = true,//是否验证失效时间
                     ValidateIssuerSigningKey = true,//是否验证SecurityKey
                     ValidAudience = AppSetting.Secret.Audience,//Audience
                     ValidIssuer = AppSetting.Secret.Issuer,//Issuer，这两项和前面签发jwt的SetUp一致
                     IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(AppSetting.Secret.JWT))
                 };
                 options.Events = new JwtBearerEvents()
                 {
                     OnChallenge = context =>
                     {
                         context.HandleResponse();
                         context.Response.Clear();
                         context.Response.ContentType = "application/json";
                         context.Response.StatusCode = 401;
                         context.Response.WriteAsync(new { message = "授权未通过", status = false, code = 401 }.Serialize());
                         return Task.CompletedTask;
                     }
                 };
             });
            //必须appsettings.json中Configuration
            string corsUrls = Configuration["CorsUrls"];
            if (string.IsNullOrEmpty(corsUrls))
            {
                throw new Exception("请Configuration跨请求的前端Url");
            }
            services.AddCors(options =>
            {
                options.AddDefaultPolicy(
                        builder =>
                        {
                            builder.AllowAnyOrigin()
                           .SetPreflightMaxAge(TimeSpan.FromSeconds(2520))
                            .AllowAnyHeader().AllowAnyMethod();
                        });
            });
            services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
            services.AddControllers();
            services.AddSwaggerGen(c =>
            {
                //分为2份接口Document
                c.SwaggerDoc("v1", new OpenApiInfo { Title = "VOL.Core后台Api", Version = "v1", Description = "这是对Document的Describe。。" });
                c.SwaggerDoc("v2", new OpenApiInfo { Title = "VOL.Core对外三方Api", Version = "v2", Description = "xxx接口Document" });  //控制Device里使用[ApiExplorerSettings(GroupName = "v2")]              
                //启用中文注释功能
               // var basePath = PlatformServices.Default.Application.ApplicationBasePath;
              //  var xmlPath = Path.Combine(basePath, "VOL.WebApi.xml");
             //   c.IncludeXmlComments(xmlPath, true);//显示控制Devicexml注释Content
                //添加过滤Device 可Customize添加对控制Device的注释Describe
                //c.DocumentFilter<SwaggerDocTag>();

                var security = new Dictionary<string, IEnumerable<string>> { { AppSetting.Secret.Issuer, new string[] { } } };
                c.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme()
                {
                    Description = "JWT授权token前面需要加上字段BearerWith一个空格,如Bearer token",
                    Name = "Authorization",
                    In = ParameterLocation.Header,
                    Type = SecuritySchemeType.ApiKey,
                    BearerFormat = "JWT",
                    Scheme = "Bearer"
                });

                c.AddSecurityRequirement(new OpenApiSecurityRequirement
                {
                    {
                        new OpenApiSecurityScheme
                        {
                            Reference = new OpenApiReference {
                                Type = ReferenceType.SecurityScheme,
                                Id = "Bearer"
                            }
                        },
                        new string[] { }
                    }
                });
            })
             .AddControllers()
            .ConfigureApiBehaviorOptions(options =>
            {
                options.SuppressConsumesConstraintForFormFileParameters = true;
                options.SuppressInferBindingSourcesForParameters = true;
                options.SuppressModelStateInvalidFilter = true;
                options.SuppressMapClientErrors = true;
                options.ClientErrorMapping[404].Link =
                    "https://*/404";
            });
            services.AddSignalR();
            //services.AddSingleton(typeof(IConverter), new SynchronizedConverter(new PdfTools()));
            //services.AddTransient<IPDFService, PDFService>();

            services.AddHttpClient();
            Services.AddTransient<HttpResultfulJob>();
            Services.AddSingleton<ISchedulerFactory, StdSchedulerFactory>();
            Services.AddSingleton<Quartz.Spi.IJobFactory, IOCJobFactory>();

            //SetUpFileUpload大小限制
            //SetUpFileUpload大小限制
            services.Configure<FormOptions>(x =>
            {
                x.MultipartBodyLengthLimit = 1024 * 1024 * 100;//100M
            });
            services.Configure<KestrelServerOptions>(options =>
            {
                options.Limits.MaxRequestBodySize = 1024 * 1024 * 100;//100M
            });
            services.Configure<IISServerOptions>(options =>
            {
                options.MaxRequestBodySize = 1024 * 1024 * 100;//100M
            });
        }
            public void ConfigureContainer(ContainerBuilder builder)
        {
            Services.AddModule(builder, Configuration);
            //初始化ProcessTable，Table里面必须有AuditStatus字段
            WorkFlowContainer.Instance
                   //name= Process实例ExpertName
                   //filterFieldsProcess实例ExpertName
                // .Use<SellOrder>(name: "OrderManagement",
                 //    filterFields: x => new { x.OrderType, x.Qty, x.CreateID, x.SellNo }, //Approval过滤条件的字段
                 //    formFields: x => new { x.OrderType, x.TranNo, x.Qty, x.SellNo, x.Creator }//Approval界面显示的字段
               // )
                // .Use<App_Expert>()
                //run方法必须写在最后位置
                .Run();
        }
        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseQuartz(env);
            }
            app.UseMiddleware<ExceptionHandlerMiddleWare>();
            app.UseStaticFiles().UseStaticFiles(new StaticFileOptions
            {
                ServeUnknownFileTypes = true
            });
            app.UseDefaultFiles();
            app.Use(HttpRequestMiddleware.Context);

            //2021.06.27增加创建默认upload文件夹
            string _uploadPath = (env.ContentRootPath + "/Upload").ReplacePath();

            if (!Directory.Exists(_uploadPath))
            {
                Directory.CreateDirectory(_uploadPath);
            }

            app.UseStaticFiles(new StaticFileOptions()
            {
                FileProvider = new PhysicalFileProvider(
                Path.Combine(Directory.GetCurrentDirectory(), @"Upload")),
                //Configuration访问虚拟目录时文件夹别名
                RequestPath = "/Upload",
                OnPrepareResponse = (Microsoft.AspNetCore.StaticFiles.StaticFileResponseContext staticFile) =>
                {
                    //可以在此处读取请求的信息进行Authority认证
                    //  staticFile.File
                    //  staticFile.Context.Response.StatusCode;
                }
            });
            //ConfigurationHttpContext
            app.UseStaticHttpContext();

            app.UseSwagger();
            app.UseSwaggerUI(c =>
            {
                //2个下拉框选项  选择对应的Document
                c.SwaggerEndpoint("/swagger/v1/swagger.json", "VOL.Core后台Api");
                c.SwaggerEndpoint("/swagger/v2/swagger.json", "Modifier第三方Api");
                c.RoutePrefix = "";
            });
            app.UseRouting();
            app.UseCors();
            app.UseAuthentication();
            app.UseAuthorization();
            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
                //ConfigurationSignalR
                if (AppSetting.UseSignalR)
                {
                    string corsUrls = Configuration["CorsUrls"];

                    endpoints.MapHub<HomePageMessageHub>("/message")
                    .RequireCors(t =>
                    t.WithOrigins(corsUrls.Split(',')).
                    AllowAnyMethod().
                    AllowAnyHeader().
                    AllowCredentials());
                }

            });
        }
    }

    /// <summary>
    /// Swagger注释帮助类
    /// </summary>
    public class SwaggerDocTag : IDocumentFilter
    {
        /// <summary>
        /// 添加附加注释
        /// </summary>
        /// <param name="swaggerDoc"></param>
        /// <param name="context"></param>
        public void Apply(OpenApiDocument swaggerDoc, DocumentFilterContext context)
        {
            //添加对应的控制DeviceDescribe
            swaggerDoc.Tags = new List<OpenApiTag>
            {
                new OpenApiTag { Name = "Test", Description = "这是Describe" },
                //new OpenApiTag { Name = "你的控制Device名字，不带Controller", Description = "控制DeviceDescribe" },
            };
        }
    }
}
