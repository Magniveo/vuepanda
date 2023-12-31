-- ----------------------------
-- Table structure for App_Appointment
-- ----------------------------
DROP TABLE IF EXISTS "public"."App_Appointment";
CREATE TABLE "public"."App_Appointment" (
                                            "Id" uuid NOT NULL,
                                            "CreateDate" timestamp(6),
                                            "CreateID" int4,
                                            "Creator" varchar(50) COLLATE "pg_catalog"."default",
                                            "Describe" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
                                            "Modifier" varchar(50) COLLATE "pg_catalog"."default",
                                            "ModifyDate" timestamp(6),
                                            "ModifyID" int4,
                                            "Name" varchar(70) COLLATE "pg_catalog"."default" NOT NULL,
                                            "PhoneNo" varchar(15) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of App_Appointment
-- ----------------------------

-- ----------------------------
-- Table structure for App_Expert
-- ----------------------------
DROP TABLE IF EXISTS "public"."App_Expert";
CREATE TABLE "public"."App_Expert" (
                                       "ExpertId" int4 NOT NULL,
                                       "AuditDate" timestamp(6),
                                       "AuditId" int4,
                                       "AuditStatus" int4 NOT NULL,
                                       "Auditor" varchar(50) COLLATE "pg_catalog"."default",
                                       "Certificate" text COLLATE "pg_catalog"."default",
                                       "City" varchar(70) COLLATE "pg_catalog"."default",
                                       "Company" varchar(70) COLLATE "pg_catalog"."default",
                                       "CreateDate" timestamp(6),
                                       "CreateID" int4,
                                       "Creator" varchar(50) COLLATE "pg_catalog"."default",
                                       "Education" varchar(70) COLLATE "pg_catalog"."default",
                                       "Enable" int2 NOT NULL,
                                       "ExpertName" varchar(50) COLLATE "pg_catalog"."default",
                                       "HeadImageUrl" text COLLATE "pg_catalog"."default",
                                       "IDNumber" varchar(18) COLLATE "pg_catalog"."default",
                                       "Modifier" varchar(50) COLLATE "pg_catalog"."default",
                                       "ModifyDate" timestamp(6),
                                       "ModifyID" int4,
                                       "PhoneNo" varchar(11) COLLATE "pg_catalog"."default",
                                       "Professional" varchar(70) COLLATE "pg_catalog"."default",
                                       "ReallyName" varchar(50) COLLATE "pg_catalog"."default",
                                       "Resume" text COLLATE "pg_catalog"."default",
                                       "SpecialField" text COLLATE "pg_catalog"."default",
                                       "UserName" varchar(50) COLLATE "pg_catalog"."default",
                                       "UserTrueName" varchar(70) COLLATE "pg_catalog"."default",
                                       "User_Id" int4
)
;

-- ----------------------------
-- Sequence structure for app_expert_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."app_expert_id_seq";
CREATE SEQUENCE "public"."app_expert_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 10
CACHE 1;

ALTER TABLE "public"."App_Expert" ALTER COLUMN "ExpertId" SET DEFAULT nextval('app_expert_id_seq');

-- ----------------------------
-- Records of App_Expert
-- ----------------------------
INSERT INTO "public"."App_Expert" VALUES (1, '2018-09-07 10:58:17', 1, 1, 'ModifierSuperAdministrator', NULL, '上海市', '中国农业大学', '2018-09-04 15:49:44', 3344, 'User31110458', '博士', 1, '宫本七号', 'Upload/Tables/App_Expert/202103061750152777/head2.jpg', '150124199911110116', 'SuperAdministrator', '2021-03-07 21:55:31', 1, '1388886666', '教授', '拉美西斯', '二十九岁,对于一个人男人而言不算老,可是对于爱情来说已是风烛残年', 'Upload/Tables/App_Expert/201911271400081947/EnableImageSupport (1).xlsx', '13381277739', 'User31110458', 3344);
INSERT INTO "public"."App_Expert" VALUES (2, '2019-09-22 22:30:08', 3362, 1, 'zs', '', '天津市', '窦天宝传奇', '2018-09-18 17:45:54', 3358, '较瘦', '小学', 1, '干将莫邪', 'Upload/Tables/App_Expert/202304051526079577/gj.png', '250124123911110121', 'SuperAdministrator', '2023-04-05 15:26:08', 1, '1388887777', '演员', '木兰', '干将莫邪是一个高伤害、高收益的心流型Enable狙击法师，完全依靠精准的技能施法仅仅是一个合格的干将的Basic要求。当视野外或None视野的时候，沉浸在心流中的干将玩家，甩狙盲剑都会让干将使用者获得巨大的满足', 'Upload/Tables/App_Expert/201912111717154170/exceltest.xlsx', '17612519002', '较瘦', 3358);
INSERT INTO "public"."App_Expert" VALUES (3, NULL, NULL, 0, NULL, NULL, '天津市', NULL, '2021-03-06 17:52:07', 1, 'SuperAdministrator', NULL, 1, '小鲁班', 'Upload/Tables/App_Expert/202304051203334519/nb.png', NULL, 'SuperAdministrator', '2023-04-05 12:03:34', 1, '1388888888', NULL, '女秘书', '别看小鲁班的腿很短，但是在对线上边基本上没有能With他一战的射手。', NULL, '17612519001', NULL, NULL);
INSERT INTO "public"."App_Expert" VALUES (4, NULL, NULL, 0, NULL, NULL, '北京市', NULL, '2023-04-05 14:36:04', 1, 'SuperAdministrator', NULL, 0, 'vol-table', 'Upload/Tables/App_Expert/202304051436032612/wechart.png', NULL, 'SuperAdministrator', '2023-04-05 15:30:38', 1, NULL, NULL, NULL, 'vol-table增加CustomizeFormContent,内置了分页,高度自适应功能,需要自己写Content..', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for App_News
-- ----------------------------
DROP TABLE IF EXISTS "public"."App_News";
CREATE TABLE "public"."App_News" (
                                     "Id" int4 NOT NULL,
                                     "Author" varchar(70) COLLATE "pg_catalog"."default",
                                     "BigImageUrls" text COLLATE "pg_catalog"."default",
                                     "Content" text COLLATE "pg_catalog"."default",
                                     "CreateDate" timestamp(6),
                                     "CreateID" int4,
                                     "Creator" varchar(50) COLLATE "pg_catalog"."default",
                                     "DailyRecommend" int2 NOT NULL,
                                     "DetailUrl" varchar(200) COLLATE "pg_catalog"."default",
                                     "Enable" int2,
                                     "ImageUrl" text COLLATE "pg_catalog"."default",
                                     "Modifier" varchar(50) COLLATE "pg_catalog"."default",
                                     "ModifyDate" timestamp(6),
                                     "ModifyID" int4,
                                     "NewsType" int4 NOT NULL,
                                     "OrderNo" int4,
                                     "ReleaseDate" timestamp(6),
                                     "Title" varchar(70) COLLATE "pg_catalog"."default" NOT NULL,
                                     "ViewCount" int4
)
;

-- ----------------------------
-- Sequence structure for app_news_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."app_news_id_seq";
CREATE SEQUENCE "public"."app_news_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 10
CACHE 1;
ALTER TABLE "public"."App_News" ALTER COLUMN "Id" SET DEFAULT nextval('app_news_id_seq');

-- ----------------------------
-- Records of App_News
-- ----------------------------
INSERT INTO "public"."App_News" VALUES (1, NULL, NULL, '<p style=\"line-height:2;\"><br/></p><p style=\"line-height:2;\"><img src=\"https://nimg.ws.126.net/?url=http%3A%2F%2Fdingyue.ws.126.net%2F2022%2F0419%2Fe8ae745dj00rakxnm0058d000rs00fnp.jpg&amp;thumbnail=660x2147483647&amp;quality=80&amp;type=jpg\"/><br/></p><p style=\"line-height:2;\">开发商Studio Wildcard宣布《方舟：终极幸存者版》将于2022年9月登录任天堂Switch，发售实体版和数字版，售价49.99美元，原版游戏所有者可以免费升级。</p><p style=\"line-height:2;\">《方舟：终极幸存者版》包含了本体《方舟：生存进化》及其所有大型扩展包Scorched Earth、Aberration、Extinction 和 Genesis Parts 1&amp;2，其中Scorched Earth扩展包将在游戏发售时发布，随后的扩展包将每隔两个月发布一次。</p><p style=\"line-height:2;\">拥有原版《方舟：生存进化》的玩家可能会记得，这款游戏自Switch版上线以来一直处于很糟糕的状态。幸运的是，Studio Wildcard已经With第三方开发商合作，重新编写了Switch上的整体代码，并在最新版本的虚幻4上进行开发。计划对功能、图形和优化进行完整的修改。此外，所有现有的Switch进度和存档Data将被保留至新版。</p><p style=\"line-height:2;\">不过最新新版游戏的质量如何，还是需要等发售之后实测才会知道，毕竟虚幻4引擎的游戏在switch上流畅运行，对于开发商来说真的是一个很大的挑战。</p>', '2022-04-20 01:49:23', 1, 'SuperAdministrator', 1, 'static/news/20220420/0949288120.html', 1, 'Upload/Tables/App_News/202204201140571762/20-05.png', 'SuperAdministrator', '2022-04-20 09:51:16', 1, 1, NULL, NULL, '重写代码可免费升级！《方舟终极版》9月登录Switch', NULL);
INSERT INTO "public"."App_News" VALUES (2, NULL, NULL, '<p style=\"line-height:2.5;\"><span style=\"color: var(--el-text-color-regular);\"><br/></span></p><ul><li><span style=\"color: var(--el-text-color-regular);\">用框架之前尽量会一些简SinglevueBasic语法，如果不会vue项目不复杂也不影响使用框架</span></li></ul><p><br/></p><ul><li>后台：会熟练写C#代码就没问题</li></ul><p><br/></p><ul><li>前端Vue语法学习方式，<span style=\"color: var(--el-text-color-regular);\">直接在框架上添加Page以脚手架的方式来学习Vue</span></li></ul><p><br/></p><p style=\"line-height:2.5;\"><b>刚入门前端的先学会这些就够了</b></p><p style=\"line-height:2.5;\"><span style=\"color: var(--el-text-color-regular);\">1.</span><span style=\"font-size: 14px; color: var(--el-text-color-regular);\">Basic语法</span></p><p style=\"line-height:2.5;\"></p><p style=\"line-height:2.5;\">&nbsp; &nbsp; &nbsp; v-model  v-for  v-if  v-else-if  v-show&nbsp;</p><p style=\"line-height:2.5;\">&nbsp; &nbsp; &nbsp; @click  slot  ref  class  style\n</p><p style=\"line-height:2.5;\">2.子父Component传参</p><p style=\"line-height:2.5;\"><span style=\"color: var(--el-text-color-regular);\">&nbsp; &nbsp; &nbsp;props、$emit、$refs</span></p><p style=\"line-height:2.5;\">3、生命周期</p><p style=\"line-height:2.5;\">&nbsp; &nbsp; &nbsp;created、mounted、destroyed、activated<br/></p><p style=\"line-height:2.5;\">4、创建VuePage、VueComponent(Page)引用</p>', '2022-04-21 10:36:28', 1, 'SuperAdministrator', 1, 'static/news/20220421/1044487732.html', 1, 'Upload/Tables/App_News/202303050006488340/wechat.jpg', 'SuperAdministrator', '2022-09-15 11:17:36', 1, 1, NULL, NULL, '前端VueWith后台学习方式With一些Basic语法问题', NULL);
INSERT INTO "public"."App_News" VALUES (3, NULL, NULL, '<div style=\"\"><br/></div><ul style=\"\"><li>202-05-03 11:41:43&nbsp;优化vue3版本Authority分配Page区分appDishSingle</li><li>202-05-03 11:41:03&nbsp;优化vue2版本Authority分配Page区分appDishSingle</li><li>202-05-03 11:13:08&nbsp;增加vue3版本volform输入框inputStyle属性</li><li>202-05-03 10:56:33&nbsp;增加vue3版本voltableComponenttextareaEditAppType</li><li>202-05-03 10:46:14&nbsp;移除多余SetUp默认值的Operation</li><li>202-05-03 10:36:37&nbsp;优化移动端Authority名不区分大小写</li><li>202-05-03 10:33:18&nbsp;优化移动端保存前方法</li><li>202-05-03 10:31:50&nbsp;增加移动端FormComponentref属性</li><li>202-05-03 10:29:44&nbsp;屏蔽CodeGenerationDevice生成dto功能</li><li>202-05-03 03:50:26<p>vue3版本集成signalR(MessagePush),更新文件:</p><p>package.json、router/index.js、views/index.vue、views/Home.vue、views/index/index.less、Startup.cs、appsettings.json、</p>Hubs/HomePageMessageHub.cs、views/index文件夹、views/signalR/Index.vue</li></ul>', '2022-05-06 15:46:30', 1, 'SuperAdministrator', 0, 'static/news/20220506/1546322571.html', 1, 'Upload/Tables/App_News/202303050007001246/wechat.jpg', 'SuperAdministrator', '2022-05-06 15:56:56', 1, 1, NULL, NULL, '2022.05增加首页MessagePush(signalr)功能可实时SendMessage', NULL);
INSERT INTO "public"."App_News" VALUES (4, NULL, NULL, '<ul><li>2022-10-31 02:00:12&nbsp;集成el-select-v2Component解决下拉框Data源多过时卡顿的问题</li><li>2022-10-31 00:42:15&nbsp;增加vue3版本volform下拉框选中Event返回第二个参数</li><li>2022-10-31 00:38:04&nbsp;优化vue3版本volformComponent图片WithOther标签的样式</li><li>2022-10-31 00:30:01&nbsp;修复vue3版本VolElementMenuChild.vueComponent三级DishSingle启用不显示功能None效的问题</li><li>2022-10-31 00:18:25&nbsp;移除sqldapper中Dept_Id属性</li><li>2022-10-31 00:16:17&nbsp;优化后台Login方法异常提示信息</li><li>2022-10-31 00:01:41&nbsp;修复linux下验证码字体可能不显示的问题(by @adminoryuan )</li><li>2022-10-24 22:44:08&nbsp;调整.net6输出目录路径</li><li>2022-10-24 03:01:24&nbsp;修复vue3版本下拉框多选二次打开异常的问题</li><li>2022-10-24 02:58:57&nbsp;修复Export列某些情况可能WithForm界面顺序不一致的问题</li><li>2022-10-23 03:34:47&nbsp;[update] 关于ubantu20.0 环境下，验证码字体失效的改进</li><li>2022-10-19 17:20:05&nbsp;优化移动端voltable高度值判断</li><li>2022-10-19 17:07:48&nbsp;Merge branch of https://github.com/cq-panda/Vue.NetCore</li><li>2022-10-19 17:01:13&nbsp;修复viewgridEventrowclick异常的问题</li><li>2022-10-18 17:26:28&nbsp;增加移动端Form按钮示例</li><li>2022-10-18 00:59:48&nbsp;优化移动端volformForm属性extraWith图标</li><li>2022-10-18 00:58:54&nbsp;完善Document</li><li>2022-10-18 00:52:11&nbsp;Merge branch of https://github.com/cq-panda/Vue.NetCore</li><li>2022-10-18 00:47:25&nbsp;优化移动端volformFormextra属性With图标</li><li>2022-10-17 04:17:28&nbsp;增加移动端vol-table、生成Pageviewgrid合计功能(目前只对Configuration属性this.direction= TableDisplay生效)</li><li>2022-10-17 02:57:28&nbsp;优化移动端高度计算规则</li><li>2022-10-17 02:01:17&nbsp;优化移动端volform下拉框选择样式With暂时屏蔽搜索功能</li><li>2022-10-17 01:55:04&nbsp;增加移动端volform富文本EditDeviceContent显示</li><li>2022-10-17 01:54:46&nbsp;增加移动端voltable富文本EditDeviceContent显示</li><li>2022-10-17 01:49:01&nbsp;修复CodeGenerationDevicemysql8.x版本默认字段顺序显示WithData库Table不一致的问题</li><li>2022-10-17 01:39:21&nbsp;移除CodeGenerationDeviceWorkTable首字母强制大写</li><li>2022-10-11 15:10:11&nbsp;修复vue3版本voltable属性extraNone效的问题</li><li>2022-10-11 12:00:22&nbsp;优化ExceptionInfo提示</li><li>2022-10-07 22:34:01&nbsp;完善Document</li><li>2022-10-07 22:33:17&nbsp;增加移动端base64图片的支持</li><li>2022-10-07 21:46:16&nbsp;Merge branch  of https://github.com/cq-panda/Vue.NetCore</li><li>2022-10-07 21:43:52&nbsp;优化vue3版本volform年月默认选中的格式</li><li>2022-10-07 21:36:49&nbsp;集成vue3版本voltable选中行高亮显示属性 highlight-current-row</li><li>2022-10-07 21:31:02&nbsp;增加vue3版本明细Table添加行自动EndEdit状态</li><li>2022-10-07 21:26:34&nbsp;增加开发环境中间件ExceptionInfo返回</li><li>2022-10-07 21:01:36&nbsp;增加Customize上传文件路径UploadFolder</li><li>2022-10-07 20:49:04&nbsp;优化批量获取model实体</li><li>2022-10-07 20:41:57&nbsp;修复Customize列显示WithCodeGenerationDevice不同步的问题</li><li>2022.09</li><li>2022-09-30 16:14:48&nbsp;修复移动端view-grid不能复用的问题</li><li>2022-09-28 18:39:08&nbsp;1</li><li>2022-09-28 18:35:36&nbsp;优化移动端Component</li><li>2022-09-28 17:42:35&nbsp;修复移动端异步AuthorityWithComponent渲染不同步的问题</li><li>2022-09-26 22:04:30&nbsp;完善Document</li><li>2022-09-26 22:01:38&nbsp;增加移动端示例ApprovalAuthority判断</li><li>2022-09-26 02:34:34&nbsp;增加移动端ApprovalOperation(见小程序演示环境：MasterSlaveTablePage，代码见SellOrder文件夹)</li><li>2022-09-26 01:07:17&nbsp;调整移动端vol-form字段居右显示</li><li>2022-09-26 00:28:16&nbsp;修复ScheduledTasks点ExecuteNone效的问题</li><li>2022-09-26 00:15:05&nbsp;增加vue3版本CustomizeExport文件名</li><li>2022-09-12 20:39:32&nbsp;优化vue3版本voltable合计小数位数(默认两次)</li><li>2022-09-12 20:32:37&nbsp;优化vue3版本下拉框选择</li><li>2022-09-12 20:14:35&nbsp;vue3版本volformComponent增加ref属性</li><li>2022-09-12 19:14:50&nbsp;集成vue3版本弹出框拖拽功能draggable</li><li>2022-09-12 19:02:54&nbsp;修复vue3版本Single词拼写错误的问题</li><li>2022-09-12 18:24:26&nbsp;优化vue3版本弹出框Title显示</li><li>2022-09-12 02:16:05&nbsp;修复移动端小程序上Customize格式None效的问题</li><li>2022-09-12 00:13:06&nbsp;优化移动端vol-table高度计算WithListDisplay样式</li><li>2022-09-09 18:00:01&nbsp;修复Approval提示Data变化的问题</li><li>2022-09-09 17:58:41&nbsp;重写vue3版本AuthorityPage</li><li>2022-09-08 19:28:30&nbsp;更新Data库脚本</li><li>2022-09-07 17:15:59&nbsp;Update DateTimeHelper.cs</li><li>2022-09-07 14:30:57&nbsp;增加ScheduledTasksQuartz.Net</li><li>2022-09-07 09:51:26&nbsp;更新Data库脚本</li><li>2022-09-07 02:10:02</li><li>2022-08-29 04:32:06&nbsp;增加ApprovalProcess回退功能,更新文件:ServiceBase.cs、WorkFlowManager.cs、Sys_WorkFlowController.cs、前端viewgrid文件夹(回退使用方法见后台开发Document上Approval方法)</li><li>2022-08-29 02:11:03&nbsp;优化vue3版本tableEdit时Data源AppType判断</li><li>2022-08-29 01:45:31&nbsp;优化vue3版本Approval时隐藏弹出框Other按钮</li><li>2022-08-29 01:35:33&nbsp;优化vue3版本FormEdit为函数时提交自动计算结果</li><li>2022-08-29 01:29:53&nbsp;修复vue3版本升级后白色With黑色主题颜色显示异常的问题</li><li>2022-08-29 01:09:52&nbsp;优化Login页字体大小</li><li>2022-08-29 01:07:11&nbsp;修复vue3版本升级后更多按钮图标不显示的问题</li><li>2022-08-24 21:33:53&nbsp;Merge branch of https://github.com/cq-panda/Vue.NetCore</li><li>2022-08-24 21:32:19&nbsp;优化移动端AuthorityLoad顺序</li><li>2022-08-22 21:33:00&nbsp;优化vue3版本FormAppType为number时的默认值</li><li>2022-08-22 21:23:07&nbsp;优化vue3版本select多选显示</li><li>2022-08-22 21:09:40&nbsp;优化UserTableAdd或修改提示信息</li><li>2022-08-22 21:00:23&nbsp;优化vue3版本voltable默认显示滚动条</li><li>2022-08-22 20:46:55&nbsp;优化vue3版本DishSingleWith上传Component图标显示</li><li>2022-08-22 20:43:34&nbsp;优化弹出框高度自适应</li><li>2022-08-22 20:35:02&nbsp;优化FileUpload默认大小</li><li>2022-08-22 01:33:45&nbsp;优化UserAddWithDel提示</li><li>2022-08-22 01:33:07&nbsp;增加.net6版本ApprovalProcess</li><li>2022-08-19 16:35:08&nbsp;更新mysql脚本</li><li>2022-08-18 02:38:58&nbsp;更新sqlserver脚本</li><li>2022-08-18 02:17:52&nbsp;调整审核AppType显示</li><li>2022-08-18 01:43:35&nbsp;优化Approval人显示</li><li>2022-08-17 22:53:15&nbsp;增加发邮件功能：更新MailHelper.cs、appsettings.json(最后面的MailConfiguration)</li><li>2022-08-17 00:16:20&nbsp;增加点击MyApproval时自动跳转弹出Approval信息Page</li><li>2022-08-16 23:26:38&nbsp;优化vue3版本http.js文件强制ApiUrl以/结尾</li><li>2022-08-16 23:22:53&nbsp;增加vue3版本明细TableContent超出换行显示属性</li><li>2022-08-16 23:14:37&nbsp;优化vue3版本tableEvent点击上下文指向</li><li>2022-08-16 23:13:52&nbsp;修复vue3版本首页index.vue导航右键功能浏览Device兼容的问题</li><li>2022-08-16 23:12:28&nbsp;完善Document</li><li>2022-08-16 23:11:19&nbsp;优化CodeGenerationDevice模板</li><li>2022-08-16 22:44:39&nbsp;集成vue3版本voltableComponent列属性showOverflowTooltip(当Content过长被隐藏时显示 tooltip)</li><li>2022-08-16 22:39:11&nbsp;增加vue3版本主Table在线FormEdit前方法拦截</li><li>2022-08-16 02:07:44&nbsp;增加mysqlApprovalProcessTable结构</li><li>2022-08-16 01:56:59&nbsp;完善ApprovalProcess，增加Role_Id、DepartmentApproval功能</li><li>2022-08-16 01:52:47&nbsp;优化sqldapper批量写入mysqlData库</li><li>2022-08-15 05:17:49&nbsp;增加Process示例</li><li>2022-08-15 04:08:46&nbsp;修复移动端安卓真机AppType错误的问题</li><li>2022-08-15 04:06:17&nbsp;修复移动端ImageUploadAuthority异常的问题</li><li>2022-07-30 11:16:55&nbsp;移除.net6版本过时代码</li><li>2022-07-25 02:45:15&nbsp;增加ApprovalProcess(Approval逻辑待完)</li><li>2022-07-20 00:17:15&nbsp;优化移动端下拉框默认值显示</li><li>2022-07-18 02:55:25&nbsp;完善Document</li><li>2022-07-18 02:01:05&nbsp;修复vue3版本voltableComponentEdit格式为年月日时格式显示不正确的问题</li><li>2022-07-18 01:44:37&nbsp;增加vue3版本CodeGenerationDeviceOrderNo字段说明</li><li>2022-07-18 01:40:23&nbsp;修复CustomizeAuthority判断大小写判断错误的问题</li><li>2022-07-18 01:39:47&nbsp;增加默认多字段OrderNo功能(多个字段逗号隔开),更新文件ServiceBase.cs</li><li>2022-07-18 01:18:19&nbsp;修复vue3版本volform邮箱AppType验证不正确的问题</li><li>2022-07-18 00:57:40&nbsp;修复vue3版本volformUserPwd输入框AppType错误的问题</li><li>2022-07-13 00:14:34&nbsp;优化主从Table不再要求主从Table的主键字段AppType一致</li><li>2022-07-13 00:11:49&nbsp;修复vue3版本vol-tableEdit时下拉框多选key、value不一致没有正确转换的问题</li><li>2022-07-13 00:10:18&nbsp;修复明细Table修改时Modifier信息没有更新的问题</li><li>2022-07-12 23:23:06&nbsp;同步mysqlWithpgsqlData库脚本</li><li>2022-07-12 23:19:19&nbsp;修复pgsqlData库批量写入异常的问题</li><li>2022-07-12 23:16:45&nbsp;优化反射代码注入</li><li>2022-07-05 01:36:39&nbsp;优化通用excelExport方法</li><li>2022-07-05 00:11:00&nbsp;移除vue3版本中的错误代码</li></ul>', '2022-11-09 11:18:37', 1, 'SuperAdministrator', 1, NULL, 1, 'Upload/Tables/App_News/202211091118521029/2.png', 'SuperAdministrator', '2023-04-05 16:06:17', 1, 1, NULL, NULL, '2022.11增强移动端Component功能,PC端功能加强Withbug修复,还有好多功能自己看吧', NULL);
INSERT INTO "public"."App_News" VALUES (5, NULL, NULL, '<p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023.02</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-21 22:46:25 重写移动端按钮布局</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-21 22:03:19 增加移动端FormCustomize列、超链接With点击Event示例</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-21 15:43:44 回调移动端vol-table分页行数显示</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-20 18:08:19 增加vol-tableWith生成PagetableCustomize按钮组Dropdown示例</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-20 01:24:03 完善Document</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">7.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-20 01:13:31 修复vue3版本volformComponent文件ReadOnly时样式缺失的问题</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">8.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-16 18:15:25 增加.net6版本ScheduledTasksConfiguration</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">9.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-15 10:09:12 优化移动端vol-tableComponentLoad提示</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">10.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-14 19:03:29 调整移动端生成Page按钮默认为显示状态</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">11.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-14 19:02:19 优化移动端vol-table刷新Page闪烁的问题</font></p><p style=\"line-height:1.15; padding-left:2em;\"><!--[if--><font size=\"3\">12.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-14 18:50:16 增加移动端vol-tableListDisplay时标签宽度属性width</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">13.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-14 18:49:18 优化vue2版本Edit、Del默认参数</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">14.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-13 11:00:19 增加移动端Edit框Form标签宽度属性labelWidth</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">15.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-08 13:42:20 Jwt解析时,不应传入Bearer 字符; 修复当更新带明细的主Table时，如果主Table下包含多个List属性，通过List则有可能None法正确获取明细的Data的问题(by @bulog)</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">16.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-03 18:58:53 增加orQuery示例</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">17.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-03 17:25:20 增加vue3版本CodeGenerationDevicevolformForm生成评分rateComponent(更新前端volform.vue、builderData.js文件)</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">18.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-03 17:24:24 集成vue3版本volformForm评分rateComponent</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">19.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-03 17:14:15 优化CodeGenerationDeviceDate字段Form默认宽度</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">20.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-03 17:05:55 集成vue3版本voltable方法selectionchagned(by\n@kevin100702)</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">21.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-03 17:00:40 Merge pull\nrequest #305 from kevin100702/master</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">22.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-03 16:59:32 修复vue3版本白色主题DishSingle栏背景颜色没有变化的问题</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">23.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-03 16:50:06 增加vue3版本FormTooltip显示提示示例</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">24.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-03 16:32:51 修复vue3版本volform动态切换Form为ReadOnly或label显示时Form校验不正确的问题</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">25.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-03 16:31:44 修复vue3版本Edit框打开时某些情况显示了Form校验的问题</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">26.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-02-03 14:14:53 优化vue3版本级联递归性能</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">27.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023.01</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">28.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-01-17 15:01:55 修复vue3版本EditDevice可能异常的问题</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">29.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-01-17 15:00:58 修改开发版SwaggerUI</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">30.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-01-17 09:58:51 Merge pull\nrequest #2 from cq-panda/master</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">31.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-01-13 14:13:25 1</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">32.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-01-11 13:41:03 修复vue2版本EditDevice某些情况不能重置Content的问题</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">33.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-01-08 21:10:57 Merge pull\nrequest #1 from cq-panda/master</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">34.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-01-05 16:32:42 修复vue3版本volformComponentselect2Data源key没有转换的问题</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">35.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-01-05 16:32:00 优化vue3版本viewgridComponentData源复用</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">36.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-01-05 16:30:19 优化vue3版本viewgridComponentData源复用</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">37.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-01-04 17:47:01 暴露selectionchagned 和 selectable</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">38.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-01-04 14:39:46 修复sqldapper方法DelWithKeyDel异常的问题</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">39.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-01-04 11:11:47 完善Document</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">40.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-01-04 11:00:37 增加vue3版本v</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">41.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-01-04 11:00:37 增加vue3版本volformEditDeviceReadOnly时以标签显示(by @ying)</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">42.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-01-04 10:53:43 修复vue3版本volform下拉框搜索后不能还原的问题</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">43.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-01-04 10:33:10 优化vue3版本viewgrid明细Table按钮颜色可能异常的问题</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">44.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-01-04 10:26:39 增加vue3版本voltable动态限定Single元格只方法getDisabled</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">45.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-01-04 10:14:45 优化上传示例</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">46.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-01-04 10:14:17 增加vue3版本ImageUpload(jpg、jpeg格式)自动压缩功能</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">47.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2023-01-04 10:06:23 修复ApprovalProcess只有一个Node时Approval异常的问题</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">48.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2022.12</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">49.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2022-12-27 21:17:16 vol-table 添加isdisabled，传入参数row, column ，返回trueTable示禁用</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">50.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2022-12-26 22:38:41 修复vue3版本voltable二级Table头formatterWithclickNone效的问题</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">51.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2022-12-26 03:29:39 修复vue3版本EditAppType为switch时会影响QueryAppType的问题</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">52.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2022-12-26 02:37:20 修复vue3版本volformUserPwd输框异常的问题</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">53.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2022-12-26 02:36:01 增加Data源bigintAppType的支持</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">54.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2022-12-26 02:33:25 增加vue3版本voltableComponentData源Load完成后的方法dicInited</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">55.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2022-12-26 02:32:59 增加vue3版本volformComponentData源Load完成后的方法dicInited</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">56.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2022-12-26 02:24:42 修复ApprovalProcess下一个Approval人参数错误的问题</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">57.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2022-12-17 16:54:51 优化移动端首页</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">58.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2022-12-17 16:52:38 优化移动端vol-tableComponentCustomize按钮</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">59.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2022-12-15 16:25:30 修复vue3版本vol-table timeComponentNone效的问题</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">60.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2022-12-13 20:22:14 修改mysql批量写入可能异常的问题(by @bulog )</font></p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">61.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2022-12-12 21:24:22\nfix(Database): 修复MySQL批量插入只能插入一条Data的Bug(by @Ady)</font></p><p style=\"line-height:2.5; padding-left:2em;\">\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n</p><p style=\"padding-left:2em;\"><!--[if--><font size=\"3\">62.&nbsp;&nbsp;&nbsp;&nbsp;\n<!--[endif]-->2022-12-02 00:09:36 修复vue3版本级联Component超过500个选项时value转换的问题</font></p>', '2023-03-05 00:04:22', 1, 'SuperAdministrator', 1, 'static/news/20230305/0004288287.html', 1, 'Upload/Tables/App_News/202303050006251509/wechat.jpg', 'SuperAdministrator', '2023-03-22 15:07:38', 1, 1, NULL, NULL, '2023.01-02月框架功能优化With问题修复及增强移动端功能', NULL);
INSERT INTO "public"."App_News" VALUES (6, NULL, NULL, '<ul><li>2023-03-20 16:40:22&nbsp;增加.net6 dockerConfiguration</li><li>2023-03-20 15:59:20&nbsp;增加移动端Form省市区县选择示例</li><li>2023-03-20 15:54:11&nbsp;增加移动端Form省市区县选择(2023.03.20更新components文件夹后才能使用)</li><li>2023-03-15 11:30:31&nbsp;增加移动端自动生成Page的扫描搜索功能</li><li>2023-03-15 11:29:31&nbsp;重写移动端Form搜索功能</li><li>2023-03-14 15:54:20&nbsp;增加alioss包引用</li><li>2023-03-13 03:25:47&nbsp;增加阿里云OSSFileUpload示例及Document</li><li>2023-03-10 14:40:02&nbsp;增加CodeGenerationDevice异常提示</li><li>2023-03-10 00:06:55&nbsp;增加移动端示例</li><li>2023-03-10 00:01:21&nbsp;增加移动端volformForm区间输入功能</li><li>2023-03-09 23:44:30&nbsp;修复移动端生成Page在小程序上Date区间QueryNone效的问题</li><li>2023-03-09 23:32:29&nbsp;Merge branch of https://github.com/cq-panda/Vue.NetCore</li><li>2023-03-09 23:32:15&nbsp;增加化移动端输入框扫描回车Event@input-confirm、优化Date范围样式(见示例form2.vue)</li><li>2023-03-09 11:45:33&nbsp;增加登录Page进入时清除登录信息</li><li>2023-03-07 22:20:09&nbsp;修复vue3版本volformForm年月字段必填None效的问题</li><li>2023-03-02 21:15:59&nbsp;增加路由示例</li><li>2023-03-02 21:14:46&nbsp;增加路由示例</li><li>2023-03-01 14:15:44&nbsp;增加移动端FormComponent级联示例</li><li>2023-03-01 14:13:08&nbsp;增加移动端Form级联Componentvol-tree</li><li>2023-03-01 14:10:57&nbsp;Merge branch of https://github.com/cq-panda/Vue.NetCore</li><li>2023-03-01 14:10:40&nbsp;增加移动端地图示例</li><li>2023-03-01 10:42:53&nbsp;修复上个版本volformComponentswitch标签错误的问题</li></ul>', '2023-03-22 15:03:33', 1, 'SuperAdministrator', 1, NULL, 1, 'Upload/Tables/App_News/202303221505503684/wechat.jpg', 'SuperAdministrator', '2023-04-05 23:27:38', 1, 1, NULL, NULL, '2023.03月增强框架移动端扫码、省市区县选择、阿里云OSS存储等功能With问题修复', NULL);

-- ----------------------------
-- Table structure for App_ReportPrice
-- ----------------------------
DROP TABLE IF EXISTS "public"."App_ReportPrice";
CREATE TABLE "public"."App_ReportPrice" (
                                            "Id" int4 NOT NULL,
                                            "Age" varchar(70) COLLATE "pg_catalog"."default" NOT NULL,
                                            "AuditDate" timestamp(6),
                                            "AuditId" int4,
                                            "AuditStatus" int4,
                                            "Auditor" varchar(50) COLLATE "pg_catalog"."default",
                                            "City" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
                                            "CreateDate" timestamp(6),
                                            "CreateID" int4,
                                            "Creator" varchar(50) COLLATE "pg_catalog"."default",
                                            "Enable" int2,
                                            "Modifier" varchar(50) COLLATE "pg_catalog"."default",
                                            "ModifyDate" timestamp(6),
                                            "ModifyID" int4,
                                            "Price" numeric(10,2) NOT NULL,
                                            "Variety" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Sequence structure for app_reportprice_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."app_reportprice_id_seq";
CREATE SEQUENCE "public"."app_reportprice_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 10
CACHE 1;
ALTER TABLE "public"."App_ReportPrice" ALTER COLUMN "Id" SET DEFAULT nextval('app_reportprice_id_seq');

-- ----------------------------
-- Records of App_ReportPrice
-- ----------------------------
INSERT INTO "public"."App_ReportPrice" VALUES (81, '30', '2019-07-18 11:41:20', 1, 2, 'SuperAdministrator', '石家庄市', '2019-07-18 11:17:34', 1, 'SuperAdministrator', 1, 'SuperAdministrator', '2023-05-13 11:18:20', 1, 1900.00, 'Single反相机');
INSERT INTO "public"."App_ReportPrice" VALUES (82, '20', '2019-07-18 12:42:06', 1, 1, 'SuperAdministrator', '天津市', '2019-07-18 11:40:09', 1, 'SuperAdministrator', 0, 'SuperAdministrator', '2023-05-13 11:18:06', 1, 1000.00, '数码相机');

-- ----------------------------
-- Table structure for App_Transaction
-- ----------------------------
DROP TABLE IF EXISTS "public"."App_Transaction";
CREATE TABLE "public"."App_Transaction" (
                                            "Id" int4 NOT NULL,
                                            "CowType" varchar(100) COLLATE "pg_catalog"."default",
                                            "CreateDate" timestamp(6),
                                            "CreateID" int4,
                                            "Creator" varchar(50) COLLATE "pg_catalog"."default",
                                            "Describe" text COLLATE "pg_catalog"."default" NOT NULL,
                                            "Enable" int2,
                                            "Modifier" varchar(50) COLLATE "pg_catalog"."default",
                                            "ModifyDate" timestamp(6),
                                            "ModifyID" int4,
                                            "Name" varchar(70) COLLATE "pg_catalog"."default" NOT NULL,
                                            "PhoneNo" varchar(15) COLLATE "pg_catalog"."default" NOT NULL,
                                            "Quantity" int4 NOT NULL,
                                            "TransactionType" int4 NOT NULL
)
;

-- ----------------------------
-- Sequence structure for app_transaction_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."app_transaction_id_seq";
CREATE SEQUENCE "public"."app_transaction_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 10
CACHE 1;
ALTER TABLE "public"."App_Transaction" ALTER COLUMN "Id" SET DEFAULT nextval('app_transaction_id_seq');

-- ----------------------------
-- Records of App_Transaction
-- ----------------------------
INSERT INTO "public"."App_Transaction" VALUES (4, '1', '2019-09-18 18:10:01', 1, 'SuperAdministrator', '买买买买买买1', NULL, 'SuperAdministrator', '2019-11-17 15:07:23', 1, '大锤1', '13419098211', 25, 0);
INSERT INTO "public"."App_Transaction" VALUES (6, '3', '2019-09-18 18:22:25', 1, 'SuperAdministrator', '买买买买买买3', NULL, 'SuperAdministrator', '2019-11-17 15:33:53', 1, '小乔', '13419444422', 199, 1);
INSERT INTO "public"."App_Transaction" VALUES (7, '0', '2020-12-29 21:39:22', 1, 'SuperAdministrator', '12312119023', NULL, 'SuperAdministrator', '2020-12-29 21:41:29', 1, '林中鸟', '18612119123', 0, 1);

-- ----------------------------
-- Table structure for App_TransactionAvgPrice
-- ----------------------------
DROP TABLE IF EXISTS "public"."App_TransactionAvgPrice";
CREATE TABLE "public"."App_TransactionAvgPrice" (
                                                    "Id" int4 NOT NULL,
                                                    "AgeRange" varchar(70) COLLATE "pg_catalog"."default" NOT NULL,
                                                    "AvgPrice" numeric(18,2) NOT NULL,
                                                    "City" varchar(15) COLLATE "pg_catalog"."default" NOT NULL,
                                                    "CreateDate" timestamp(6),
                                                    "CreateID" int4,
                                                    "Creator" varchar(50) COLLATE "pg_catalog"."default",
                                                    "Date" date NOT NULL,
                                                    "Enable" int2,
                                                    "IsTop" int4 NOT NULL,
                                                    "Modifier" varchar(50) COLLATE "pg_catalog"."default",
                                                    "ModifyDate" timestamp(6),
                                                    "ModifyID" int4,
                                                    "Variety" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Sequence structure for app_transactionavgprice_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."app_transactionavgprice_id_seq";
CREATE SEQUENCE "public"."app_transactionavgprice_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 20
CACHE 1;
ALTER TABLE "public"."App_TransactionAvgPrice" ALTER COLUMN "Id" SET DEFAULT nextval('app_transactionavgprice_id_seq');

-- ----------------------------
-- Records of App_TransactionAvgPrice
-- ----------------------------
INSERT INTO "public"."App_TransactionAvgPrice" VALUES (12, '20', 2000.00, '北京市', '2022-06-20 02:09:49', 1, 'SuperAdministrator', '2022-06-19', NULL, 1, 'SuperAdministrator', '2023-05-13 10:49:07', 1, 'Single反相机');
INSERT INTO "public"."App_TransactionAvgPrice" VALUES (13, '30', 1200.00, '天津市', '2022-06-20 02:10:53', 1, 'SuperAdministrator', '2022-06-20', NULL, 1, 'SuperAdministrator', '2023-05-13 10:49:12', 1, '微Single相机');

-- ----------------------------
-- Table structure for FormCollectionObject
-- ----------------------------
DROP TABLE IF EXISTS "public"."FormCollectionObject";
CREATE TABLE "public"."FormCollectionObject" (
                                                 "FormCollectionId" uuid NOT NULL,
                                                 "FormId" uuid,
                                                 "Title" text COLLATE "pg_catalog"."default",
                                                 "FormData" text COLLATE "pg_catalog"."default",
                                                 "CreateDate" timestamp(6),
                                                 "CreateID" int4,
                                                 "Creator" varchar(50) COLLATE "pg_catalog"."default",
                                                 "Modifier" varchar(50) COLLATE "pg_catalog"."default",
                                                 "ModifyDate" timestamp(6),
                                                 "ModifyID" int4
)
;

-- ----------------------------
-- Records of FormCollectionObject
-- ----------------------------
INSERT INTO "public"."FormCollectionObject" VALUES ('90513C4C-B639-4D0D-8C9D-FB69B77620F8', '0431A578-BFC9-407F-B95E-321C350F10CB', NULL, '{"FormId":"0431a578-bfc9-407f-b95e-321c350f10cb","field1640871905593":"1","field1640871902689":"2022-01-05","field1641207457900":null,"field1641207424694":""}', '2022-01-03 19:06:50', 1, 'SuperAdministrator', NULL, NULL, NULL);
INSERT INTO "public"."FormCollectionObject" VALUES ('A37C1956-DDC0-457B-8F0A-93CDC44C257D', '8E6D9E7C-16C2-48B8-9D67-F1A1A19453DA', NULL, '{"FormId":"8e6d9e7c-16c2-48b8-9d67-f1a1a19453da","field1641205615398":"1","field1641206170991":"十分满意,相当满意","field1641205647957":"相当满意","field1641206608182":"没有意见"}', '2022-01-03 19:05:46', 1, 'SuperAdministrator', NULL, NULL, NULL);
INSERT INTO "public"."FormCollectionObject" VALUES ('CCCC519C-C448-4292-85D1-6A0AC2828FD9', '0431A578-BFC9-407F-B95E-321C350F10CB', NULL, '{"FormId":"0431a578-bfc9-407f-b95e-321c350f10cb","field1640871905593":"1","field1640871902689":"2022-01-04","field1641207457900":"123456","field1641207424694":""}', '2022-01-03 19:09:53', 1, 'SuperAdministrator', NULL, NULL, NULL);
INSERT INTO "public"."FormCollectionObject" VALUES ('E913389C-E11A-4675-B8EB-A25C75086E37', '8E6D9E7C-16C2-48B8-9D67-F1A1A19453DA', NULL, '{"FormId":"8e6d9e7c-16c2-48b8-9d67-f1a1a19453da","field1641205615398":"1","field1641206170991":"非常满意,十分满意,相当满意","field1641205647957":"非常满意","field1641206608182":"1111"}', '2022-01-03 19:09:45', 1, 'SuperAdministrator', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for FormDesignOptions
-- ----------------------------
DROP TABLE IF EXISTS "public"."FormDesignOptions";
CREATE TABLE "public"."FormDesignOptions" (
                                              "FormId" uuid NOT NULL,
                                              "Title" text COLLATE "pg_catalog"."default" NOT NULL,
                                              "DaraggeOptions" text COLLATE "pg_catalog"."default",
                                              "FormOptions" text COLLATE "pg_catalog"."default",
                                              "FormConfig" text COLLATE "pg_catalog"."default",
                                              "FormFields" text COLLATE "pg_catalog"."default",
                                              "TableConfig" text COLLATE "pg_catalog"."default",
                                              "CreateDate" timestamp(6),
                                              "CreateID" int4,
                                              "Creator" varchar(50) COLLATE "pg_catalog"."default",
                                              "Modifier" varchar(50) COLLATE "pg_catalog"."default",
                                              "ModifyDate" timestamp(6),
                                              "ModifyID" int4
)
;

-- ----------------------------
-- Records of FormDesignOptions
-- ----------------------------
INSERT INTO "public"."FormDesignOptions" VALUES ('0431A578-BFC9-407F-B95E-321C350F10CB', '2021 Development Language Usage Survey', '[{"id":5,"name":"Whether to develop in multiple languages at the same time","type":"radio","icon":"el-icon-aim","value":0,"data":[{"key":"0","value":"否"},{"key":"2","value":"xx11"},{"key":"1","value":"是"}],"key":"enable","field":"field1640871905593","width":100,"readonly":false,"required":true,"values":["否"]},{"id":3,"name":"When did you start development?","type":"date","icon":"el-icon-date","value":null,"field":"field1640871902689","width":100,"readonly":false,"required":true},{"id":2,"name":"Say something","type":"textarea","value":"","icon":"el-icon-document-copy","field":"field1641207457900","width":100,"readonly":false,"required":false},{"id":9,"name":"ImageUpload","type":"img","url":"","maxSize":3,"fileInfo":[],"multiple":false,"autoUpload":false,"maxFile":5,"icon":"el-icon-picture-outline","field":"field1641207424694","width":100,"readonly":false,"required":false}]', '{"fields":{"field1640871905593":[],"field1640871902689":null,"field1641207457900":null,"field1641207424694":null},"formOptions":[[{"field":"field1640871905593","title":"Whether to develop in multiple languages at the same time","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"0","value":"否"},{"key":"2","value":"xx11"},{"key":"1","value":"是"}],"dataKey":"enable"}],[{"field":"field1640871902689","title":"When did you start development?","type":"date","required":true,"readonly":false,"colSize":12}],[{"field":"field1641207457900","title":"Say something","type":"textarea","required":false,"readonly":false,"colSize":12}],[{"field":"field1641207424694","title":"ImageUpload","type":"img","required":false,"readonly":false,"colSize":12,"maxSize":3,"fileInfo":[],"multiple":false,"autoUpload":false,"maxFile":5,"url":""}]],"tables":[],"tabs":[]}', '[{"field":"field1640871905593","title":"Whether to develop in multiple languages at the same time","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"0","value":"否"},{"key":"2","value":"xx11"},{"key":"1","value":"是"}],"dataKey":"enable"},{"field":"field1640871902689","title":"When did you start development?","type":"date","required":true,"readonly":false,"colSize":12},{"field":"field1641207457900","title":"Say something","type":"textarea","required":false,"readonly":false,"colSize":12},{"field":"field1641207424694","title":"ImageUpload","type":"img","required":false,"readonly":false,"colSize":12,"maxSize":3,"fileInfo":[],"multiple":false,"autoUpload":false,"maxFile":5,"url":""}]', NULL, '[]', '2021-12-29 23:39:22', 1, 'SuperAdministrator', 'SuperAdministrator', '2022-01-03 19:00:30', 1);
INSERT INTO "public"."FormDesignOptions" VALUES ('8E6D9E7C-16C2-48B8-9D67-F1A1A19453DA', '2021双减政策调查', '[{"id":5,"name":"您的孩子放学后是否有学校布置的书面作业?","type":"radio","icon":"el-icon-aim","value":0,"data":[{"key":"0","value":"否"},{"key":"2","value":"xx11"},{"key":"1","value":"是"}],"key":"enable","field":"field1641205615398","width":100,"readonly":false,"required":true,"values":["否"]},{"id":6,"name":"您认为放学后作业对孩子的负担怎样?","values":["非常满意"],"type":"checkbox","key":"满意度","data":[{"key":"非常满意","value":"非常满意"},{"key":"十分满意","value":"十分满意"},{"key":"相当满意","value":"相当满意"}],"icon":"el-icon-circle-check","field":"field1641206170991","width":100,"readonly":false,"required":true},{"id":5,"name":"作为家长,对当前双减政策是否满意？","type":"radio","icon":"el-icon-aim","value":0,"data":[{"key":"非常满意","value":"非常满意"},{"key":"十分满意","value":"十分满意"},{"key":"相当满意","value":"相当满意"}],"key":"满意度","field":"field1641205647957","width":100,"readonly":false,"required":true,"values":["非常满意"]},{"id":2,"name":"Other意见","type":"textarea","value":"","icon":"el-icon-document-copy","field":"field1641206608182","width":100,"readonly":false,"required":false}]', '{"fields":{"field1641205615398":[],"field1641206170991":[],"field1641205647957":[],"field1641206608182":null},"formOptions":[[{"field":"field1641205615398","title":"您的孩子放学后是否有学校布置的书面作业?","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"0","value":"否"},{"key":"2","value":"xx11"},{"key":"1","value":"是"}],"dataKey":"enable"}],[{"field":"field1641206170991","title":"您认为放学后作业对孩子的负担怎样?","type":"checkbox","required":true,"readonly":false,"colSize":12,"data":[{"key":"非常满意","value":"非常满意"},{"key":"十分满意","value":"十分满意"},{"key":"相当满意","value":"相当满意"}],"dataKey":"满意度"}],[{"field":"field1641205647957","title":"作为家长,对当前双减政策是否满意？","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"非常满意","value":"非常满意"},{"key":"十分满意","value":"十分满意"},{"key":"相当满意","value":"相当满意"}],"dataKey":"满意度"}],[{"field":"field1641206608182","title":"Other意见","type":"textarea","required":false,"readonly":false,"colSize":12}]],"tables":[],"tabs":[]}', '[{"field":"field1641205615398","title":"您的孩子放学后是否有学校布置的书面作业?","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"0","value":"否"},{"key":"2","value":"xx11"},{"key":"1","value":"是"}],"dataKey":"enable"},{"field":"field1641206170991","title":"您认为放学后作业对孩子的负担怎样?","type":"checkbox","required":true,"readonly":false,"colSize":12,"data":[{"key":"非常满意","value":"非常满意"},{"key":"十分满意","value":"十分满意"},{"key":"相当满意","value":"相当满意"}],"dataKey":"满意度"},{"field":"field1641205647957","title":"作为家长,对当前双减政策是否满意？","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"非常满意","value":"非常满意"},{"key":"十分满意","value":"十分满意"},{"key":"相当满意","value":"相当满意"}],"dataKey":"满意度"},{"field":"field1641206608182","title":"Other意见","type":"textarea","required":false,"readonly":false,"colSize":12}]', NULL, '[]', '2021-12-30 21:45:16', 1, 'SuperAdministrator', 'SuperAdministrator', '2022-01-03 18:43:46', 1);

-- ----------------------------
-- Table structure for SellOrder
-- ----------------------------
DROP TABLE IF EXISTS "public"."SellOrder";
CREATE TABLE "public"."SellOrder" (
                                      "Order_Id" uuid NOT NULL,
                                      "OrderType" int4 NOT NULL,
                                      "TranNo" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
                                      "SellNo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
                                      "Qty" int4 NOT NULL,
                                      "AuditDate" timestamp(6),
                                      "AuditStatus" int4 NOT NULL,
                                      "AuditId" int4,
                                      "Auditor" varchar(100) COLLATE "pg_catalog"."default",
                                      "Remark" text COLLATE "pg_catalog"."default",
                                      "CreateID" int4,
                                      "Creator" varchar(255) COLLATE "pg_catalog"."default",
                                      "CreateDate" timestamp(6),
                                      "ModifyID" int4,
                                      "Modifier" varchar(255) COLLATE "pg_catalog"."default",
                                      "ModifyDate" timestamp(6)
)
;

-- ----------------------------
-- Records of SellOrder
-- ----------------------------
INSERT INTO "public"."SellOrder" VALUES ('323AB96F-49C1-4100-9D08-17DB9F209DF7', 1, '2023051300000004', '2023051300000004', 5505, NULL, 2, NULL, NULL, 'Department+Role_Id+UserApproval', 1, 'SuperAdministrator', '2023-05-13 17:17:47', NULL, NULL, NULL);
INSERT INTO "public"."SellOrder" VALUES ('55AE8C6C-6A11-4765-952A-7B4A3ADECE04', 2, '2023051300000001', '20230513000001', 200, NULL, 2, NULL, NULL, NULL, 1, 'SuperAdministrator', '2023-05-13 15:49:18', 1, 'SuperAdministrator', '2023-05-13 15:49:27');
INSERT INTO "public"."SellOrder" VALUES ('81D5DB86-C85A-4B06-BC3A-08142811C522', 1, '2023051300000005', '2023051300000005', 5050, NULL, 0, NULL, NULL, '2023051300000005', 1, 'SuperAdministrator', '2023-05-13 17:19:06', NULL, NULL, NULL);
INSERT INTO "public"."SellOrder" VALUES ('B1DB23BD-ED48-4459-B9ED-355D97A7E16E', 1, '2023051300000003', '2023051300000003', 5000, NULL, 1, NULL, NULL, NULL, 1, 'SuperAdministrator', '2023-05-13 17:07:37', NULL, NULL, NULL);
INSERT INTO "public"."SellOrder" VALUES ('B67B7EC0-136C-4439-A530-CD6DD4D69A9C', 2, '2023051300000002', '20230513000002', 120, NULL, 1, NULL, NULL, NULL, 1, 'SuperAdministrator', '2023-05-13 15:58:42', 1, 'SuperAdministrator', '2023-05-13 17:07:14');

-- ----------------------------
-- Table structure for SellOrderList
-- ----------------------------
DROP TABLE IF EXISTS "public"."SellOrderList";
CREATE TABLE "public"."SellOrderList" (
                                          "OrderList_Id" uuid NOT NULL,
                                          "Order_Id" char(36) COLLATE "pg_catalog"."default" NOT NULL,
                                          "ProductName" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
                                          "MO" varchar(255) COLLATE "pg_catalog"."default",
                                          "Qty" int4 NOT NULL,
                                          "Weight" numeric(18,2),
                                          "Remark" text COLLATE "pg_catalog"."default",
                                          "CreateID" int4,
                                          "Creator" varchar(255) COLLATE "pg_catalog"."default",
                                          "CreateDate" timestamp(6),
                                          "ModifyID" int4,
                                          "Modifier" varchar(255) COLLATE "pg_catalog"."default",
                                          "ModifyDate" timestamp(6)
)
;

-- ----------------------------
-- Records of SellOrderList
-- ----------------------------
INSERT INTO "public"."SellOrderList" VALUES ('08D72CF6-D9F5-BEE9-32FF-5808FF1238CB', '6EFB65B8-585E-4BE7-8B77-94C76E362412', 'Modifier', 'Modifier', 7, 8.00, NULL, 1, 'SuperAdministrator', '2019-08-30 11:05:03', 1, 'SuperAdministrator', '2019-08-30 11:05:19');
INSERT INTO "public"."SellOrderList" VALUES ('08D72CF6-ED6C-F0E0-9E97-5930A04F2EBC', 'AD698348-1535-4221-9A1A-57DB5CB351E4', '2', '2', 2, NULL, NULL, 1, 'SuperAdministrator', '2019-08-30 11:05:35', NULL, NULL, NULL);
INSERT INTO "public"."SellOrderList" VALUES ('3D1467B1-11E0-4404-E3FD-08DB53868E51', '55AE8C6C-6A11-4765-952A-7B4A3ADECE04', '2', '20230513000001', 12400, 11.00, NULL, 1, 'SuperAdministrator', '2023-05-13 15:49:18', 1, 'SuperAdministrator', '2023-05-13 15:49:27');
INSERT INTO "public"."SellOrderList" VALUES ('893CEE01-AD76-4894-FBF3-08DB5392EAA0', '323AB96F-49C1-4100-9D08-17DB9F209DF7', '2', '123', 200, NULL, NULL, 1, 'SuperAdministrator', '2023-05-13 17:17:47', NULL, NULL, NULL);
INSERT INTO "public"."SellOrderList" VALUES ('BE0A328C-6ECC-419B-7B3C-08DB53917EFB', 'B1DB23BD-ED48-4459-B9ED-355D97A7E16E', '2', '1000', 2000, NULL, NULL, 1, 'SuperAdministrator', '2023-05-13 17:07:37', NULL, NULL, NULL);
INSERT INTO "public"."SellOrderList" VALUES ('CCDFCD1D-E0DE-4CAE-7485-08DB5387DEB9', 'B67B7EC0-136C-4439-A530-CD6DD4D69A9C', '2', '2023051300000002', 12321, NULL, NULL, 1, 'SuperAdministrator', '2023-05-13 15:58:43', 1, 'SuperAdministrator', '2023-05-13 17:07:14');
INSERT INTO "public"."SellOrderList" VALUES ('DF13A279-7EA4-47C0-FBF4-08DB5392EAA0', '81D5DB86-C85A-4B06-BC3A-08142811C522', '2', '111', 2000, NULL, NULL, 1, 'SuperAdministrator', '2023-05-13 17:19:06', NULL, NULL, NULL);
INSERT INTO "public"."SellOrderList" VALUES ('FC332CEF-C1EB-4063-B71C-6ADDF19A8E8B', '6EFB65B8-585E-4BE7-8B77-94C76E362412', '22', '2', 0, NULL, NULL, 1, 'SuperAdministrator', '2019-08-30 11:05:19', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for Sys_City
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_City";
CREATE TABLE "public"."Sys_City" (
                                     "CityId" int4 NOT NULL,
                                     "CityCode" varchar(50) COLLATE "pg_catalog"."default",
                                     "CityName" varchar(50) COLLATE "pg_catalog"."default",
                                     "ProvinceCode" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Sequence structure for sys_city_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_city_id_seq";
CREATE SEQUENCE "public"."sys_city_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 500
CACHE 1;
ALTER TABLE "public"."Sys_City" ALTER COLUMN "CityId" SET DEFAULT nextval('sys_city_id_seq');

-- ----------------------------
-- Records of Sys_City
-- ----------------------------
INSERT INTO "public"."Sys_City" VALUES (1, '110100', '市辖区', '110000');
INSERT INTO "public"."Sys_City" VALUES (2, '110200', '县', '110000');
INSERT INTO "public"."Sys_City" VALUES (3, '120100', '市辖区', '120000');
INSERT INTO "public"."Sys_City" VALUES (4, '120200', '县', '120000');
INSERT INTO "public"."Sys_City" VALUES (5, '130100', '石家庄市', '130000');
INSERT INTO "public"."Sys_City" VALUES (6, '130200', '唐山市', '130000');
INSERT INTO "public"."Sys_City" VALUES (7, '130300', '秦皇岛市', '130000');
INSERT INTO "public"."Sys_City" VALUES (8, '130400', '邯郸市', '130000');
INSERT INTO "public"."Sys_City" VALUES (9, '130500', '邢台市', '130000');
INSERT INTO "public"."Sys_City" VALUES (10, '130600', '保定市', '130000');
INSERT INTO "public"."Sys_City" VALUES (11, '130700', '张家口市', '130000');
INSERT INTO "public"."Sys_City" VALUES (12, '130800', '承德市', '130000');
INSERT INTO "public"."Sys_City" VALUES (13, '130900', '沧州市', '130000');
INSERT INTO "public"."Sys_City" VALUES (14, '131000', '廊坊市', '130000');
INSERT INTO "public"."Sys_City" VALUES (15, '131100', '衡水市', '130000');
INSERT INTO "public"."Sys_City" VALUES (16, '140100', '太原市', '140000');
INSERT INTO "public"."Sys_City" VALUES (17, '140200', '大同市', '140000');
INSERT INTO "public"."Sys_City" VALUES (18, '140300', '阳泉市', '140000');
INSERT INTO "public"."Sys_City" VALUES (19, '140400', '长治市', '140000');
INSERT INTO "public"."Sys_City" VALUES (20, '140500', '晋City', '140000');
INSERT INTO "public"."Sys_City" VALUES (21, '140600', '朔州市', '140000');
INSERT INTO "public"."Sys_City" VALUES (22, '140700', '晋中市', '140000');
INSERT INTO "public"."Sys_City" VALUES (23, '140800', '运City', '140000');
INSERT INTO "public"."Sys_City" VALUES (24, '140900', '忻州市', '140000');
INSERT INTO "public"."Sys_City" VALUES (25, '141000', '临汾市', '140000');
INSERT INTO "public"."Sys_City" VALUES (26, '141100', '吕梁市', '140000');
INSERT INTO "public"."Sys_City" VALUES (27, '150100', '呼和浩特市', '150000');
INSERT INTO "public"."Sys_City" VALUES (28, '150200', '包头市', '150000');
INSERT INTO "public"."Sys_City" VALUES (29, '150300', '乌海市', '150000');
INSERT INTO "public"."Sys_City" VALUES (30, '150400', '赤峰市', '150000');
INSERT INTO "public"."Sys_City" VALUES (31, '150500', '通辽市', '150000');
INSERT INTO "public"."Sys_City" VALUES (32, '150600', '鄂尔多斯市', '150000');
INSERT INTO "public"."Sys_City" VALUES (33, '150700', '呼伦贝尔市', '150000');
INSERT INTO "public"."Sys_City" VALUES (34, '150800', '巴彦淖尔市', '150000');
INSERT INTO "public"."Sys_City" VALUES (35, '150900', '乌兰察布市', '150000');
INSERT INTO "public"."Sys_City" VALUES (36, '152200', '兴安盟', '150000');
INSERT INTO "public"."Sys_City" VALUES (37, '152500', '锡林郭勒盟', '150000');
INSERT INTO "public"."Sys_City" VALUES (38, '152900', '阿拉善盟', '150000');
INSERT INTO "public"."Sys_City" VALUES (39, '210100', '沈阳市', '210000');
INSERT INTO "public"."Sys_City" VALUES (40, '210200', '大连市', '210000');
INSERT INTO "public"."Sys_City" VALUES (41, '210300', '鞍山市', '210000');
INSERT INTO "public"."Sys_City" VALUES (42, '210400', '抚顺市', '210000');
INSERT INTO "public"."Sys_City" VALUES (43, '210500', '本溪市', '210000');
INSERT INTO "public"."Sys_City" VALUES (44, '210600', '丹东市', '210000');
INSERT INTO "public"."Sys_City" VALUES (45, '210700', '锦州市', '210000');
INSERT INTO "public"."Sys_City" VALUES (46, '210800', '营口市', '210000');
INSERT INTO "public"."Sys_City" VALUES (47, '210900', '阜新市', '210000');
INSERT INTO "public"."Sys_City" VALUES (48, '211000', '辽阳市', '210000');
INSERT INTO "public"."Sys_City" VALUES (49, '211100', '盘锦市', '210000');
INSERT INTO "public"."Sys_City" VALUES (50, '211200', '铁岭市', '210000');
INSERT INTO "public"."Sys_City" VALUES (51, '211300', '朝阳市', '210000');
INSERT INTO "public"."Sys_City" VALUES (52, '211400', '葫芦岛市', '210000');
INSERT INTO "public"."Sys_City" VALUES (53, '220100', '长春市', '220000');
INSERT INTO "public"."Sys_City" VALUES (54, '220200', '吉林市', '220000');
INSERT INTO "public"."Sys_City" VALUES (55, '220300', '四平市', '220000');
INSERT INTO "public"."Sys_City" VALUES (56, '220400', '辽源市', '220000');
INSERT INTO "public"."Sys_City" VALUES (57, '220500', '通化市', '220000');
INSERT INTO "public"."Sys_City" VALUES (58, '220600', '白山市', '220000');
INSERT INTO "public"."Sys_City" VALUES (59, '220700', '松原市', '220000');
INSERT INTO "public"."Sys_City" VALUES (60, '220800', '白City', '220000');
INSERT INTO "public"."Sys_City" VALUES (61, '222400', '延边朝鲜族自治州', '220000');
INSERT INTO "public"."Sys_City" VALUES (62, '230100', '哈尔滨市', '230000');
INSERT INTO "public"."Sys_City" VALUES (63, '230200', '齐齐哈尔市', '230000');
INSERT INTO "public"."Sys_City" VALUES (64, '230300', '鸡西市', '230000');
INSERT INTO "public"."Sys_City" VALUES (65, '230400', '鹤岗市', '230000');
INSERT INTO "public"."Sys_City" VALUES (66, '230500', '双鸭山市', '230000');
INSERT INTO "public"."Sys_City" VALUES (67, '230600', '大庆市', '230000');
INSERT INTO "public"."Sys_City" VALUES (68, '230700', '伊春市', '230000');
INSERT INTO "public"."Sys_City" VALUES (69, '230800', '佳木斯市', '230000');
INSERT INTO "public"."Sys_City" VALUES (70, '230900', '七台河市', '230000');
INSERT INTO "public"."Sys_City" VALUES (71, '231000', '牡丹江市', '230000');
INSERT INTO "public"."Sys_City" VALUES (72, '231100', '黑河市', '230000');
INSERT INTO "public"."Sys_City" VALUES (73, '231200', '绥化市', '230000');
INSERT INTO "public"."Sys_City" VALUES (74, '232700', '大兴安岭City', '230000');
INSERT INTO "public"."Sys_City" VALUES (75, '310100', '市辖区', '310000');
INSERT INTO "public"."Sys_City" VALUES (76, '310200', '县', '310000');
INSERT INTO "public"."Sys_City" VALUES (77, '320100', '南京市', '320000');
INSERT INTO "public"."Sys_City" VALUES (78, '320200', 'None锡市', '320000');
INSERT INTO "public"."Sys_City" VALUES (79, '320300', '徐州市', '320000');
INSERT INTO "public"."Sys_City" VALUES (80, '320400', '常州市', '320000');
INSERT INTO "public"."Sys_City" VALUES (81, '320500', '苏州市', '320000');
INSERT INTO "public"."Sys_City" VALUES (82, '320600', '南通市', '320000');
INSERT INTO "public"."Sys_City" VALUES (83, '320700', '连云港市', '320000');
INSERT INTO "public"."Sys_City" VALUES (84, '320800', '淮安市', '320000');
INSERT INTO "public"."Sys_City" VALUES (85, '320900', '盐City', '320000');
INSERT INTO "public"."Sys_City" VALUES (86, '321000', '扬州市', '320000');
INSERT INTO "public"."Sys_City" VALUES (87, '321100', '镇江市', '320000');
INSERT INTO "public"."Sys_City" VALUES (88, '321200', '泰州市', '320000');
INSERT INTO "public"."Sys_City" VALUES (89, '321300', '宿迁市', '320000');
INSERT INTO "public"."Sys_City" VALUES (90, '330100', '杭州市', '330000');
INSERT INTO "public"."Sys_City" VALUES (91, '330200', '宁波市', '330000');
INSERT INTO "public"."Sys_City" VALUES (92, '330300', '温州市', '330000');
INSERT INTO "public"."Sys_City" VALUES (93, '330400', '嘉兴市', '330000');
INSERT INTO "public"."Sys_City" VALUES (94, '330500', '湖州市', '330000');
INSERT INTO "public"."Sys_City" VALUES (95, '330600', '绍兴市', '330000');
INSERT INTO "public"."Sys_City" VALUES (96, '330700', '金华市', '330000');
INSERT INTO "public"."Sys_City" VALUES (97, '330800', '衢州市', '330000');
INSERT INTO "public"."Sys_City" VALUES (98, '330900', '舟山市', '330000');
INSERT INTO "public"."Sys_City" VALUES (99, '331000', '台州市', '330000');
INSERT INTO "public"."Sys_City" VALUES (100, '331100', '丽水市', '330000');
INSERT INTO "public"."Sys_City" VALUES (101, '340100', '合肥市', '340000');
INSERT INTO "public"."Sys_City" VALUES (102, '340200', '芜湖市', '340000');
INSERT INTO "public"."Sys_City" VALUES (103, '340300', '蚌埠市', '340000');
INSERT INTO "public"."Sys_City" VALUES (104, '340400', '淮南市', '340000');
INSERT INTO "public"."Sys_City" VALUES (105, '340500', '马鞍山市', '340000');
INSERT INTO "public"."Sys_City" VALUES (106, '340600', '淮北市', '340000');
INSERT INTO "public"."Sys_City" VALUES (107, '340700', '铜陵市', '340000');
INSERT INTO "public"."Sys_City" VALUES (108, '340800', '安庆市', '340000');
INSERT INTO "public"."Sys_City" VALUES (109, '341000', '黄山市', '340000');
INSERT INTO "public"."Sys_City" VALUES (110, '341100', '滁州市', '340000');
INSERT INTO "public"."Sys_City" VALUES (111, '341200', '阜阳市', '340000');
INSERT INTO "public"."Sys_City" VALUES (112, '341300', '宿州市', '340000');
INSERT INTO "public"."Sys_City" VALUES (113, '341400', '巢湖市', '340000');
INSERT INTO "public"."Sys_City" VALUES (114, '341500', '六安市', '340000');
INSERT INTO "public"."Sys_City" VALUES (115, '341600', '亳州市', '340000');
INSERT INTO "public"."Sys_City" VALUES (116, '341700', '池州市', '340000');
INSERT INTO "public"."Sys_City" VALUES (117, '341800', '宣City', '340000');
INSERT INTO "public"."Sys_City" VALUES (118, '350100', '福州市', '350000');
INSERT INTO "public"."Sys_City" VALUES (119, '350200', '厦门市', '350000');
INSERT INTO "public"."Sys_City" VALUES (120, '350300', '莆田市', '350000');
INSERT INTO "public"."Sys_City" VALUES (121, '350400', '三明市', '350000');
INSERT INTO "public"."Sys_City" VALUES (122, '350500', '泉州市', '350000');
INSERT INTO "public"."Sys_City" VALUES (123, '350600', '漳州市', '350000');
INSERT INTO "public"."Sys_City" VALUES (124, '350700', '南平市', '350000');
INSERT INTO "public"."Sys_City" VALUES (125, '350800', '龙岩市', '350000');
INSERT INTO "public"."Sys_City" VALUES (126, '350900', '宁德市', '350000');
INSERT INTO "public"."Sys_City" VALUES (127, '360100', '南昌市', '360000');
INSERT INTO "public"."Sys_City" VALUES (128, '360200', '景德镇市', '360000');
INSERT INTO "public"."Sys_City" VALUES (129, '360300', '萍乡市', '360000');
INSERT INTO "public"."Sys_City" VALUES (130, '360400', '九江市', '360000');
INSERT INTO "public"."Sys_City" VALUES (131, '360500', '新余市', '360000');
INSERT INTO "public"."Sys_City" VALUES (132, '360600', '鹰潭市', '360000');
INSERT INTO "public"."Sys_City" VALUES (133, '360700', '赣州市', '360000');
INSERT INTO "public"."Sys_City" VALUES (134, '360800', '吉安市', '360000');
INSERT INTO "public"."Sys_City" VALUES (135, '360900', '宜春市', '360000');
INSERT INTO "public"."Sys_City" VALUES (136, '361000', '抚州市', '360000');
INSERT INTO "public"."Sys_City" VALUES (137, '361100', '上饶市', '360000');
INSERT INTO "public"."Sys_City" VALUES (138, '370100', '济南市', '370000');
INSERT INTO "public"."Sys_City" VALUES (139, '370200', '青岛市', '370000');
INSERT INTO "public"."Sys_City" VALUES (140, '370300', '淄博市', '370000');
INSERT INTO "public"."Sys_City" VALUES (141, '370400', '枣庄市', '370000');
INSERT INTO "public"."Sys_City" VALUES (142, '370500', '东营市', '370000');
INSERT INTO "public"."Sys_City" VALUES (143, '370600', '烟台市', '370000');
INSERT INTO "public"."Sys_City" VALUES (144, '370700', '潍坊市', '370000');
INSERT INTO "public"."Sys_City" VALUES (145, '370800', '济宁市', '370000');
INSERT INTO "public"."Sys_City" VALUES (146, '370900', '泰安市', '370000');
INSERT INTO "public"."Sys_City" VALUES (147, '371000', '威海市', '370000');
INSERT INTO "public"."Sys_City" VALUES (148, '371100', '日照市', '370000');
INSERT INTO "public"."Sys_City" VALUES (149, '371200', '莱芜市', '370000');
INSERT INTO "public"."Sys_City" VALUES (150, '371300', '临沂市', '370000');
INSERT INTO "public"."Sys_City" VALUES (151, '371400', '德州市', '370000');
INSERT INTO "public"."Sys_City" VALUES (152, '371500', '聊City', '370000');
INSERT INTO "public"."Sys_City" VALUES (153, '371600', '滨州市', '370000');
INSERT INTO "public"."Sys_City" VALUES (154, '371700', '荷泽市', '370000');
INSERT INTO "public"."Sys_City" VALUES (155, '410100', '郑州市', '410000');
INSERT INTO "public"."Sys_City" VALUES (156, '410200', '开封市', '410000');
INSERT INTO "public"."Sys_City" VALUES (157, '410300', '洛阳市', '410000');
INSERT INTO "public"."Sys_City" VALUES (158, '410400', '平顶山市', '410000');
INSERT INTO "public"."Sys_City" VALUES (159, '410500', '安阳市', '410000');
INSERT INTO "public"."Sys_City" VALUES (160, '410600', '鹤壁市', '410000');
INSERT INTO "public"."Sys_City" VALUES (161, '410700', '新乡市', '410000');
INSERT INTO "public"."Sys_City" VALUES (162, '410800', '焦作市', '410000');
INSERT INTO "public"."Sys_City" VALUES (163, '410900', '濮阳市', '410000');
INSERT INTO "public"."Sys_City" VALUES (164, '411000', '许昌市', '410000');
INSERT INTO "public"."Sys_City" VALUES (165, '411100', '漯河市', '410000');
INSERT INTO "public"."Sys_City" VALUES (166, '411200', '三门峡市', '410000');
INSERT INTO "public"."Sys_City" VALUES (167, '411300', '南阳市', '410000');
INSERT INTO "public"."Sys_City" VALUES (168, '411400', '商丘市', '410000');
INSERT INTO "public"."Sys_City" VALUES (169, '411500', '信阳市', '410000');
INSERT INTO "public"."Sys_City" VALUES (170, '411600', '周口市', '410000');
INSERT INTO "public"."Sys_City" VALUES (171, '411700', '驻马店市', '410000');
INSERT INTO "public"."Sys_City" VALUES (172, '420100', '武汉市', '420000');
INSERT INTO "public"."Sys_City" VALUES (173, '420200', '黄石市', '420000');
INSERT INTO "public"."Sys_City" VALUES (174, '420300', '十堰市', '420000');
INSERT INTO "public"."Sys_City" VALUES (175, '420500', '宜昌市', '420000');
INSERT INTO "public"."Sys_City" VALUES (176, '420600', '襄樊市', '420000');
INSERT INTO "public"."Sys_City" VALUES (177, '420700', '鄂州市', '420000');
INSERT INTO "public"."Sys_City" VALUES (178, '420800', '荆门市', '420000');
INSERT INTO "public"."Sys_City" VALUES (179, '420900', '孝感市', '420000');
INSERT INTO "public"."Sys_City" VALUES (180, '421000', '荆州市', '420000');
INSERT INTO "public"."Sys_City" VALUES (181, '421100', '黄冈市', '420000');
INSERT INTO "public"."Sys_City" VALUES (182, '421200', '咸宁市', '420000');
INSERT INTO "public"."Sys_City" VALUES (183, '421300', '随州市', '420000');
INSERT INTO "public"."Sys_City" VALUES (184, '422800', '恩施土家族苗族自治州', '420000');
INSERT INTO "public"."Sys_City" VALUES (185, '429000', '省直辖行政Single位', '420000');
INSERT INTO "public"."Sys_City" VALUES (186, '430100', '长沙市', '430000');
INSERT INTO "public"."Sys_City" VALUES (187, '430200', '株洲市', '430000');
INSERT INTO "public"."Sys_City" VALUES (188, '430300', '湘潭市', '430000');
INSERT INTO "public"."Sys_City" VALUES (189, '430400', '衡阳市', '430000');
INSERT INTO "public"."Sys_City" VALUES (190, '430500', '邵阳市', '430000');
INSERT INTO "public"."Sys_City" VALUES (191, '430600', '岳阳市', '430000');
INSERT INTO "public"."Sys_City" VALUES (192, '430700', '常德市', '430000');
INSERT INTO "public"."Sys_City" VALUES (193, '430800', '张家界市', '430000');
INSERT INTO "public"."Sys_City" VALUES (194, '430900', '益阳市', '430000');
INSERT INTO "public"."Sys_City" VALUES (195, '431000', '郴州市', '430000');
INSERT INTO "public"."Sys_City" VALUES (196, '431100', '永州市', '430000');
INSERT INTO "public"."Sys_City" VALUES (197, '431200', '怀化市', '430000');
INSERT INTO "public"."Sys_City" VALUES (198, '431300', '娄底市', '430000');
INSERT INTO "public"."Sys_City" VALUES (199, '433100', '湘西土家族苗族自治州', '430000');
INSERT INTO "public"."Sys_City" VALUES (200, '440100', '广州市', '440000');
INSERT INTO "public"."Sys_City" VALUES (201, '440200', '韶关市', '440000');
INSERT INTO "public"."Sys_City" VALUES (202, '440300', '深圳市', '440000');
INSERT INTO "public"."Sys_City" VALUES (203, '440400', '珠海市', '440000');
INSERT INTO "public"."Sys_City" VALUES (204, '440500', '汕头市', '440000');
INSERT INTO "public"."Sys_City" VALUES (205, '440600', '佛山市', '440000');
INSERT INTO "public"."Sys_City" VALUES (206, '440700', '江门市', '440000');
INSERT INTO "public"."Sys_City" VALUES (207, '440800', '湛江市', '440000');
INSERT INTO "public"."Sys_City" VALUES (208, '440900', '茂名市', '440000');
INSERT INTO "public"."Sys_City" VALUES (209, '441200', '肇庆市', '440000');
INSERT INTO "public"."Sys_City" VALUES (210, '441300', '惠州市', '440000');
INSERT INTO "public"."Sys_City" VALUES (211, '441400', '梅州市', '440000');
INSERT INTO "public"."Sys_City" VALUES (212, '441500', '汕尾市', '440000');
INSERT INTO "public"."Sys_City" VALUES (213, '441600', '河源市', '440000');
INSERT INTO "public"."Sys_City" VALUES (214, '441700', '阳江市', '440000');
INSERT INTO "public"."Sys_City" VALUES (215, '441800', '清远市', '440000');
INSERT INTO "public"."Sys_City" VALUES (216, '441900', '东莞市', '440000');
INSERT INTO "public"."Sys_City" VALUES (217, '442000', '中山市', '440000');
INSERT INTO "public"."Sys_City" VALUES (218, '445100', '潮州市', '440000');
INSERT INTO "public"."Sys_City" VALUES (219, '445200', '揭阳市', '440000');
INSERT INTO "public"."Sys_City" VALUES (220, '445300', '云浮市', '440000');
INSERT INTO "public"."Sys_City" VALUES (221, '450100', '南宁市', '450000');
INSERT INTO "public"."Sys_City" VALUES (222, '450200', '柳州市', '450000');
INSERT INTO "public"."Sys_City" VALUES (223, '450300', '桂林市', '450000');
INSERT INTO "public"."Sys_City" VALUES (224, '450400', '梧州市', '450000');
INSERT INTO "public"."Sys_City" VALUES (225, '450500', '北海市', '450000');
INSERT INTO "public"."Sys_City" VALUES (226, '450600', '防城港市', '450000');
INSERT INTO "public"."Sys_City" VALUES (227, '450700', '钦州市', '450000');
INSERT INTO "public"."Sys_City" VALUES (228, '450800', '贵港市', '450000');
INSERT INTO "public"."Sys_City" VALUES (229, '450900', '玉林市', '450000');
INSERT INTO "public"."Sys_City" VALUES (230, '451000', '百色市', '450000');
INSERT INTO "public"."Sys_City" VALUES (231, '451100', '贺州市', '450000');
INSERT INTO "public"."Sys_City" VALUES (232, '451200', '河池市', '450000');
INSERT INTO "public"."Sys_City" VALUES (233, '451300', '来宾市', '450000');
INSERT INTO "public"."Sys_City" VALUES (234, '451400', '崇左市', '450000');
INSERT INTO "public"."Sys_City" VALUES (235, '460100', '海口市', '460000');
INSERT INTO "public"."Sys_City" VALUES (236, '460200', '三亚市', '460000');
INSERT INTO "public"."Sys_City" VALUES (237, '469000', '省直辖县级行政Single位', '460000');
INSERT INTO "public"."Sys_City" VALUES (238, '500100', '市辖区', '500000');
INSERT INTO "public"."Sys_City" VALUES (239, '500200', '县', '500000');
INSERT INTO "public"."Sys_City" VALUES (240, '500300', '市', '500000');
INSERT INTO "public"."Sys_City" VALUES (241, '510100', '成都市', '510000');
INSERT INTO "public"."Sys_City" VALUES (242, '510300', '自贡市', '510000');
INSERT INTO "public"."Sys_City" VALUES (243, '510400', '攀枝花市', '510000');
INSERT INTO "public"."Sys_City" VALUES (244, '510500', '泸州市', '510000');
INSERT INTO "public"."Sys_City" VALUES (245, '510600', '德阳市', '510000');
INSERT INTO "public"."Sys_City" VALUES (246, '510700', '绵阳市', '510000');
INSERT INTO "public"."Sys_City" VALUES (247, '510800', '广元市', '510000');
INSERT INTO "public"."Sys_City" VALUES (248, '510900', '遂宁市', '510000');
INSERT INTO "public"."Sys_City" VALUES (249, '511000', '内江市', '510000');
INSERT INTO "public"."Sys_City" VALUES (250, '511100', '乐山市', '510000');
INSERT INTO "public"."Sys_City" VALUES (251, '511300', '南充市', '510000');
INSERT INTO "public"."Sys_City" VALUES (252, '511400', '眉山市', '510000');
INSERT INTO "public"."Sys_City" VALUES (253, '511500', '宜宾市', '510000');
INSERT INTO "public"."Sys_City" VALUES (254, '511600', '广安市', '510000');
INSERT INTO "public"."Sys_City" VALUES (255, '511700', '达州市', '510000');
INSERT INTO "public"."Sys_City" VALUES (256, '511800', '雅安市', '510000');
INSERT INTO "public"."Sys_City" VALUES (257, '511900', '巴中市', '510000');
INSERT INTO "public"."Sys_City" VALUES (258, '512000', '资阳市', '510000');
INSERT INTO "public"."Sys_City" VALUES (259, '513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO "public"."Sys_City" VALUES (260, '513300', '甘孜藏族自治州', '510000');
INSERT INTO "public"."Sys_City" VALUES (261, '513400', '凉山彝族自治州', '510000');
INSERT INTO "public"."Sys_City" VALUES (262, '520100', '贵阳市', '520000');
INSERT INTO "public"."Sys_City" VALUES (263, '520200', '六盘水市', '520000');
INSERT INTO "public"."Sys_City" VALUES (264, '520300', '遵义市', '520000');
INSERT INTO "public"."Sys_City" VALUES (265, '520400', '安顺市', '520000');
INSERT INTO "public"."Sys_City" VALUES (266, '522200', '铜仁City', '520000');
INSERT INTO "public"."Sys_City" VALUES (267, '522300', '黔Southwest布依族苗族自治州', '520000');
INSERT INTO "public"."Sys_City" VALUES (268, '522400', '毕节City', '520000');
INSERT INTO "public"."Sys_City" VALUES (269, '522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO "public"."Sys_City" VALUES (270, '522700', '黔南布依族苗族自治州', '520000');
INSERT INTO "public"."Sys_City" VALUES (271, '530100', '昆明市', '530000');
INSERT INTO "public"."Sys_City" VALUES (272, '530300', '曲靖市', '530000');
INSERT INTO "public"."Sys_City" VALUES (273, '530400', '玉溪市', '530000');
INSERT INTO "public"."Sys_City" VALUES (274, '530500', '保山市', '530000');
INSERT INTO "public"."Sys_City" VALUES (275, '530600', '昭通市', '530000');
INSERT INTO "public"."Sys_City" VALUES (276, '530700', '丽江市', '530000');
INSERT INTO "public"."Sys_City" VALUES (277, '530800', '思茅市', '530000');
INSERT INTO "public"."Sys_City" VALUES (278, '530900', '临沧市', '530000');
INSERT INTO "public"."Sys_City" VALUES (279, '532300', '楚雄彝族自治州', '530000');
INSERT INTO "public"."Sys_City" VALUES (280, '532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO "public"."Sys_City" VALUES (281, '532600', '文山壮族苗族自治州', '530000');
INSERT INTO "public"."Sys_City" VALUES (282, '532800', '西双版纳傣族自治州', '530000');
INSERT INTO "public"."Sys_City" VALUES (283, '532900', '大理白族自治州', '530000');
INSERT INTO "public"."Sys_City" VALUES (284, '533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO "public"."Sys_City" VALUES (285, '533300', '怒江傈僳族自治州', '530000');
INSERT INTO "public"."Sys_City" VALUES (286, '533400', '迪庆藏族自治州', '530000');
INSERT INTO "public"."Sys_City" VALUES (287, '540100', '拉萨市', '540000');
INSERT INTO "public"."Sys_City" VALUES (288, '542100', '昌都City', '540000');
INSERT INTO "public"."Sys_City" VALUES (289, '542200', '山南City', '540000');
INSERT INTO "public"."Sys_City" VALUES (290, '542300', '日喀则City', '540000');
INSERT INTO "public"."Sys_City" VALUES (291, '542400', '那曲City', '540000');
INSERT INTO "public"."Sys_City" VALUES (292, '542500', '阿里City', '540000');
INSERT INTO "public"."Sys_City" VALUES (293, '542600', '林芝City', '540000');
INSERT INTO "public"."Sys_City" VALUES (294, '610100', '西安市', '610000');
INSERT INTO "public"."Sys_City" VALUES (295, '610200', '铜川市', '610000');
INSERT INTO "public"."Sys_City" VALUES (296, '610300', '宝鸡市', '610000');
INSERT INTO "public"."Sys_City" VALUES (297, '610400', '咸阳市', '610000');
INSERT INTO "public"."Sys_City" VALUES (298, '610500', '渭南市', '610000');
INSERT INTO "public"."Sys_City" VALUES (299, '610600', '延安市', '610000');
INSERT INTO "public"."Sys_City" VALUES (300, '610700', '汉中市', '610000');
INSERT INTO "public"."Sys_City" VALUES (301, '610800', '榆林市', '610000');
INSERT INTO "public"."Sys_City" VALUES (302, '610900', '安康市', '610000');
INSERT INTO "public"."Sys_City" VALUES (303, '611000', '商洛市', '610000');
INSERT INTO "public"."Sys_City" VALUES (304, '620100', '兰州市', '620000');
INSERT INTO "public"."Sys_City" VALUES (305, '620200', '嘉峪关市', '620000');
INSERT INTO "public"."Sys_City" VALUES (306, '620300', '金昌市', '620000');
INSERT INTO "public"."Sys_City" VALUES (307, '620400', '白银市', '620000');
INSERT INTO "public"."Sys_City" VALUES (308, '620500', '天水市', '620000');
INSERT INTO "public"."Sys_City" VALUES (309, '620600', '武威市', '620000');
INSERT INTO "public"."Sys_City" VALUES (310, '620700', '张掖市', '620000');
INSERT INTO "public"."Sys_City" VALUES (311, '620800', '平凉市', '620000');
INSERT INTO "public"."Sys_City" VALUES (312, '620900', '酒泉市', '620000');
INSERT INTO "public"."Sys_City" VALUES (313, '621000', '庆阳市', '620000');
INSERT INTO "public"."Sys_City" VALUES (314, '621100', '定西市', '620000');
INSERT INTO "public"."Sys_City" VALUES (315, '621200', '陇南市', '620000');
INSERT INTO "public"."Sys_City" VALUES (316, '622900', '临夏回族自治州', '620000');
INSERT INTO "public"."Sys_City" VALUES (317, '623000', '甘南藏族自治州', '620000');
INSERT INTO "public"."Sys_City" VALUES (318, '630100', '西宁市', '630000');
INSERT INTO "public"."Sys_City" VALUES (319, '632100', '海东City', '630000');
INSERT INTO "public"."Sys_City" VALUES (320, '632200', '海北藏族自治州', '630000');
INSERT INTO "public"."Sys_City" VALUES (321, '632300', '黄南藏族自治州', '630000');
INSERT INTO "public"."Sys_City" VALUES (322, '632500', '海南藏族自治州', '630000');
INSERT INTO "public"."Sys_City" VALUES (323, '632600', '果洛藏族自治州', '630000');
INSERT INTO "public"."Sys_City" VALUES (324, '632700', '玉树藏族自治州', '630000');
INSERT INTO "public"."Sys_City" VALUES (325, '632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO "public"."Sys_City" VALUES (326, '640100', '银川市', '640000');
INSERT INTO "public"."Sys_City" VALUES (327, '640200', '石嘴山市', '640000');
INSERT INTO "public"."Sys_City" VALUES (328, '640300', '吴忠市', '640000');
INSERT INTO "public"."Sys_City" VALUES (329, '640400', '固原市', '640000');
INSERT INTO "public"."Sys_City" VALUES (330, '640500', '中卫市', '640000');
INSERT INTO "public"."Sys_City" VALUES (331, '650100', '乌鲁木齐市', '650000');
INSERT INTO "public"."Sys_City" VALUES (332, '650200', '克拉玛依市', '650000');
INSERT INTO "public"."Sys_City" VALUES (333, '652100', '吐鲁番City', '650000');
INSERT INTO "public"."Sys_City" VALUES (334, '652200', '哈密City', '650000');
INSERT INTO "public"."Sys_City" VALUES (335, '652300', '昌吉回族自治州', '650000');
INSERT INTO "public"."Sys_City" VALUES (336, '652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO "public"."Sys_City" VALUES (337, '652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO "public"."Sys_City" VALUES (338, '652900', '阿克苏City', '650000');
INSERT INTO "public"."Sys_City" VALUES (339, '653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO "public"."Sys_City" VALUES (340, '653100', '喀什City', '650000');
INSERT INTO "public"."Sys_City" VALUES (341, '653200', '和田City', '650000');
INSERT INTO "public"."Sys_City" VALUES (342, '654000', '伊犁哈萨克自治州', '650000');
INSERT INTO "public"."Sys_City" VALUES (343, '654200', '塔城City', '650000');
INSERT INTO "public"."Sys_City" VALUES (344, '654300', '阿勒泰City', '650000');
INSERT INTO "public"."Sys_City" VALUES (345, '659000', '省直辖行政Single位', '650000');

-- ----------------------------
-- Table structure for Sys_Department
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_Department";
CREATE TABLE "public"."Sys_Department" (
                                           "DepartmentId" uuid NOT NULL,
                                           "DepartmentName" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
                                           "DepartmentCode" varchar(70) COLLATE "pg_catalog"."default",
                                           "ParentId" uuid,
                                           "DepartmentType" varchar(70) COLLATE "pg_catalog"."default",
                                           "Enable" int4,
                                           "Remark" text COLLATE "pg_catalog"."default",
                                           "CreateID" int4,
                                           "Creator" varchar(50) COLLATE "pg_catalog"."default",
                                           "CreateDate" timestamp(6),
                                           "ModifyID" int4,
                                           "Modifier" varchar(50) COLLATE "pg_catalog"."default",
                                           "ModifyDate" timestamp(6)
)
;

-- ----------------------------
-- Records of Sys_Department
-- ----------------------------
INSERT INTO "public"."Sys_Department" VALUES ('41B96EA8-5475-4775-845D-FD66370C75AE', '上海市场研究院', 'H0001', NULL, NULL, NULL, '还没想好', 1, 'SuperAdministrator', '2023-05-13 09:15:56', 1, 'SuperAdministrator', '2023-05-13 09:50:37');
INSERT INTO "public"."Sys_Department" VALUES ('62105DFA-CA64-4C4A-AB42-11BA677AC4DB', '市场部', 'A003', '8974177F-AF6B-45B5-B7AB-88F169063F40', NULL, NULL, NULL, 1, 'SuperAdministrator', '2023-05-13 09:12:48', NULL, NULL, NULL);
INSERT INTO "public"."Sys_Department" VALUES ('8974177F-AF6B-45B5-B7AB-88F169063F40', '北京Basic研究院', 'A0001', NULL, NULL, NULL, '还没想好', 1, 'SuperAdministrator', '2023-05-13 08:56:16', 1, 'SuperAdministrator', '2023-05-13 09:50:34');
INSERT INTO "public"."Sys_Department" VALUES ('97B5FF9C-5F52-4745-95F9-5FED8D505FA9', '资源部', 'H0007', '41B96EA8-5475-4775-845D-FD66370C75AE', NULL, NULL, '还没想好', 1, 'SuperAdministrator', '2023-05-13 09:50:27', NULL, NULL, NULL);
INSERT INTO "public"."Sys_Department" VALUES ('9E1121A0-D5C5-4F46-8DD4-43ED90D2F963', '行政部', 'A005', '8974177F-AF6B-45B5-B7AB-88F169063F40', NULL, NULL, NULL, 1, 'SuperAdministrator', '2023-05-13 09:13:18', NULL, NULL, NULL);
INSERT INTO "public"."Sys_Department" VALUES ('D01EB5D9-0F02-4468-94B8-635A5DFB3142', '商务部', 'A0002', '8974177F-AF6B-45B5-B7AB-88F169063F40', NULL, NULL, NULL, 1, 'SuperAdministrator', '2023-05-13 09:07:16', NULL, NULL, NULL);
INSERT INTO "public"."Sys_Department" VALUES ('E5D8E8AF-3659-454C-AA8E-C201C7EDBCFB', '销售部', 'A004', '62105DFA-CA64-4C4A-AB42-11BA677AC4DB', NULL, NULL, NULL, 1, 'SuperAdministrator', '2023-05-13 09:13:03', 1, 'SuperAdministrator', '2023-05-13 09:14:27');
INSERT INTO "public"."Sys_Department" VALUES ('E8C6CC16-AF09-495D-B101-B651F10196DE', '战略部', 'H0002', '41B96EA8-5475-4775-845D-FD66370C75AE', NULL, NULL, NULL, 1, 'SuperAdministrator', '2023-05-13 09:19:55', NULL, NULL, NULL);
INSERT INTO "public"."Sys_Department" VALUES ('EAE332DC-4AF8-4EBF-804A-E3D6C6D00926', 'Personnel Department', NULL, '9E1121A0-D5C5-4F46-8DD4-43ED90D2F963', NULL, NULL, NULL, 1, 'SuperAdministrator', '2023-05-13 09:14:41', NULL, NULL, NULL);
INSERT INTO "public"."Sys_Department" VALUES ('EC238385-F907-44DE-B99B-0EDDCFFA6750', 'ProductDepartment', 'A0003', '41B96EA8-5475-4775-845D-FD66370C75AE', NULL, NULL, NULL, 1, 'SuperAdministrator', '2023-05-13 09:20:26', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for Sys_Province
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_Province";
CREATE TABLE "public"."Sys_Province" (
                                         "ProvinceId" int4 NOT NULL,
                                         "ProvinceCode" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
                                         "ProvinceName" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
                                         "RegionCode" varchar(50) COLLATE "pg_catalog"."default"
)
;
-- ----------------------------
-- Sequence structure for sys_province_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_province_id_seq";
CREATE SEQUENCE "public"."sys_province_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 100
CACHE 1;
ALTER TABLE "public"."Sys_Province" ALTER COLUMN "ProvinceId" SET DEFAULT nextval('sys_province_id_seq');

-- ----------------------------
-- Records of Sys_Province
-- ----------------------------
INSERT INTO "public"."Sys_Province" VALUES (1, '110000', '北京市', '华北');
INSERT INTO "public"."Sys_Province" VALUES (2, '120000', '天津市', '华北');
INSERT INTO "public"."Sys_Province" VALUES (3, '130000', '河北省', '华北');
INSERT INTO "public"."Sys_Province" VALUES (4, '140000', '山西省', '华北');
INSERT INTO "public"."Sys_Province" VALUES (5, '150000', '内蒙古自治区', '华北');
INSERT INTO "public"."Sys_Province" VALUES (6, '210000', '辽宁省', 'Northeast');
INSERT INTO "public"."Sys_Province" VALUES (7, '220000', '吉林省', 'Northeast');
INSERT INTO "public"."Sys_Province" VALUES (8, '230000', '黑龙江省', 'Northeast');
INSERT INTO "public"."Sys_Province" VALUES (9, '310000', '上海市', '华东');
INSERT INTO "public"."Sys_Province" VALUES (10, '320000', '江苏省', '华东');
INSERT INTO "public"."Sys_Province" VALUES (11, '330000', '浙江省', '华东');
INSERT INTO "public"."Sys_Province" VALUES (12, '340000', '安徽省', '华东');
INSERT INTO "public"."Sys_Province" VALUES (13, '350000', '福建省', '华东');
INSERT INTO "public"."Sys_Province" VALUES (14, '360000', '江西省', '华东');
INSERT INTO "public"."Sys_Province" VALUES (15, '370000', '山东省', '华东');
INSERT INTO "public"."Sys_Province" VALUES (16, '410000', '河南省', '华中');
INSERT INTO "public"."Sys_Province" VALUES (17, '420000', '湖北省', '华中');
INSERT INTO "public"."Sys_Province" VALUES (18, '430000', '湖南省', '华中');
INSERT INTO "public"."Sys_Province" VALUES (19, '440000', '广东省', 'South China');
INSERT INTO "public"."Sys_Province" VALUES (20, '450000', 'Guangxi Zhuang Autonomous Region', 'South China');
INSERT INTO "public"."Sys_Province" VALUES (21, '460000', 'Hainan Province', 'South China');
INSERT INTO "public"."Sys_Province" VALUES (22, '500000', 'Chongqing', 'Southwest');
INSERT INTO "public"."Sys_Province" VALUES (23, '510000', 'Sichuan Province', 'Southwest');
INSERT INTO "public"."Sys_Province" VALUES (24, '520000', 'Guizhou Province', 'Southwest');
INSERT INTO "public"."Sys_Province" VALUES (25, '530000', 'Yunnan Province', 'Southwest');
INSERT INTO "public"."Sys_Province" VALUES (26, '540000', 'Tibet Autonomous Region', 'Southwest');
INSERT INTO "public"."Sys_Province" VALUES (27, '610000', 'Shaanxi Province', 'Northwest');
INSERT INTO "public"."Sys_Province" VALUES (28, '620000', 'Gansu Province', 'Northwest');
INSERT INTO "public"."Sys_Province" VALUES (29, '630000', 'Qinghai Province', 'Northwest');
INSERT INTO "public"."Sys_Province" VALUES (30, '640000', '宁夏回族自治区', 'Northwest');
INSERT INTO "public"."Sys_Province" VALUES (31, '650000', 'Xinjiang Uygur Autonomous Region', 'Northwest');
INSERT INTO "public"."Sys_Province" VALUES (32, '710000', 'Taiwan Province', 'Hong Kong, Macao and Taiwan');
INSERT INTO "public"."Sys_Province" VALUES (33, '810000', 'Hong Kong Special Administrative Region', 'Hong Kong, Macao and Taiwan');
INSERT INTO "public"."Sys_Province" VALUES (34, '820000', 'Macao Special Administrative Region', 'Hong Kong, Macao and Taiwan');
INSERT INTO "public"."Sys_Province" VALUES (35, 'thd', 'Taohua Island', 'Northeast');
INSERT INTO "public"."Sys_Province" VALUES (43, 'Modifier1', 'Modifier1', 'Hong Kong, Macao and Taiwan');

-- ----------------------------
-- Table structure for Sys_Role
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_Role";
CREATE TABLE "public"."Sys_Role" (
                                     "Role_Id" int4 NOT NULL,
                                     "CreateDate" timestamp(6),
                                     "Creator" varchar(70) COLLATE "pg_catalog"."default",
                                     "DeleteBy" varchar(70) COLLATE "pg_catalog"."default",
                                     "DeptName" varchar(70) COLLATE "pg_catalog"."default",
                                     "Dept_Id" int4,
                                     "Enable" int2,
                                     "Modifier" varchar(70) COLLATE "pg_catalog"."default",
                                     "ModifyDate" timestamp(6),
                                     "OrderNo" int4,
                                     "ParentId" int4 NOT NULL,
                                     "RoleName" varchar(70) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Sequence structure for sys_role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_role_id_seq";
CREATE SEQUENCE "public"."sys_role_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 10
CACHE 1;
ALTER TABLE "public"."Sys_Role" ALTER COLUMN "Role_Id" SET DEFAULT nextval('sys_role_id_seq');

-- ----------------------------
-- Records of Sys_Role
-- ----------------------------
INSERT INTO "public"."Sys_Role" VALUES (1, '2018-08-23 11:46:06', 'SuperAdministrator', NULL, 'None', 0, 1, 'ModifierSuperAdministrator', '2018-09-06 17:08:35', 1000, 0, 'SuperAdministrator');
INSERT INTO "public"."Sys_Role" VALUES (2, '2018-08-23 11:46:52', 'SuperAdministrator', NULL, '1', 0, 1, 'SuperAdministrator', '2022-04-17 20:11:05', NULL, 1, 'ModifierAdministrator');
INSERT INTO "public"."Sys_Role" VALUES (4, '2018-08-23 11:47:41', 'SuperAdministrator', NULL, 'None  ', 0, 1, 'SuperAdministrator', '2019-12-08 21:11:11', NULL, 2, 'InformationOfficer');

-- ----------------------------
-- Table structure for Sys_RoleAuth
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_RoleAuth";
CREATE TABLE "public"."Sys_RoleAuth" (
                                         "Auth_Id" int4 NOT NULL,
                                         "AuthValue" text COLLATE "pg_catalog"."default" NOT NULL,
                                         "CreateDate" timestamp(6),
                                         "Creator" text COLLATE "pg_catalog"."default",
                                         "Menu_Id" int4 NOT NULL,
                                         "Modifier" text COLLATE "pg_catalog"."default",
                                         "ModifyDate" timestamp(6),
                                         "Role_Id" int4,
                                         "User_Id" int4
)
;

-- ----------------------------
-- Sequence structure for sys_roleauth_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_roleauth_id_seq";
CREATE SEQUENCE "public"."sys_roleauth_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 100
CACHE 1;
ALTER TABLE "public"."Sys_RoleAuth" ALTER COLUMN "Auth_Id" SET DEFAULT nextval('sys_roleauth_id_seq');

-- ----------------------------
-- Records of Sys_RoleAuth
-- ----------------------------
INSERT INTO "public"."Sys_RoleAuth" VALUES (1, 'Search,Add,Delete,Update,Import,Export,Upload,Audit', '2020-05-05 13:23:11', 'SuperAdministrator', 9, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (2, 'Search,Add,Delete,Update,Import,Export', '2020-05-05 13:23:11', 'SuperAdministrator', 53, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (3, 'Search,Add,Delete,Update,Import,Export,Upload,Audit', '2020-05-05 13:23:11', 'SuperAdministrator', 50, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (4, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 40, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (5, 'Search,Add,Delete,Update,Export', '2020-05-05 13:23:11', 'SuperAdministrator', 3, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (6, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 37, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (7, 'Search,Add,Delete,Update,Export', '2020-05-05 13:23:11', 'SuperAdministrator', 51, 'SuperAdministrator', '2022-08-22 01:13:38', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (8, 'Search,Add,Delete,Update,Import,Export,Upload,Audit', '2020-05-05 13:23:11', 'SuperAdministrator', 59, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (9, 'Search,Add,Delete,Update', '2020-05-05 13:23:11', 'SuperAdministrator', 13, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (10, '', '2020-05-05 13:23:11', 'SuperAdministrator', 44, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (11, '', '2020-05-05 13:23:11', 'SuperAdministrator', 24, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (12, '', '2020-05-05 13:23:11', 'SuperAdministrator', 35, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (13, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 60, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (14, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 58, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (15, 'Search,Add,Delete,Update,Export,Audit', '2020-05-05 13:23:11', 'SuperAdministrator', 68, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (16, 'Search,Add,Delete,Update,Import,Export', '2020-05-05 13:23:11', 'SuperAdministrator', 52, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (17, 'Search,Add,Delete,Update', '2020-05-05 13:23:11', 'SuperAdministrator', 65, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (18, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 62, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (19, 'Search,Add,Delete,Update,Export', '2020-05-05 13:23:11', 'SuperAdministrator', 63, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (20, '', '2020-05-05 13:23:11', 'SuperAdministrator', 54, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (21, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 94, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (22, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 42, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (23, 'Search,Add,Delete,Update,Import,Export,Upload,Audit', '2020-05-05 13:23:11', 'SuperAdministrator', 34, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (24, 'Search,Add,Delete,Update,Export', '2020-05-05 13:23:11', 'SuperAdministrator', 90, 'SuperAdministrator', '2022-08-16 00:56:48', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (25, 'Search,Add,Delete,Update,Export', '2020-05-05 13:23:11', 'SuperAdministrator', 67, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (26, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 91, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (27, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 36, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (28, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 77, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (29, 'Search,Delete,Export', '2020-05-05 13:23:11', 'SuperAdministrator', 6, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (30, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 88, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (31, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 61, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (32, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 8, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (33, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 48, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (34, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 74, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (35, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 56, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (36, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 55, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (37, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 32, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (38, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 33, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (39, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 92, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (40, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 89, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (41, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 86, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (42, 'Search,Add,Delete,Update,Import,Export,Upload,Audit', '2020-05-05 13:23:11', 'SuperAdministrator', 84, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (43, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 29, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (44, 'Search,Add,Delete,Update,Import,Export', '2020-05-05 13:23:11', 'SuperAdministrator', 31, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (45, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 72, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (46, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 66, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (47, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 28, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (48, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 64, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (49, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 5, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (50, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 25, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (51, 'Search,Add,Delete,Update', '2020-05-05 13:23:11', 'SuperAdministrator', 93, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (52, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 85, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (53, 'Search,Add,Delete,Update,Import,Export,Upload,Audit', '2020-05-05 13:23:11', 'SuperAdministrator', 75, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (54, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 87, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (55, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 57, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (56, 'Search,Import,Export,test', '2020-05-05 13:23:11', 'SuperAdministrator', 49, 'SuperAdministrator', '2023-05-13 13:53:24', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (57, 'Search,Update', '2020-05-05 13:23:11', 'SuperAdministrator', 71, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (58, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 2, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (59, 'Search', '2020-05-05 13:23:11', 'SuperAdministrator', 73, 'SuperAdministrator', '2020-05-05 13:23:11', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (60, 'Search', '2022-08-16 00:56:48', 'SuperAdministrator', 133, 'SuperAdministrator', '2022-08-16 00:56:48', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (61, 'Search,Add,Delete,Update,Export', '2022-08-16 00:56:48', 'SuperAdministrator', 134, 'SuperAdministrator', '2022-08-16 00:56:48', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (62, 'Search,Delete', '2022-08-16 00:56:48', 'SuperAdministrator', 135, 'SuperAdministrator', '2022-08-16 00:56:48', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (63, 'Search', '2022-08-16 00:56:48', 'SuperAdministrator', 136, 'SuperAdministrator', '2022-08-16 00:56:48', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (64, 'Search', '2022-08-22 01:13:38', 'SuperAdministrator', 113, 'SuperAdministrator', '2023-05-13 13:53:24', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (65, 'Search', '2022-08-22 01:13:38', 'SuperAdministrator', 115, 'SuperAdministrator', '2023-05-13 13:53:24', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (66, 'Search', '2022-09-09 17:53:16', 'SuperAdministrator', 118, 'SuperAdministrator', '2023-05-13 13:53:24', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (67, 'Search,Add,Delete,Update,Import,Export', '2022-09-09 17:53:16', 'SuperAdministrator', 119, 'SuperAdministrator', '2023-05-13 13:53:24', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (68, 'Search', '2022-09-09 17:53:21', 'SuperAdministrator', 116, 'SuperAdministrator', '2023-05-13 13:53:24', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (69, 'Search', '2022-09-09 17:53:38', 'SuperAdministrator', 129, 'SuperAdministrator', '2022-09-09 17:53:38', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (70, 'Search', '2022-09-09 17:53:45', 'SuperAdministrator', 106, 'SuperAdministrator', '2022-09-09 17:53:45', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (71, 'Search', '2022-09-09 17:53:45', 'SuperAdministrator', 107, 'SuperAdministrator', '2022-09-09 17:53:45', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (72, 'Search', '2022-09-09 17:53:45', 'SuperAdministrator', 127, 'SuperAdministrator', '2022-09-09 17:53:45', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (73, 'Search,Add,Delete,Update', '2022-09-09 17:53:45', 'SuperAdministrator', 109, 'SuperAdministrator', '2022-09-09 17:53:45', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (74, 'Search,Delete,Export', '2022-09-09 17:53:45', 'SuperAdministrator', 110, 'SuperAdministrator', '2022-09-09 17:53:45', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (75, 'Search', '2022-09-09 17:54:03', 'SuperAdministrator', 137, 'SuperAdministrator', '2022-09-09 17:54:03', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (76, 'Search,Add,Delete,Update', '2022-09-09 17:54:03', 'SuperAdministrator', 138, 'SuperAdministrator', '2022-09-09 17:54:03', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (77, 'Search,Delete,Export', '2022-09-09 17:54:03', 'SuperAdministrator', 139, 'SuperAdministrator', '2022-09-09 17:54:03', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (78, 'Search', '2022-09-09 17:55:31', 'zs', 129, 'zs', '2022-09-09 17:55:31', 4, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (79, 'Search', '2022-09-09 17:55:31', 'zs', 106, 'zs', '2022-09-09 17:55:31', 4, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (80, 'Search', '2022-09-09 17:55:31', 'zs', 107, 'zs', '2022-09-09 17:55:31', 4, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (81, 'Search,Add,Delete,Update', '2022-09-09 17:55:31', 'zs', 109, 'zs', '2022-09-09 17:55:31', 4, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (82, 'Search,Delete,Export', '2022-09-09 17:55:31', 'zs', 110, 'zs', '2022-09-09 17:55:31', 4, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (83, 'Search', '2023-02-03 16:51:48', 'SuperAdministrator', 113, 'SuperAdministrator', '2023-02-03 16:51:48', 4, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (84, 'Search', '2023-02-03 16:51:48', 'SuperAdministrator', 116, 'SuperAdministrator', '2023-02-03 16:51:48', 4, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (85, 'Search', '2023-02-03 16:51:48', 'SuperAdministrator', 118, 'SuperAdministrator', '2023-02-03 16:51:48', 4, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (86, 'Search,Add,Delete,Update', '2023-02-03 16:51:48', 'SuperAdministrator', 119, 'SuperAdministrator', '2023-02-03 16:51:48', 4, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (87, 'Search', '2023-02-03 16:51:48', 'SuperAdministrator', 115, 'SuperAdministrator', '2023-02-03 16:51:48', 4, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (88, 'Search', '2023-05-13 13:53:24', 'SuperAdministrator', 101, 'SuperAdministrator', '2023-05-13 13:53:24', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (89, 'Search,Add,Delete,Update,Import,Export', '2023-05-13 13:53:24', 'SuperAdministrator', 100, 'SuperAdministrator', '2023-05-13 13:53:24', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (90, 'Search,Add,Delete,Update,Import,Export,Upload', '2023-05-13 13:53:24', 'SuperAdministrator', 96, 'SuperAdministrator', '2023-05-13 13:53:24', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (91, 'Search', '2023-05-13 13:53:24', 'SuperAdministrator', 105, 'SuperAdministrator', '2023-05-13 13:53:24', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (92, 'Search,Add,Delete,Update,Import,Export', '2023-05-13 13:53:24', 'SuperAdministrator', 99, 'SuperAdministrator', '2023-05-13 13:53:24', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (93, 'Search,Add,Delete,Update,Import,Export', '2023-05-13 13:53:24', 'SuperAdministrator', 98, 'SuperAdministrator', '2023-05-13 13:53:24', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (94, 'Search', '2023-05-13 13:53:24', 'SuperAdministrator', 132, 'SuperAdministrator', '2023-05-13 13:53:24', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (95, 'Search,Add,Delete,Update,Export', '2023-05-13 13:53:24', 'SuperAdministrator', 142, 'SuperAdministrator', '2023-05-13 13:53:24', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (96, 'Search,Add,Delete,Update', '2023-05-13 13:53:24', 'SuperAdministrator', 97, 'SuperAdministrator', '2023-05-13 13:53:24', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (97, 'Search', '2023-05-13 13:53:24', 'SuperAdministrator', 123, 'SuperAdministrator', '2023-05-13 13:53:24', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (98, 'Search', '2023-05-13 13:54:49', 'SuperAdministrator', 121, 'SuperAdministrator', '2023-05-13 13:54:49', 2, NULL);
INSERT INTO "public"."Sys_RoleAuth" VALUES (99, 'Search', '2023-05-13 13:54:49', 'SuperAdministrator', 126, 'SuperAdministrator', '2023-05-13 13:54:49', 2, NULL);

-- ----------------------------
-- Table structure for Sys_User
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_User";
CREATE TABLE "public"."Sys_User" (
                                     "User_Id" int4 NOT NULL,
                                     "Role_Id" int4 NOT NULL,
                                     "RoleName" varchar(200) COLLATE "pg_catalog"."default",
                                     "PhoneNo" varchar(11) COLLATE "pg_catalog"."default",
                                     "Remark" varchar(200) COLLATE "pg_catalog"."default",
                                     "Tel" varchar(50) COLLATE "pg_catalog"."default",
                                     "UserName" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
                                     "UserPwd" varchar(200) COLLATE "pg_catalog"."default",
                                     "UserTrueName" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
                                     "DeptName" varchar(150) COLLATE "pg_catalog"."default",
                                     "Dept_Id" int4,
                                     "Email" varchar(100) COLLATE "pg_catalog"."default",
                                     "Enable" int2 NOT NULL,
                                     "Gender" int4,
                                     "HeadImageUrl" text COLLATE "pg_catalog"."default",
                                     "IsRegregisterPhone" int4,
                                     "LastLoginDate" timestamp(6),
                                     "LastModifyPwdDate" timestamp(6),
                                     "Address" varchar(200) COLLATE "pg_catalog"."default",
                                     "AppType" int4,
                                     "AuditDate" timestamp(6),
                                     "AuditStatus" int4,
                                     "Auditor" varchar(200) COLLATE "pg_catalog"."default",
                                     "OrderNo" int4,
                                     "Token" text COLLATE "pg_catalog"."default",
                                     "CreateID" int4,
                                     "CreateDate" timestamp(6),
                                     "Creator" varchar(200) COLLATE "pg_catalog"."default",
                                     "Mobile" varchar(100) COLLATE "pg_catalog"."default",
                                     "Modifier" varchar(200) COLLATE "pg_catalog"."default",
                                     "ModifyDate" timestamp(6),
                                     "ModifyID" int4,
                                     "DeptIds" text COLLATE "pg_catalog"."default"
)
;
-- ----------------------------
-- Sequence structure for sys_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_user_id_seq";
CREATE SEQUENCE "public"."sys_user_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 10000
CACHE 1;
ALTER TABLE "public"."Sys_User" ALTER COLUMN "User_Id" SET DEFAULT nextval('sys_user_id_seq');

-- ----------------------------
-- Records of Sys_User
-- ----------------------------
INSERT INTO "public"."Sys_User" VALUES (1, 1, 'None', '13888888888', '~还没想好...', NULL, 'admin', 'j79rYYvCz4vdhcboB1Ausg==', 'SuperAdministrator', NULL, 0, '283591387@qq.com', 1, 1, 'Upload/Tables/Sys_User/202305131010574561/wechat.jpg', 0, '2017-08-28 09:58:55', '2019-12-14 15:14:23', '北京市西城区', 1, '2019-08-18 00:54:06', 1, 'SuperAdministrator', 0, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiIxIiwiaWF0IjoiMTY4Mzk3Mzk3OSIsIm5iZiI6IjE2ODM5NzM5NzkiLCJleHAiOiIxNjgzOTgxMTc5IiwiaXNzIjoidm9sLmNvcmUub3duZXIiLCJhdWQiOiJ2b2wuY29yZSJ9.e1alR9m5z7TNFrLFegmBpl3pm674vJaLvW5YgnRcqEE', NULL, '2012-06-10 11:10:03', NULL, NULL, 'SuperAdministrator', '2023-05-13 10:10:58', 1, NULL);
INSERT INTO "public"."Sys_User" VALUES (3362, 2, 'None', NULL, '。。', NULL, 'admin666', 'j79rYYvCz4vdhcboB1Ausg==', 'AdminModifier', NULL, NULL, NULL, 1, 0, 'Upload/Tables/Sys_User/202305131011047216/wechat.jpg', 1, NULL, '2019-09-22 23:03:34', '北京市还没注册', 1, '2019-08-18 00:54:06', 1, 'SuperAdministrator', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiIzMzYyIiwiaWF0IjoiMTY4Mzk2OTQ4NCIsIm5iZiI6IjE2ODM5Njk0ODQiLCJleHAiOiIxNjgzOTc2Njg0IiwiaXNzIjoidm9sLmNvcmUub3duZXIiLCJhdWQiOiJ2b2wuY29yZSJ9.AusSAJoTD3Bk90PFCmhNj7Mrlv06IA3XM2mubfwBJu0', NULL, '2019-08-13 14:24:27', NULL, '01012345678', 'SuperAdministrator', '2023-05-13 17:09:41', 1, 'e5d8e8af-3659-454c-aa8e-c201c7edbcfb,ec238385-f907-44de-b99b-0eddcffa6750');

-- ----------------------------
-- Table structure for Sys_UserDepartment
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_UserDepartment";
CREATE TABLE "public"."Sys_UserDepartment" (
                                               "Id" uuid NOT NULL,
                                               "UserId" int4 NOT NULL,
                                               "DepartmentId" uuid NOT NULL,
                                               "Enable" int4 NOT NULL,
                                               "CreateID" int4,
                                               "Creator" varchar(255) COLLATE "pg_catalog"."default",
                                               "CreateDate" timestamp(6),
                                               "ModifyID" int4,
                                               "Modifier" varchar(255) COLLATE "pg_catalog"."default",
                                               "ModifyDate" timestamp(6)
)
;


-- ----------------------------
-- Records of Sys_UserDepartment
-- ----------------------------

-- ----------------------------
-- Table structure for Sys_Dictionary
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_Dictionary";
CREATE TABLE "public"."Sys_Dictionary" (
                                           "Dic_ID" int4 NOT NULL,
                                           "Config" text COLLATE "pg_catalog"."default",
                                           "CreateDate" timestamp(6),
                                           "CreateID" int4,
                                           "Creator" varchar(50) COLLATE "pg_catalog"."default",
                                           "DBServer" text COLLATE "pg_catalog"."default",
                                           "DbSql" text COLLATE "pg_catalog"."default",
                                           "DicName" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
                                           "DicNo" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
                                           "Enable" int2 NOT NULL,
                                           "Modifier" varchar(50) COLLATE "pg_catalog"."default",
                                           "ModifyDate" timestamp(6),
                                           "ModifyID" int4,
                                           "OrderNo" int4,
                                           "ParentId" int4 NOT NULL,
                                           "Remark" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Sequence structure for sys_dictionary_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_dictionary_id_seq";
CREATE SEQUENCE "public"."sys_dictionary_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 100
CACHE 1;
ALTER TABLE "public"."Sys_Dictionary" ALTER COLUMN "Dic_ID" SET DEFAULT nextval('sys_dictionary_id_seq');

-- ----------------------------
-- Records of Sys_Dictionary
-- ----------------------------
INSERT INTO "public"."Sys_Dictionary" VALUES (3, '{valueField: ''Enable'',
textField: ''Enable'',
 containField: null,
  handler: null }', '2019-07-05 17:36:23', NULL, 'admin', '1', NULL, '是否值', 'enable', 1, 'SuperAdministrator', '2022-01-03 18:30:18', 1, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (30, '{valueField: ''Success'',
 textField: ''Success'', 
 containField: null,
 handler: null }
', '2018-06-11 18:26:05', 0, 'ModifierSuperAdministrator', NULL, NULL, 'Success', 'restatus', 1, 'ModifierSuperAdministrator', '2018-06-12 10:21:48', 1, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (31, '{valueField: ''LogType'',
 textField: ''LogType'', 
 containField: null,
 handler: null }
', '2018-06-12 14:46:07', NULL, 'ModifierSuperAdministrator', NULL, NULL, 'LogType', 'log', 1, 'SuperAdministrator', '2022-04-04 13:21:55', 1, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (32, '{valueField: ''Role_Id'',
 textField: ''RoleName'', 
 containField: [''Role_Id'',''RoleName''],
 handler: null }
', '2018-06-14 16:48:35', NULL, 'ModifierSuperAdministrator', NULL, 'SELECT "Role_Id" as "key","RoleName" as "value" FROM "Sys_Role" WHERE "Enable"=1
', 'Role_IdList', 'roles', 1, 'ModifierSuperAdministrator', '2018-07-13 15:03:53', 1, 123, 0, 'DbSql需要key,value列，界面才能绑定Data源');
INSERT INTO "public"."Sys_Dictionary" VALUES (35, '{
 valueField: ''AuditStatus'',
 textField: ''AuditStatus'',
  containField:null 
}', '2018-07-10 10:51:37', NULL, 'ModifierSuperAdministrator', NULL, NULL, 'AuditStatus', 'audit', 1, 'SuperAdministrator', '2023-05-08 01:05:44', 1, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (36, '{
 valueField: ''Variety'',
 textField: ''Variety'',
  containField:null 
}', '2018-07-10 14:06:12', 1, 'ModifierSuperAdministrator', NULL, NULL, 'Variety', 'pz', 1, 'SuperAdministrator', '2023-05-08 01:03:16', 1, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (37, '{
 valueField: ''AgeRange'',
 textField: ''AgeRange'',
  containField:null 
}', '2018-07-10 14:07:46', NULL, 'ModifierSuperAdministrator', NULL, NULL, 'AgeRange', 'age', 1, 'SuperAdministrator', '2023-05-13 10:49:00', 1, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (38, '{
 valueField: ''City'',
 textField: ''City'',
  containField:null 
}', '2018-07-10 14:18:25', NULL, 'ModifierSuperAdministrator', NULL, '
SELECT  CASE WHEN  "CityName"=''市辖区'' THEN  "ProvinceName" ELSE "CityName" end  as  "key",CASE WHEN  "CityName"=''市辖区'' THEN  "ProvinceName" ELSE "CityName" end  as  "value"  FROM "Sys_City" AS a
INNER JOIN "Sys_Province" AS b
ON a."ProvinceCode"=b."ProvinceCode"
WHERE a."CityName"<> ''县''', 'City', 'city', 1, 'SuperAdministrator', '2020-02-01 22:27:08', 1, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (44, '{
 valueField: ''NewsType'',
 textField: ''NewsType'',
  containField:null 
}', '2018-07-10 16:15:59', 1, 'ModifierSuperAdministrator', NULL, NULL, 'NewsType', 'news', 1, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (46, '{
 valueField: ''ProvinceName'',
 textField: ''ProvinceName'',
  containField:null 
}', '2018-07-16 13:27:34', NULL, 'ModifierSuperAdministrator', NULL, '
SELECT  CASE WHEN  CityName=''市辖区'' THEN  ProvinceName ELSE CityName end  as  ''key'',CASE WHEN  CityName=''市辖区'' THEN  ProvinceName ELSE CityName end  as  ''value''  FROM Sys_City AS a 
INNER JOIN Sys_Province AS b 
ON a.ProvinceCode=b.ProvinceCode
WHERE a.CityName<> ''县''', '省List', 'pro', 1, 'SuperAdministrator', '2020-02-01 22:26:59', 1, NULL, 0, 'DbSql需要key,value列，界面才能绑定Data源');
INSERT INTO "public"."Sys_Dictionary" VALUES (49, '{
 valueField: ''Gender'',
 textField: ''Gender'',
  containField:null 
}', '2018-07-23 10:04:45', NULL, 'ModifierSuperAdministrator', NULL, NULL, 'Gender', 'gender', 1, 'ModifierSuperAdministrator', '2018-07-23 11:10:28', 1, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (50, '{
 valueField: ''Enable'',
 textField: ''Enable'',
  containField:null 
}', '2018-07-23 15:36:43', 1, 'ModifierSuperAdministrator', NULL, NULL, '启用状态', 'status', 1, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (59, '{
 valueField: ''IsRegregisterPhone'',
 textField: ''IsRegregisterPhone'',
  containField:null 
}', '2018-08-29 15:54:21', 1, 'ModifierSuperAdministrator', NULL, NULL, 'IsRegregisterPhone', 'isphone', 1, 'SuperAdministrator', '2020-11-20 23:05:48', 1, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (64, NULL, '2019-09-18 19:25:47', 1, 'SuperAdministrator', NULL, NULL, 'OrderAppType', 'ordertype', 1, 'SuperAdministrator', '2019-11-01 10:04:21', 1, NULL, 0, 'xxxxx');
INSERT INTO "public"."Sys_Dictionary" VALUES (65, NULL, '2019-09-19 10:07:23', 1, 'SuperAdministrator', NULL, NULL, 'ProductName', 'pn', 1, 'SuperAdministrator', '2022-07-12 23:28:41', 1, 2, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (66, NULL, '2020-11-20 23:03:56', 1, 'SuperAdministrator', NULL, 'SELECT "Role_Id" AS "id","ParentId" AS "parentId","Role_Id" AS "key","RoleName" AS "value" FROM "Sys_Role"', '级联Role_Id', 'tree_roles', 1, 'SuperAdministrator', '2020-11-20 23:08:03', 1, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (67, NULL, '2020-12-29 21:41:16', 1, 'SuperAdministrator', NULL, NULL, 'nav', 'nav', 1, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (68, NULL, '2022-01-03 18:29:14', 1, 'SuperAdministrator', NULL, NULL, '满意度', '满意度', 1, 'SuperAdministrator', '2022-06-27 00:52:40', 1, NULL, 0, 'FormDesign使用');
INSERT INTO "public"."Sys_Dictionary" VALUES (70, NULL, '2022-09-06 00:48:10', 1, 'SuperAdministrator', NULL, NULL, 'Method', 'Method', 1, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (71, NULL, '2022-09-06 00:50:54', 1, 'SuperAdministrator', NULL, NULL, 'ScheduledTasks状态', 'ScheduledTasks状态', 1, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO "public"."Sys_Dictionary" VALUES (72, NULL, '2023-05-13 08:58:31', 1, 'SuperAdministrator', NULL, 'SELECT "DepartmentId" AS "key","DepartmentId" AS "id","ParentId" AS "parentId","DepartmentName" as "value" FROM "Sys_Department"', 'organization', 'organization', 1, NULL, NULL, NULL, NULL, 0, NULL);

-- ----------------------------
-- Table structure for Sys_DictionaryList
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_DictionaryList";
CREATE TABLE "public"."Sys_DictionaryList" (
                                               "DicList_ID" int4 NOT NULL,
                                               "CreateDate" timestamp(6),
                                               "CreateID" int4,
                                               "Creator" varchar(50) COLLATE "pg_catalog"."default",
                                               "DicName" varchar(100) COLLATE "pg_catalog"."default",
                                               "DicValue" varchar(100) COLLATE "pg_catalog"."default",
                                               "Dic_ID" int4,
                                               "Enable" int2,
                                               "Modifier" varchar(50) COLLATE "pg_catalog"."default",
                                               "ModifyDate" timestamp(6),
                                               "ModifyID" int4,
                                               "OrderNo" int4,
                                               "Remark" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Sequence structure for sys_dictionarylist_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_dictionarylist_id_seq";
CREATE SEQUENCE "public"."sys_dictionarylist_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 500
CACHE 1;
ALTER TABLE "public"."Sys_DictionaryList" ALTER COLUMN "DicList_ID" SET DEFAULT nextval('sys_dictionarylist_id_seq');

-- ----------------------------
-- Records of Sys_DictionaryList
-- ----------------------------
INSERT INTO "public"."Sys_DictionaryList" VALUES (3, NULL, 1, 'admin', '否', '0', 3, NULL, 'SuperAdministrator', '2022-01-03 18:30:18', 1, 2, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (4, NULL, 1, 'xxx', '是', '1', 3, NULL, 'SuperAdministrator', '2022-01-03 18:30:18', 1, 1, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (22, '2018-06-11 18:26:05', 1, 'ModifierSuperAdministrator', 'Other', '0', 30, NULL, 'SuperAdministrator', '2019-08-21 16:49:43', 1, 10, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (23, '2018-06-11 18:26:05', 1, 'ModifierSuperAdministrator', 'Success', '1', 30, NULL, 'SuperAdministrator', '2019-08-21 16:49:43', 1, 100, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (24, '2018-06-12 09:41:58', 1, 'ModifierSuperAdministrator', '异常', '2', 30, NULL, 'SuperAdministrator', '2019-08-21 16:49:43', 1, 50, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (25, '2018-06-12 14:46:08', 1, 'ModifierSuperAdministrator', 'System', 'System', 31, NULL, 'SuperAdministrator', '2022-04-04 13:21:55', 1, 100, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (26, '2018-06-12 14:47:32', 1, 'ModifierSuperAdministrator', 'Login', 'Login', 31, NULL, 'SuperAdministrator', '2022-04-04 13:21:55', 1, 90, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (27, '2018-06-15 15:29:58', 1, 'ModifierSuperAdministrator', 'Add', 'Add', 31, NULL, 'SuperAdministrator', '2022-04-04 13:21:55', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (28, '2018-06-15 15:29:58', 1, 'ModifierSuperAdministrator', 'Del', 'Del', 31, 1, 'SuperAdministrator', '2022-04-04 13:21:55', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (29, '2018-06-15 15:30:34', 1, 'ModifierSuperAdministrator', 'Edit', 'Edit', 31, 1, 'SuperAdministrator', '2022-04-04 13:21:55', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (37, '2018-07-10 10:51:38', 1, 'ModifierSuperAdministrator', '待审核', '0', 35, 0, 'SuperAdministrator', '2023-05-08 01:05:44', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (38, '2018-07-10 10:51:38', 1, 'ModifierSuperAdministrator', '审核通过', '1', 35, NULL, 'SuperAdministrator', '2023-05-08 01:05:44', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (39, '2018-07-10 10:51:38', 1, 'ModifierSuperAdministrator', '审核中', '2', 35, 0, 'SuperAdministrator', '2023-05-08 01:05:44', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (64, '2018-07-10 16:15:59', 1, 'ModifierSuperAdministrator', '行业新闻', '1', 44, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (65, '2018-07-10 16:15:59', 1, 'ModifierSuperAdministrator', '行情Information', '2', 44, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (71, '2018-07-11 17:11:19', 1, 'ModifierSuperAdministrator', '异常', 'Exception', 31, 0, 'SuperAdministrator', '2022-04-04 13:21:55', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (90, '2018-07-23 10:04:45', 1, 'ModifierSuperAdministrator', '男', '0', 49, NULL, 'ModifierSuperAdministrator', '2018-07-23 11:10:28', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (91, '2018-07-23 10:04:45', 1, 'ModifierSuperAdministrator', '女', '1', 49, NULL, 'ModifierSuperAdministrator', '2018-07-23 11:10:28', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (96, '2018-07-23 15:36:43', 1, 'ModifierSuperAdministrator', '未启用', '0', 50, 1, 'SuperAdministrator', '2019-08-16 18:17:47', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (97, '2018-07-23 15:36:43', 1, 'ModifierSuperAdministrator', '已启用', '1', 50, 1, 'SuperAdministrator', '2019-08-16 18:17:47', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (98, '2018-07-23 15:36:43', 1, 'ModifierSuperAdministrator', '已Del', '2', 50, 1, 'SuperAdministrator', '2019-08-16 18:17:47', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (128, '2018-08-29 15:54:21', 1, 'ModifierSuperAdministrator', '是', '1', 59, 0, 'SuperAdministrator', '2020-11-20 23:05:48', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (129, '2018-08-29 15:54:21', 1, 'ModifierSuperAdministrator', '否', '0', 59, 1, 'SuperAdministrator', '2020-11-20 23:05:48', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (144, '2019-08-21 16:40:50', 1, 'SuperAdministrator', '刷新Token', 'ReplaceToeken', 31, NULL, 'SuperAdministrator', '2022-04-04 13:21:55', 1, 110, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (145, '2019-08-21 16:49:43', 1, 'SuperAdministrator', 'Info', '3', 30, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (149, '2019-09-18 19:25:47', 1, 'SuperAdministrator', 'Delivery', '1', 64, 1, 'SuperAdministrator', '2019-11-01 10:04:21', 1, NULL, 'fd');
INSERT INTO "public"."Sys_DictionaryList" VALUES (150, '2019-09-18 19:25:47', 1, 'SuperAdministrator', 'Return', '2', 64, 0, 'SuperAdministrator', '2019-11-01 10:04:21', 1, NULL, 'fs');
INSERT INTO "public"."Sys_DictionaryList" VALUES (151, '2019-09-18 19:25:47', 1, 'SuperAdministrator', 'ReturnOrder', '3', 64, 1, 'SuperAdministrator', '2019-11-01 10:04:21', 1, NULL, 'xx');
INSERT INTO "public"."Sys_DictionaryList" VALUES (152, '2019-09-19 10:07:23', 1, 'SuperAdministrator', '家居', '4', 65, 1, 'SuperAdministrator', '2020-02-07 17:57:12', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (153, '2019-09-19 10:07:23', 1, 'SuperAdministrator', '男装', '3', 65, 1, 'SuperAdministrator', '2020-02-07 17:57:12', 1, 4, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (154, '2019-09-19 10:07:23', 1, 'SuperAdministrator', '女装', '2', 65, 0, 'SuperAdministrator', '2020-02-07 17:57:12', 1, 6, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (155, '2019-09-19 10:07:23', 1, 'SuperAdministrator', '食品', '1', 65, 0, 'SuperAdministrator', '2020-02-07 17:57:12', 1, NULL, '数码相机,Single反相机');
INSERT INTO "public"."Sys_DictionaryList" VALUES (423, '2020-12-29 21:41:16', 1, 'SuperAdministrator', '是', '1', 67, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (424, '2020-12-29 21:41:16', 1, 'SuperAdministrator', '否', '0', 67, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (425, '2022-01-03 18:29:14', 1, 'SuperAdministrator', '非常满意', '非常满意', 68, 0, 'SuperAdministrator', '2022-01-03 18:37:53', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (426, '2022-01-03 18:29:14', 1, 'SuperAdministrator', '十分满意', '十分满意', 68, 0, 'SuperAdministrator', '2022-01-03 18:37:53', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (427, '2022-01-03 18:29:14', 1, 'SuperAdministrator', '相当满意', '相当满意', 68, 0, 'SuperAdministrator', '2022-01-03 18:37:53', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (428, '2022-01-03 18:37:40', 1, 'SuperAdministrator', '比较满意', '比较满意', 68, 0, 'SuperAdministrator', '2022-01-03 18:37:53', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (429, '2022-01-03 19:14:33', 1, 'SuperAdministrator', '数码相机', '数码相机', 36, 0, 'SuperAdministrator', '2023-05-08 01:03:16', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (430, '2022-01-03 19:14:33', 1, 'SuperAdministrator', 'Single反相机', 'Single反相机', 36, 0, 'SuperAdministrator', '2023-05-08 01:03:16', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (431, '2022-01-03 19:14:33', 1, 'SuperAdministrator', '微Single相机', '微Single相机', 36, 0, 'SuperAdministrator', '2023-05-08 01:03:16', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (432, '2022-01-03 19:14:33', 1, 'SuperAdministrator', '运动相机', '运动相机', 36, 0, 'SuperAdministrator', '2023-05-08 01:03:16', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (435, '2022-08-29 02:59:52', 1, 'SuperAdministrator', '审核未通过', '3', 35, 0, 'SuperAdministrator', '2023-05-08 01:05:44', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (436, '2022-09-06 00:48:10', 1, 'SuperAdministrator', 'get', 'get', 70, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (437, '2022-09-06 00:48:10', 1, 'SuperAdministrator', 'post', 'post', 70, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (438, '2022-09-06 00:50:54', 1, 'SuperAdministrator', '正常', '0', 71, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (439, '2022-09-06 00:50:54', 1, 'SuperAdministrator', 'Pause', '1', 71, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (440, '2022-09-07 01:50:51', 1, 'SuperAdministrator', '20', '20', 37, 0, 'SuperAdministrator', '2023-05-13 10:49:00', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (441, '2022-09-07 01:50:51', 1, 'SuperAdministrator', '30', '30', 37, 0, 'SuperAdministrator', '2023-05-13 10:49:00', 1, NULL, NULL);
INSERT INTO "public"."Sys_DictionaryList" VALUES (442, '2023-05-08 01:05:44', 1, 'SuperAdministrator', '驳回', '4', 35, 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for Sys_Log
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_Log";
CREATE TABLE "public"."Sys_Log" (
                                    "Id" int4 NOT NULL,
                                    "BeginDate" timestamp(6),
                                    "BrowserType" varchar(200) COLLATE "pg_catalog"."default",
                                    "ElapsedTime" int4,
                                    "EndDate" timestamp(6),
                                    "ExceptionInfo" text COLLATE "pg_catalog"."default",
                                    "LogType" varchar(70) COLLATE "pg_catalog"."default",
                                    "RequestParameter" text COLLATE "pg_catalog"."default",
                                    "ResponseParameter" text COLLATE "pg_catalog"."default",
                                    "Role_Id" int4,
                                    "ServiceIP" varchar(100) COLLATE "pg_catalog"."default",
                                    "Success" int4,
                                    "Url" text COLLATE "pg_catalog"."default",
                                    "UserIP" varchar(100) COLLATE "pg_catalog"."default",
                                    "UserName" text COLLATE "pg_catalog"."default",
                                    "User_Id" int4
)
;

-- ----------------------------
-- Sequence structure for sys_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_log_id_seq";
CREATE SEQUENCE "public"."sys_log_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 200
CACHE 1;
ALTER TABLE "public"."Sys_Log" ALTER COLUMN "Id" SET DEFAULT nextval('sys_log_id_seq');

-- ----------------------------
-- Records of Sys_Log
-- ----------------------------
INSERT INTO "public"."Sys_Log" VALUES (1, '2023-05-13 18:21:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 264, '2023-05-13 18:21:42', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getTreeMenu', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (2, '2023-05-13 18:21:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 12, '2023-05-13 18:21:42', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_WorkFlow/getTableInfo', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (3, '2023-05-13 18:21:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 50, '2023-05-13 18:21:42', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (4, '2023-05-13 18:21:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 61, '2023-05-13 18:21:42', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/user/GetCurrentUserInfo', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (5, '2023-05-13 18:21:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 64, '2023-05-13 18:21:42', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_WorkFlow/getOptions', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (6, '2023-05-13 18:21:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 63, '2023-05-13 18:21:42', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_WorkFlow/getNodeDic', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (7, '2023-05-13 18:21:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, '2023-05-13 18:21:42', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/message/negotiate', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (8, '2023-05-13 18:21:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 39, '2023-05-13 18:21:42', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_WorkFlow/getFields', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (9, '2023-05-13 18:21:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, '2023-05-13 18:21:42', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (10, '2023-05-13 18:21:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, '2023-05-13 18:21:42', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_WorkFlow/getNodeDic', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (11, '2023-05-13 18:21:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 115, '2023-05-13 18:21:52', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/App_Appointment/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (12, '2023-05-13 18:22:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 7, '2023-05-13 18:22:58', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/App_Appointment/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (13, '2023-05-13 18:23:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 28, '2023-05-13 18:23:08', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/App_Expert/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (14, '2023-05-13 18:23:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 51, '2023-05-13 18:23:08', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (15, '2023-05-13 18:23:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, '2023-05-13 18:23:08', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_Expert/202305131057587764/wechat.jpg', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (16, '2023-05-13 18:23:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, '2023-05-13 18:23:08', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_Expert/202305131059245026/wechat.jpg', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (17, '2023-05-13 18:23:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, '2023-05-13 18:23:08', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_Expert/202305131100401781/wechat.jpg', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (18, '2023-05-13 18:23:29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 47, '2023-05-13 18:23:29', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getMenu', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (19, '2023-05-13 18:23:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 25, '2023-05-13 18:23:40', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getTreeItem', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (20, '2023-05-13 18:23:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 7, '2023-05-13 18:23:44', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getTreeItem', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (21, '2023-05-13 18:23:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, '2023-05-13 18:23:47', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getTreeItem', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (22, '2023-05-13 18:23:53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, '2023-05-13 18:23:53', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getTreeItem', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (23, '2023-05-13 18:23:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 154, '2023-05-13 18:23:56', NULL, 'Info', 'Table:.,DishSingle：UserManagement,Authority[{"text":"Query","value":"Search"}],SuccessfullySavedSuccessfully', NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/save', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (24, '2023-05-13 18:23:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 157, '2023-05-13 18:23:56', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/save', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (25, '2023-05-13 18:24:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, '2023-05-13 18:24:01', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getTreeItem', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (26, '2023-05-13 18:24:04', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 16, '2023-05-13 18:24:04', NULL, 'Info', 'Table:ProcessManagement,DishSingle：ProcessManagement,Authority[{"text":"Query","value":"Search"}],SuccessfullySavedSuccessfully', NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/save', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (27, '2023-05-13 18:24:04', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 16, '2023-05-13 18:24:04', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/save', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (28, '2023-05-13 18:21:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 142405, '2023-05-13 18:24:05', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/message', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (29, '2023-05-13 18:24:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 8, '2023-05-13 18:24:05', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getTreeMenu', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (30, '2023-05-13 18:24:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 6, '2023-05-13 18:24:05', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/user/GetCurrentUserInfo', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (31, '2023-05-13 18:24:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, '2023-05-13 18:24:05', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getMenu', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (32, '2023-05-13 18:24:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, '2023-05-13 18:24:05', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/message/negotiate', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (33, '2023-05-13 18:24:07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, '2023-05-13 18:24:07', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (34, '2023-05-13 18:24:07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 36, '2023-05-13 18:24:07', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Department/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (35, '2023-05-13 18:24:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, '2023-05-13 18:24:08', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (36, '2023-05-13 18:24:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 28, '2023-05-13 18:24:08', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_User/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (37, '2023-05-13 18:24:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, '2023-05-13 18:24:08', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/Sys_User/202305131010574561/wechat.jpg', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (38, '2023-05-13 18:24:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, '2023-05-13 18:24:08', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/Sys_User/202305131011047216/wechat.jpg', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (39, '2023-05-13 18:24:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 20, '2023-05-13 18:24:08', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/role/getUserChildRoles', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (40, '2023-05-13 18:24:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 33, '2023-05-13 18:24:08', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/role/getCurrentTreePermission', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (41, '2023-05-13 18:24:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, '2023-05-13 18:24:09', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (42, '2023-05-13 18:24:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 21, '2023-05-13 18:24:09', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Role/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (43, '2023-05-13 18:24:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 25460, '2023-05-13 18:24:31', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/message', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (44, '2023-05-13 18:24:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, '2023-05-13 18:24:31', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getTreeMenu', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (45, '2023-05-13 18:24:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, '2023-05-13 18:24:31', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/user/GetCurrentUserInfo', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (46, '2023-05-13 18:24:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, '2023-05-13 18:24:31', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (47, '2023-05-13 18:24:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 27, '2023-05-13 18:24:31', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Role/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (48, '2023-05-13 18:24:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:24:32', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/message/negotiate', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (49, '2023-05-13 18:24:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 10346, '2023-05-13 18:24:42', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/message', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (50, '2023-05-13 18:24:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, '2023-05-13 18:24:42', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getTreeMenu', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (51, '2023-05-13 18:24:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, '2023-05-13 18:24:42', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (52, '2023-05-13 18:24:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, '2023-05-13 18:24:42', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/user/GetCurrentUserInfo', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (53, '2023-05-13 18:24:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 6, '2023-05-13 18:24:42', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Role/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (54, '2023-05-13 18:24:43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, '2023-05-13 18:24:43', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/message/negotiate', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (55, '2023-05-13 18:24:43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 7146, '2023-05-13 18:24:50', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/message', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (56, '2023-05-13 18:24:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, '2023-05-13 18:24:50', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getTreeMenu', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (57, '2023-05-13 18:24:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, '2023-05-13 18:24:50', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (58, '2023-05-13 18:24:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, '2023-05-13 18:24:50', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/user/GetCurrentUserInfo', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (59, '2023-05-13 18:24:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, '2023-05-13 18:24:50', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Role/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (60, '2023-05-13 18:24:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:24:50', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/message/negotiate', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (61, '2023-05-13 18:24:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5671, '2023-05-13 18:24:56', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/message', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (62, '2023-05-13 18:24:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, '2023-05-13 18:24:56', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getTreeMenu', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (63, '2023-05-13 18:24:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, '2023-05-13 18:24:56', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (64, '2023-05-13 18:24:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, '2023-05-13 18:24:56', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/user/GetCurrentUserInfo', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (65, '2023-05-13 18:24:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, '2023-05-13 18:24:56', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Role/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (66, '2023-05-13 18:24:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:24:57', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/message/negotiate', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (67, '2023-05-13 18:24:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 15, '2023-05-13 18:24:58', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/role/getTreeTableChildrenData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (68, '2023-05-13 18:25:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, '2023-05-13 18:25:00', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/role/getTreeTableChildrenData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (69, '2023-05-13 18:25:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, '2023-05-13 18:25:27', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (70, '2023-05-13 18:25:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 12, '2023-05-13 18:25:27', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_WorkFlow/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (71, '2023-05-13 18:25:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, '2023-05-13 18:25:28', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (72, '2023-05-13 18:25:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 29, '2023-05-13 18:25:28', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_WorkFlowTable/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (73, '2023-05-13 18:25:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, '2023-05-13 18:25:28', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (74, '2023-05-13 18:25:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 19, '2023-05-13 18:25:40', NULL, 'Del', '["83005898-c7dc-4c3a-8519-69be2debe83d","98590873-049b-45c1-8f75-ff7ab22ae0dd","c46e07fc-6141-4de8-947c-85d312f1972f","ddd6ea0c-e3db-49ad-8dfe-bb995c23bcf3"]', 'Ok', 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_WorkFlowTable/del', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (75, '2023-05-13 18:25:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 19, '2023-05-13 18:25:40', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_WorkFlowTable/del', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (76, '2023-05-13 18:25:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, '2023-05-13 18:25:40', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_WorkFlowTable/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (77, '2023-05-13 18:25:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, '2023-05-13 18:25:42', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (78, '2023-05-13 18:25:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 43, '2023-05-13 18:25:42', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/SellOrder/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (79, '2023-05-13 18:25:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 43, '2023-05-13 18:25:42', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/SellOrder/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (80, '2023-05-13 18:25:43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, '2023-05-13 18:25:43', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (81, '2023-05-13 18:25:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 14, '2023-05-13 18:25:46', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/SellOrder/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (82, '2023-05-13 18:25:48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, '2023-05-13 18:25:48', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/SellOrder/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (83, '2023-05-13 18:25:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, '2023-05-13 18:25:50', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/SellOrder/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (84, '2023-05-13 18:25:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, '2023-05-13 18:25:51', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/SellOrder/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (85, '2023-05-13 18:25:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, '2023-05-13 18:25:52', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/SellOrder/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (86, '2023-05-13 18:25:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, '2023-05-13 18:25:52', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/SellOrder/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (87, '2023-05-13 18:25:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, '2023-05-13 18:25:52', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/SellOrder/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (88, '2023-05-13 18:25:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 14, '2023-05-13 18:25:56', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/SellOrder/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (89, '2023-05-13 18:25:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, '2023-05-13 18:25:57', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/SellOrder/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (90, '2023-05-13 18:26:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 11, '2023-05-13 18:26:00', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/SellOrder/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (91, '2023-05-13 18:26:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, '2023-05-13 18:26:01', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/SellOrder/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (92, '2023-05-13 18:26:06', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, '2023-05-13 18:26:06', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/App_Appointment/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (93, '2023-05-13 18:26:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, '2023-05-13 18:26:23', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getMenu', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (94, '2023-05-13 18:26:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, '2023-05-13 18:26:24', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (95, '2023-05-13 18:26:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 17, '2023-05-13 18:26:24', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (96, '2023-05-13 18:26:29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, '2023-05-13 18:26:29', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getTreeItem', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (97, '2023-05-13 18:26:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, '2023-05-13 18:26:32', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getTreeItem', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (98, '2023-05-13 18:26:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, '2023-05-13 18:26:33', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getTreeItem', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (99, '2023-05-13 18:26:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 40, '2023-05-13 18:26:49', NULL, 'Info', 'Table:.,DishSingle：MultiTab/MultiHeader,Authority[{"text":"Query","value":"Search"}],SuccessfullySavedSuccessfully', NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/save', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (100, '2023-05-13 18:26:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 40, '2023-05-13 18:26:49', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/save', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (101, '2023-05-13 18:27:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 10, '2023-05-13 18:27:01', NULL, 'Info', 'Table:.,DishSingle：MultiTab/MultiHeader,Authority[{"text":"Query","value":"Search"}],SuccessfullySavedSuccessfully', NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/save', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (102, '2023-05-13 18:27:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 10, '2023-05-13 18:27:01', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/save', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (103, '2023-05-13 18:24:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 125636, '2023-05-13 18:27:02', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/message', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (104, '2023-05-13 18:27:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, '2023-05-13 18:27:03', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getTreeMenu', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (105, '2023-05-13 18:27:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, '2023-05-13 18:27:03', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/user/GetCurrentUserInfo', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (106, '2023-05-13 18:27:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, '2023-05-13 18:27:03', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getMenu', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (107, '2023-05-13 18:27:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:27:03', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/message/negotiate', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (108, '2023-05-13 18:27:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, '2023-05-13 18:27:16', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getTreeItem', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (109, '2023-05-13 18:27:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 6, '2023-05-13 18:27:28', NULL, 'Info', 'Table:.,DishSingle：MultiTab,Authority[{"text":"Query","value":"Search"}],SuccessfullySavedSuccessfully', NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/save', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (110, '2023-05-13 18:27:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 6, '2023-05-13 18:27:28', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/save', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (111, '2023-05-13 18:27:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, '2023-05-13 18:27:32', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getTreeItem', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (112, '2023-05-13 18:27:48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 11, '2023-05-13 18:27:48', NULL, 'Info', 'Table:.,DishSingle：MultiHeader,Authority[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"}],SuccessfullySavedSuccessfully', NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/save', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (113, '2023-05-13 18:27:48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 11, '2023-05-13 18:27:48', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/save', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (114, '2023-05-13 18:27:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 45426, '2023-05-13 18:27:48', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/message', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (115, '2023-05-13 18:27:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, '2023-05-13 18:27:49', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getTreeMenu', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (116, '2023-05-13 18:27:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, '2023-05-13 18:27:49', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/user/GetCurrentUserInfo', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (117, '2023-05-13 18:27:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, '2023-05-13 18:27:49', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getMenu', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (118, '2023-05-13 18:27:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, '2023-05-13 18:27:49', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/message/negotiate', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (119, '2023-05-13 18:27:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, '2023-05-13 18:27:51', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/App_Appointment/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (120, '2023-05-13 18:27:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, '2023-05-13 18:27:51', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/App_Appointment/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (121, '2023-05-13 18:27:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 80827, '2023-05-13 18:29:10', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/message', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (122, '2023-05-13 18:29:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, '2023-05-13 18:29:10', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/menu/getTreeMenu', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (123, '2023-05-13 18:29:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, '2023-05-13 18:29:11', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/user/GetCurrentUserInfo', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (124, '2023-05-13 18:29:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, '2023-05-13 18:29:11', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/App_Appointment/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (125, '2023-05-13 18:29:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:29:11', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/message/negotiate', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (126, '2023-05-13 18:29:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, '2023-05-13 18:29:14', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (127, '2023-05-13 18:29:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 28, '2023-05-13 18:29:14', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/App_TransactionAvgPrice/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (128, '2023-05-13 18:29:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, '2023-05-13 18:29:15', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (129, '2023-05-13 18:29:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, '2023-05-13 18:29:15', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/App_Expert/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (130, '2023-05-13 18:29:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, '2023-05-13 18:29:15', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_Expert/202304051436032612/wechart.png', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (131, '2023-05-13 18:29:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:29:15', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_Expert/202304051203334519/nb.png', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (132, '2023-05-13 18:29:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:29:15', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_Expert/202304051526079577/gj.png', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (133, '2023-05-13 18:29:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:29:15', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_Expert/202103061750152777/head2.jpg', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (134, '2023-05-13 18:29:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, '2023-05-13 18:29:17', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (135, '2023-05-13 18:29:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 22, '2023-05-13 18:29:17', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/App_Transaction/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (136, '2023-05-13 18:29:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, '2023-05-13 18:29:18', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (137, '2023-05-13 18:29:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 21, '2023-05-13 18:29:18', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/App_News/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (138, '2023-05-13 18:29:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, '2023-05-13 18:29:18', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_News/201912231017475391/2222.jpg', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (139, '2023-05-13 18:29:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:29:18', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_News/201912231017475391/h51.jpg', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (140, '2023-05-13 18:29:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:29:18', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_News/201912231015164124/1.jpg', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (141, '2023-05-13 18:29:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:29:18', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_News/201912231017475391/h52.jpg', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (142, '2023-05-13 18:29:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:29:18', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_News/201912231015164124/03.jpg', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (143, '2023-05-13 18:29:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:29:18', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_News/201912231015164124/02.jpg', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (144, '2023-05-13 18:29:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:29:18', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_News/202204200018378581/img02.png', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (145, '2023-05-13 18:32:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 15, '2023-05-13 18:32:59', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/news/GetDemoPageList', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (146, '2023-05-13 18:32:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 45, '2023-05-13 18:32:59', '', 'ReplaceToeken', 'User1_SuperAdministrator,(tokenSuccessfulReplacement)', NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/User/replaceToken', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (147, '2023-05-13 18:32:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 45, '2023-05-13 18:32:59', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/User/replaceToken', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (148, '2023-05-13 18:32:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:32:59', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_News/202204201140571762/20-05.png', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (149, '2023-05-13 18:32:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:32:59', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_News/202303050006488340/wechat.jpg', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (150, '2023-05-13 18:32:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:32:59', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_News/202303050007001246/wechat.jpg', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (151, '2023-05-13 18:32:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:32:59', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_News/202211091118521029/2.png', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (152, '2023-05-13 18:32:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:32:59', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_News/202303050006251509/wechat.jpg', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (153, '2023-05-13 18:32:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:32:59', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_News/202303221505503684/wechat.jpg', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (154, '2023-05-13 18:33:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, '2023-05-13 18:33:02', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (155, '2023-05-13 18:33:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, '2023-05-13 18:33:02', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/App_News/getPageData', '127.0.0.1', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Log" VALUES (156, '2023-05-13 18:33:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:33:02', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_News/202211091118521029/2.png', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (157, '2023-05-13 18:33:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:33:02', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_News/202303221505503684/wechat.jpg', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (158, '2023-05-13 18:33:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:33:02', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_News/202303050006251509/wechat.jpg', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (159, '2023-05-13 18:33:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:33:02', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_News/202303050007001246/wechat.jpg', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (160, '2023-05-13 18:33:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:33:02', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_News/202204201140571762/20-05.png', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (161, '2023-05-13 18:33:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, '2023-05-13 18:33:02', NULL, 'System', NULL, NULL, 0, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/Upload/Tables/App_News/202303050006488340/wechat.jpg', '127.0.0.1', NULL, 0);
INSERT INTO "public"."Sys_Log" VALUES (162, '2023-05-13 18:33:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, '2023-05-13 18:33:03', NULL, 'System', NULL, NULL, 1, '127.0.0.1:9991', 3, 'http://127.0.0.1:9991/api/App_News/getPageData', '127.0.0.1', 'SuperAdministrator', 1);

-- ----------------------------
-- Table structure for Sys_Menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_Menu";
CREATE TABLE "public"."Sys_Menu" (
                                     "Menu_Id" int4 NOT NULL,
                                     "MenuName" varchar(70) COLLATE "pg_catalog"."default" NOT NULL,
                                     "Auth" text COLLATE "pg_catalog"."default",
                                     "Icon" varchar(70) COLLATE "pg_catalog"."default",
                                     "Description" varchar(200) COLLATE "pg_catalog"."default",
                                     "Enable" int2,
                                     "OrderNo" int4,
                                     "TableName" varchar(200) COLLATE "pg_catalog"."default",
                                     "ParentId" int4 NOT NULL,
                                     "Url" text COLLATE "pg_catalog"."default",
                                     "CreateDate" timestamp(6),
                                     "Creator" varchar(70) COLLATE "pg_catalog"."default",
                                     "ModifyDate" timestamp(6),
                                     "Modifier" varchar(70) COLLATE "pg_catalog"."default",
                                     "MenuType" int4
)
;

-- ----------------------------
-- Sequence structure for sys_menu_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_menu_id_seq";
CREATE SEQUENCE "public"."sys_menu_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 200
CACHE 1;
ALTER TABLE "public"."Sys_Menu" ALTER COLUMN "Menu_Id" SET DEFAULT nextval('sys_menu_id_seq');

-- ----------------------------
-- Records of Sys_Menu
-- ----------------------------
INSERT INTO "public"."Sys_Menu" VALUES (2, 'UserManagement', '[{"text":"Query","value":"Search"}]', 'el-icon-user', NULL, 1, 2400, '.', 0, NULL, '2017-08-28 12:21:13', '2017-08-28 11:12:45', '2023-05-13 18:23:56', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (3, 'RoleManagement', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"Export","value":"Export"}]', '', NULL, 1, 900, 'Sys_Role', 2, '/Sys_Role', '2017-09-12 16:20:02', '2017-08-28 14:19:13', '2023-05-08 02:10:41', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (5, 'LogManagement', '[{"text":"Query","value":"Search"}]', 'el-icon-date', NULL, 1, 1300, 'xxx', 0, '/', '2017-09-22 17:59:37', '2017-09-22 17:59:37', '2023-05-13 11:09:24', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (6, 'SystemLog', '[{"text":"Query","value":"Search"},{"text":"Del","value":"Delete"},{"text":"Export","value":"Export"}]', '', NULL, 1, 0, 'Sys_Log', 5, '/Sys_Log/Manager', '2017-09-22 18:00:25', '2017-09-22 18:0:25', '2019-08-14 16:20:35', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (8, 'Chart', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 10000, '/', 32, 'chart', NULL, NULL, '2020-04-05 21:20:29', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (9, 'UserManagement', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"导入","value":"Import"},{"text":"Export","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', '', NULL, 1, 2000, 'Sys_User', 2, '/Sys_User', NULL, NULL, '2023-05-08 02:11:52', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (13, 'Form+Chart', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"}]', '', NULL, 1, 800, '.', 55, '/multi3', '2017-08-28 14:22:08', 'null', '2023-05-13 11:15:48', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (25, 'OtherComponent', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 1100, '/', 29, '/form6', NULL, NULL, '2019-09-20 12:44:50', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (28, 'Basic可Edittable', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 1500, 'vtable', 33, 'table1', NULL, NULL, '2019-11-10 14:25:15', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (29, 'OtherComponent', '[{"text":"Query","value":"Search"}]', 'el-icon-monitor', NULL, 1, 1690, '/', 0, '', NULL, NULL, '2023-05-13 11:07:48', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (31, 'FormOneToManytable', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"导入","value":"Import"},{"text":"Export","value":"Export"}]', '', NULL, 1, 950, 'App_TransactionAvgPrice1', 55, '/multi1', NULL, NULL, '2019-11-08 17:06:27', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (32, 'Chart+form', '[{"text":"Query","value":"Search"}]', 'el-icon-full-screen', NULL, 1, 1720, '/', 0, '', NULL, NULL, '2023-05-13 11:06:37', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (33, 'tableComponent', '[{"text":"Query","value":"Search"}]', 'el-icon-mobile-phone', NULL, 1, 1710, 'tables', 0, '/', NULL, NULL, '2023-05-13 11:06:57', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (34, 'FormWithUploadDownload', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"导入","value":"Import"},{"text":"Export","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', '', NULL, 1, 0, 'FormWithUploadDownload', 84, '/formUpload', NULL, NULL, '2019-11-24 21:07:25', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (36, 'Chart+form', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 0, '/', 32, 'formChart', NULL, NULL, '2019-11-09 18:23:54', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (37, 'ImageUploadWithPreview ', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 800, 'ImageUploadWithPreview ', 84, '', NULL, NULL, '2019-11-24 08:24:40', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (40, 'apiLoadtableData', '[{"text":"Query","value":"Search"}]', 'ivu-icon ivu-icon-ios-add-circle', NULL, 1, 900, 'table2', 33, 'table2', NULL, NULL, '2019-11-10 14:25:09', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (42, 'DownloadUploadedFiles', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 0, 'DownloadUploadedFiles', 84, '', NULL, NULL, '2019-11-24 08:25:12', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (45, 'Dept_IdNode', '', '', NULL, 0, 0, '/', 0, NULL, NULL, NULL, '2020-05-05 13:20:14', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (48, 'SingleTableData', '[{"text":"Query","value":"Search"}]', 'el-icon-news', NULL, 1, 2000, 'Table+FormData', 0, '/', '2019-07-12 13:26:32', 'SuperAdministrator', '2023-05-13 11:05:00', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (49, 'ReadOnlyPage', '[{"text":"Query","value":"Search"},{"text":"导入","value":"Import"},{"text":"Export","value":"Export"},{"text":"test","value":"test"}]', 'el-icon-postcard', NULL, 1, 1000, 'App_Appointment', 48, '/App_Appointment', '2019-07-12 13:28:17', 'SuperAdministrator', '2023-05-13 11:17:30', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (50, 'AutomaticDataSource', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"导入","value":"Import"},{"text":"Export","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', '', NULL, 1, 900, 'App_TransactionAvgPrice', 48, '/App_TransactionAvgPrice', '2019-07-12 13:53:32', 'SuperAdministrator', '2023-05-13 11:10:03', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (51, 'CustomExtensionOneToMany', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"Export","value":"Export"}]', '', NULL, 1, 800, 'App_ReportPrice', 74, '/App_ReportPrice', '2019-07-12 13:55:21', 'SuperAdministrator', '2022-08-22 01:02:59', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (52, 'ImportExportForm', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"导入","value":"Import"},{"text":"Export","value":"Export"}]', '', NULL, 1, 600, 'App_Transaction', 48, '/App_Transaction', '2019-07-12 13:56:15', 'SuperAdministrator', '2023-05-13 11:16:49', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (53, 'MixFormOneToMany', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"导入","value":"Import"},{"text":"Export","value":"Export"}]', '', NULL, 1, 900, 'App_ReportPrice', 55, '/multi2', '2019-07-12 13:57:05', 'SuperAdministrator', '2019-11-08 19:03:20', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (55, 'FormOneToMany', '[{"text":"Query","value":"Search"}]', 'el-icon-c-scale-to-original', NULL, 1, 1740, '/', 0, NULL, '2019-07-12 13:58:34', 'SuperAdministrator', '2023-05-13 11:06:07', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (56, 'FormLayout', '[{"text":"Query","value":"Search"}]', 'el-icon-mouse', NULL, 1, 1750, '/', 0, NULL, '2019-07-12 14:00:19', 'SuperAdministrator', '2023-05-13 11:35:04', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (57, 'ListListList', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 1000, '.', 56, '/form1', '2019-07-12 14:01:12', 'SuperAdministrator', '2020-04-05 21:11:52', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (58, 'TwoLists', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 900, 'TwoLists', 56, '/form2', '2019-07-12 14:01:43', 'SuperAdministrator', '2019-09-20 13:59:03', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (59, 'MultiList', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"导入","value":"Import"},{"text":"Export","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', '', NULL, 1, 800, 'MultiList', 56, '/form3', '2019-07-12 14:02:17', 'SuperAdministrator', '2020-04-07 21:48:04', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (60, 'Table+form', '[{"text":"Query","value":"Search"}]', 'el-icon-mouse', NULL, 1, 700, 'Table+form', 56, '/form4', '2019-07-12 14:03:14', 'SuperAdministrator', '2023-05-13 11:34:48', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (61, 'SystemSetUp', '[{"text":"Query","value":"Search"}]', 'el-icon-setting', NULL, 1, 1000, 'SystemSetUp', 0, '/', '2019-07-12 14:04:04', 'SuperAdministrator', '2023-05-13 11:09:04', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (62, 'DishSingleSetUp', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 10, 'Sys_Menu', 61, '/sysmenu', '2019-07-12 14:04:35', 'SuperAdministrator', '2019-10-24 12:00:39', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (106, 'FormDesign', '[{"text":"Query","value":"Search"}]', 'el-icon-postcard', NULL, 1, 3000, '.', 0, '', '2021-08-28 00:39:04', 'SuperAdministrator', '2023-05-13 11:04:28', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (63, 'Drop-down box binding settings', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"Export","value":"Export"}]', '', NULL, 1, 10, 'Sys_Dictionary', 61, '/Sys_Dictionary', '2019-07-12 14:05:58', 'SuperAdministrator', '2019-08-16 17:41:15', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (64, 'CodeGeneration', '[{"text":"Query","value":"Search"}]', 'el-icon-edit', NULL, 1, 1500, 'CodeGeneration', 0, '/coding', '2019-07-12 14:07:55', 'SuperAdministrator', '2023-05-13 11:08:43', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (65, 'CodeGeneration', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"}]', '', NULL, 1, 10, '/', 64, '/coder', '2019-07-12 14:08:58', 'SuperAdministrator', '2022-01-03 19:01:21', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (66, 'EditDeviceWithHTML', '[{"text":"Query","value":"Search"}]', 'el-icon-document-copy', NULL, 1, 1520, 'StaticPagePublishing', 0, '/', '2019-07-12 14:12:38', 'SuperAdministrator', '2023-05-13 11:08:56', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (67, 'StaticPagePublishing', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"Export","value":"Export"}]', '', NULL, 1, 0, 'App_News', 66, '/App_News', '2019-07-12 14:14:16', 'SuperAdministrator', '2019-12-22 14:46:39', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (68, 'ImageUpload', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"Export","value":"Export"},{"text":"审核","value":"Audit"}]', '', NULL, 1, 700, 'App_Expert', 48, '/App_Expert', '2019-07-12 14:24:15', 'SuperAdministrator', '2023-05-13 11:10:17', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (71, 'RightsManagement', '[{"text":"Query","value":"Search"},{"text":"Edit","value":"Update"}]', 'ivu-icon ivu-icon-ios-boat', NULL, 1, 1000, ',', 2, '/permission', '2019-08-10 10:25:36', 'SuperAdministrator', '2023-05-08 02:11:07', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (72, 'Mobile H5 development', '[{"text":"Query","value":"Search"}]', 'el-icon-mobile', NULL, 1, 1650, '/', 0, '', '2019-08-14 13:16:06', 'SuperAdministrator', '2023-05-13 11:07:59', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (73, 'Introduction to mobile H5 development and packaging', '[{"text":"Query","value":"Search"}]', '', NULL, 1, NULL, '/', 72, '/app/guide', '2019-08-14 13:16:55', 'SuperAdministrator', NULL, NULL, NULL);
INSERT INTO "public"."Sys_Menu" VALUES (74, 'OneToOneMultiple', '[{"text":"Query","value":"Search"}]', 'el-icon-copy-document', NULL, 1, 1770, '/', 0, '/', '2019-08-22 17:43:58', 'SuperAdministrator', '2023-05-13 11:05:18', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (75, 'MasterSlaveOneToOne', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"导入","value":"Import"},{"text":"Export","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', '', NULL, 1, 1000, 'SellOrder', 74, '/SellOrder', '2019-08-22 18:12:43', 'SuperAdministrator', '2021-03-14 22:21:07', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (77, 'FormReadOnly', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 600, 'FormReadOnly', 56, '/form7', '2019-08-26 11:58:55', 'SuperAdministrator', '2019-09-20 13:59:13', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (84, 'FileUpload', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"导入","value":"Import"},{"text":"Export","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', 'el-icon-document', NULL, 1, 1700, 'FileUpload', 0, '/', '2019-11-11 12:59:03', 'SuperAdministrator', '2023-05-13 11:07:16', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (85, 'BasicFileUpload', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 1000, 'BasicFileUpload', 84, '/volUploadExample', '2019-11-20 18:03:07', 'SuperAdministrator', '2019-12-17 11:18:34', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (86, 'BackgroundVerification', '[{"text":"Query","value":"Search"}]', 'el-icon-connection', NULL, 1, 1700, '/', 0, '', '2019-11-22 11:17:22', 'SuperAdministrator', '2023-05-13 11:07:31', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (87, 'KindEditorEditDevice', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 1000, 'KindEditorEditDevice', 66, '/kindEditor', '2019-12-19 11:37:31', 'SuperAdministrator', '2019-12-23 10:01:38', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (88, 'StaticPageList', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 900, 'htmlList', 66, '/htmlList', '2019-12-22 14:31:22', 'SuperAdministrator', '2019-12-23 10:01:43', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (89, 'BackgroundParameterVerification', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 1700, '.', 86, '/validator', '2020-02-02 17:00:05', 'SuperAdministrator', '2020-02-02 17:00:49', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (90, 'FromTheTableImageUpload', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"Export","value":"Export"}]', '', NULL, 1, 0, 'vSellOrderImg', 74, '/vSellOrderImg', '2020-04-07 20:41:34', 'SuperAdministrator', '2022-05-23 21:14:41', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (91, 'DigitalTypesetting', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 0, 'DigitalTypesetting', 32, '/flex', '2020-04-07 21:51:38', 'SuperAdministrator', '2019-11-09 18:23:53', NULL, NULL);
INSERT INTO "public"."Sys_Menu" VALUES (92, 'TreeShapedVegetablesSingle', '[{"text":"Query","value":"Search"}]', 'el-icon-bank-card', NULL, 1, 1705, 'TreeShapedVegetablesSingleWithTable', 0, '', '2020-04-26 14:19:01', 'SuperAdministrator', '2023-05-13 11:07:07', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (93, 'treeWithCodeGenerationPage', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"}]', '', NULL, 1, 1000, 'treeWithCodeGenerationPage', 92, 'treetable1', '2020-04-26 14:20:36', 'SuperAdministrator', '2020-04-26 14:19:51', NULL, NULL);
INSERT INTO "public"."Sys_Menu" VALUES (94, 'treeWithCustomizetable', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 0, 'treetable2', 92, '/treetable2', '2020-04-26 18:12:46', 'SuperAdministrator', '2020-04-26 14:19:51', NULL, NULL);
INSERT INTO "public"."Sys_Menu" VALUES (96, 'DefaultEditDevice', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"导入","value":"Import"},{"text":"Export","value":"Export"},{"text":"上传","value":"Upload"}]', '', NULL, 1, 0, 'App_NewsEditor', 48, '/App_NewsEditor', '2021-01-16 10:57:44', 'SuperAdministrator', '2019-11-17 19:10:37', NULL, NULL);
INSERT INTO "public"."Sys_Menu" VALUES (97, 'MultiColumnCombinedDisplay', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"}]', '', NULL, 1, 0, 'App_Expert2', 48, '/App_Expert2', '2021-03-06 15:51:14', 'SuperAdministrator', '2023-05-13 11:12:37', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (98, 'MasterSlaveOneToOneTwo', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"导入","value":"Import"},{"text":"Export","value":"Export"}]', '', NULL, 1, 990, 'SellOrder2', 74, '/SellOrder2', '2021-03-14 22:20:13', 'SuperAdministrator', '2021-03-14 22:21:13', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (99, 'MasterSlaveOneToMany', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"导入","value":"Import"},{"text":"Export","value":"Export"}]', '', NULL, 1, 980, 'SellOrder3', 74, '/SellOrder3', '2021-03-14 22:42:49', 'SuperAdministrator', '2021-03-14 22:21:13', NULL, NULL);
INSERT INTO "public"."Sys_Menu" VALUES (100, 'FormEdit', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"导入","value":"Import"},{"text":"Export","value":"Export"}]', '', NULL, 1, 0, 'App_Transaction2', 48, '/App_Transaction2', '2021-03-19 22:35:06', 'SuperAdministrator', '2019-10-31 10:09:00', NULL, NULL);
INSERT INTO "public"."Sys_Menu" VALUES (101, 'tableEdit(2)', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 0, 'table3', 33, '/table3', '2021-03-20 12:58:53', 'SuperAdministrator', '2019-11-10 14:25:09', NULL, NULL);
INSERT INTO "public"."Sys_Menu" VALUES (104, 'RoleManagement(tree)', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"}]', '', NULL, 0, 0, 'Sys_Role1', 2, '/Sys_Role1', '2021-05-02 13:41:35', 'SuperAdministrator', '2023-05-13 08:51:01', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (105, 'TreeCustomizeTableData', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 0, '/treetable2', 92, '/treetable2', '2021-05-02 15:06:12', 'SuperAdministrator', '2021-05-02 15:05:15', NULL, NULL);
INSERT INTO "public"."Sys_Menu" VALUES (107, 'FormDesign', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 100, '.', 106, '/formDraggable', '2021-08-28 00:40:00', 'SuperAdministrator', '2022-01-03 19:01:45', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (109, 'FormConfig', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"}]', '', NULL, 1, 0, 'FormDesignOptions', 106, '/FormDesignOptions', '2021-12-29 23:27:28', 'SuperAdministrator', '2022-01-03 19:03:58', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (110, 'DataCollection', '[{"text":"Query","value":"Search"},{"text":"Del","value":"Delete"},{"text":"Export","value":"Export"}]', '', NULL, 1, 0, '.', 106, '/formCollectionResultTree', '2021-12-29 23:28:44', 'SuperAdministrator', '2021-12-30 23:11:51', 'SuperAdministrator', NULL);
INSERT INTO "public"."Sys_Menu" VALUES (113, 'BasicPage', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 9000, '.', 0, '', '2022-03-26 00:58:41', 'SuperAdministrator', '2022-04-04 13:39:54', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Menu" VALUES (114, 'ReadOnlyPage', '', '', NULL, 1, 10, 'App_Appointment', 123, 'pages/order/App_Appointment/App_Appointment', '2022-03-26 00:59:36', 'SuperAdministrator', '2022-03-27 15:39:43', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Menu" VALUES (115, 'HorizontalDisplay', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 0, '.', 113, '/pages/order/App_Appointment1/App_Appointment1', '2022-03-26 01:00:38', 'SuperAdministrator', '2022-08-22 01:13:22', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Menu" VALUES (116, 'DataSourceBinding', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 8500, '.', 0, '', '2022-03-26 02:03:48', 'SuperAdministrator', '2022-04-04 13:39:50', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Menu" VALUES (117, 'DataSourceBinding', '', '', NULL, 1, 10, 'App_TransactionAvgPrice', 116, 'pages/appmanager/App_TransactionAvgPrice/App_TransactionAvgPrice', '2022-03-26 02:04:58', 'SuperAdministrator', '2022-03-27 15:38:12', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Menu" VALUES (118, 'EventFormat', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 8200, '.', 0, '', '2022-03-26 03:08:59', 'SuperAdministrator', '2022-04-04 13:40:01', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Menu" VALUES (119, 'EventBinding', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"导入","value":"Import"},{"text":"Export","value":"Export"}]', '', NULL, 1, 10, 'App_Transaction', 118, '/pages/appmanager/App_Transaction/App_Transaction', '2022-03-26 03:09:17', 'SuperAdministrator', '2023-05-13 11:16:37', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Menu" VALUES (120, 'Format', '', '', NULL, 1, 0, '.', 118, '/pages/appmanager/App_Transaction1/App_Transaction1', '2022-03-26 03:09:45', 'SuperAdministrator', '2022-03-27 15:38:50', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Menu" VALUES (121, 'MasterSlaveTablePage', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 8100, '.', 0, '', '2022-03-26 03:10:46', 'SuperAdministrator', '2023-05-13 13:54:32', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Menu" VALUES (122, 'MainTable1To1', '', '', NULL, 1, 0, 'SellOrder', 121, '/pages/order/SellOrder/SellOrder', '2022-03-26 03:11:13', 'SuperAdministrator', '2022-03-27 15:39:08', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Menu" VALUES (123, 'Formvol-form', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 8000, '.', 0, '', '2022-03-26 03:12:06', 'SuperAdministrator', '2022-08-16 00:56:15', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Menu" VALUES (124, 'FormConfig', '', '', NULL, 1, 10, '.', 123, '/pages/form/form2', '2022-03-26 03:12:39', 'SuperAdministrator', '2022-03-27 15:39:45', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Menu" VALUES (125, 'FormReadOnly', '', '', NULL, 1, 0, '.', 113, 'pages/form/form1', '2022-03-26 03:12:52', 'SuperAdministrator', '2022-03-27 15:38:00', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Menu" VALUES (126, 'Formvol-table', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 7900, '.', 0, '', '2022-03-26 03:13:22', 'SuperAdministrator', '2023-05-13 13:54:36', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Menu" VALUES (127, 'ListDisplaytable', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 0, '.', 126, 'pages/table/table2/table2', '2022-03-26 03:13:47', 'SuperAdministrator', '2022-08-16 00:56:12', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Menu" VALUES (128, 'TableDisplaytable', '', '', NULL, 1, 0, 'App_Expert', 126, '/pages/table/table1/table1', '2022-03-26 03:13:59', 'SuperAdministrator', '2022-03-27 15:40:01', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Menu" VALUES (129, 'CustomExtension', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 8050, '.', 0, '', '2022-03-26 03:16:13', 'SuperAdministrator', '2022-08-16 00:56:20', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Menu" VALUES (130, 'GeneratePageExtensionComponents', '', '', NULL, 1, 0, '.', 129, 'pages/pagedemo/pagedemo', '2022-03-26 03:16:51', 'SuperAdministrator', '2022-03-27 15:39:26', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Menu" VALUES (131, 'ManuallyBindData', '', '', NULL, 1, 0, '.', 126, 'pages/table/table3/table3', '2022-03-27 03:02:06', 'SuperAdministrator', '2022-03-27 15:40:03', 'SuperAdministrator', 1);
INSERT INTO "public"."Sys_Menu" VALUES (132, 'MessagePush', '[{"text":"Query","value":"Search"}]', 'el-icon-chat-line-round', NULL, 1, 1700, '.', 0, '/signalR', '2022-05-03 03:31:02', 'SuperAdministrator', '2022-05-03 03:31:20', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (133, 'ProcessManagement', '[{"text":"Query","value":"Search"}]', 'el-icon-mobile', NULL, 1, 2500, 'ProcessManagement', 0, '', '2022-07-25 00:39:22', 'SuperAdministrator', '2023-05-13 18:24:04', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (134, 'ProcessManagement', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"Export","value":"Export"}]', '', NULL, 1, 0, 'Sys_WorkFlow', 133, '/Sys_WorkFlow', '2022-07-25 00:39:56', 'SuperAdministrator', '2022-08-01 03:18:05', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (135, 'MyApproval', '[{"text":"Query","value":"Search"},{"text":"Del","value":"Delete"}]', '', NULL, 1, 0, 'Sys_WorkFlowTable', 133, '/Sys_WorkFlowTable', '2022-08-01 00:35:05', 'SuperAdministrator', '2022-08-16 01:00:46', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (136, 'InitiateProcess', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 0, 'InitiateProcess', 133, '/flowdemo', '2022-08-16 00:21:39', 'SuperAdministrator', '2022-08-16 00:21:46', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (137, 'ScheduledTasks', '[{"text":"Query","value":"Search"}]', 'el-icon-alarm-clock', NULL, 1, 1725, 'ScheduledTasks', 0, '', '2022-09-05 03:19:10', 'SuperAdministrator', '2022-08-01 00:33:46', NULL, 0);
INSERT INTO "public"."Sys_Menu" VALUES (138, 'TaskConfiguration', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"}]', '', NULL, 1, 0, 'Sys_QuartzOptions', 137, '/Sys_QuartzOptions', '2022-09-05 03:19:45', 'SuperAdministrator', '2022-08-01 00:33:46', NULL, 0);
INSERT INTO "public"."Sys_Menu" VALUES (139, 'ExecutionRecord', '[{"text":"Query","value":"Search"},{"text":"Del","value":"Delete"},{"text":"Export","value":"Export"}]', '', NULL, 1, 0, 'Sys_QuartzLog', 137, '/Sys_QuartzLog', '2022-09-05 03:20:06', 'SuperAdministrator', '2022-09-05 03:20:08', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (142, 'OrganizationalStructure', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"},{"text":"Export","value":"Export"}]', '', NULL, 1, 2500, 'Sys_Department', 2, '/Sys_Department', '2023-05-08 02:12:15', 'SuperAdministrator', '2023-05-08 02:12:43', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (143, 'MultiTab/MultiHeader', '[{"text":"Query","value":"Search"}]', 'el-icon-document', NULL, 1, 1760, '.', 0, '', '2023-05-13 18:26:49', 'SuperAdministrator', '2023-05-13 18:27:01', 'SuperAdministrator', 0);
INSERT INTO "public"."Sys_Menu" VALUES (144, 'MultiTab', '[{"text":"Query","value":"Search"}]', '', NULL, 1, 200, '.', 143, '/tabsTable', '2023-05-13 18:27:28', 'SuperAdministrator', '2023-05-13 18:27:01', NULL, 0);
INSERT INTO "public"."Sys_Menu" VALUES (145, 'MultiHeader', '[{"text":"Query","value":"Search"},{"text":"Add","value":"Add"},{"text":"Del","value":"Delete"},{"text":"Edit","value":"Update"}]', '', NULL, 1, 100, '.', 143, '/App_Appointment2', '2023-05-13 18:27:48', 'SuperAdministrator', '2023-05-13 18:27:01', NULL, 0);

-- ----------------------------
-- Table structure for Sys_QuartzLog
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_QuartzLog";
CREATE TABLE "public"."Sys_QuartzLog" (
                                          "LogId" uuid NOT NULL,
                                          "Id" uuid,
                                          "TaskName" text COLLATE "pg_catalog"."default",
                                          "ElapsedTime" int4,
                                          "StratDate" timestamp(6),
                                          "EndDate" timestamp(6),
                                          "Result" int4,
                                          "ResponseContent" text COLLATE "pg_catalog"."default",
                                          "ErrorMsg" text COLLATE "pg_catalog"."default",
                                          "CreateID" int4,
                                          "Creator" varchar(50) COLLATE "pg_catalog"."default",
                                          "CreateDate" timestamp(6),
                                          "ModifyID" int4,
                                          "Modifier" varchar(50) COLLATE "pg_catalog"."default",
                                          "ModifyDate" timestamp(6)
)
;
COMMENT ON COLUMN "public"."Sys_QuartzLog"."TaskName" IS 'TaskName';
COMMENT ON COLUMN "public"."Sys_QuartzLog"."ElapsedTime" IS 'ElapsedTime';
COMMENT ON COLUMN "public"."Sys_QuartzLog"."StratDate" IS 'StratDate';
COMMENT ON COLUMN "public"."Sys_QuartzLog"."EndDate" IS 'EndDate';
COMMENT ON COLUMN "public"."Sys_QuartzLog"."Result" IS 'Result';
COMMENT ON COLUMN "public"."Sys_QuartzLog"."ResponseContent" IS 'ResponseContent';


-- ----------------------------
-- Table structure for Sys_QuartzOptions
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_QuartzOptions";
CREATE TABLE "public"."Sys_QuartzOptions" (
                                              "Id" uuid NOT NULL,
                                              "TaskName" text COLLATE "pg_catalog"."default" NOT NULL,
                                              "GroupName" text COLLATE "pg_catalog"."default" NOT NULL,
                                              "CronExpression" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
                                              "Method" varchar(70) COLLATE "pg_catalog"."default",
                                              "ApiUrl" text COLLATE "pg_catalog"."default",
                                              "AuthKey" varchar(200) COLLATE "pg_catalog"."default",
                                              "AuthValue" varchar(200) COLLATE "pg_catalog"."default",
                                              "Describe" text COLLATE "pg_catalog"."default",
                                              "LastRunTime" timestamp(6),
                                              "Status" int4,
                                              "PostData" text COLLATE "pg_catalog"."default",
                                              "TimeOut" int4,
                                              "CreateID" int4,
                                              "Creator" varchar(50) COLLATE "pg_catalog"."default",
                                              "CreateDate" timestamp(6),
                                              "ModifyID" int4,
                                              "Modifier" varchar(50) COLLATE "pg_catalog"."default",
                                              "ModifyDate" timestamp(6)
)
;
COMMENT ON COLUMN "public"."Sys_QuartzOptions"."TaskName" IS 'TaskName';
COMMENT ON COLUMN "public"."Sys_QuartzOptions"."GroupName" IS 'GroupName';
COMMENT ON COLUMN "public"."Sys_QuartzOptions"."CronExpression" IS 'CronExpression';
COMMENT ON COLUMN "public"."Sys_QuartzOptions"."Method" IS 'Method';
COMMENT ON COLUMN "public"."Sys_QuartzOptions"."ApiUrl" IS 'ApiUrl';
COMMENT ON COLUMN "public"."Sys_QuartzOptions"."Describe" IS 'Describe';
COMMENT ON COLUMN "public"."Sys_QuartzOptions"."LastRunTime" IS 'LastRunTime';
COMMENT ON COLUMN "public"."Sys_QuartzOptions"."Status" IS 'Status';
COMMENT ON COLUMN "public"."Sys_QuartzOptions"."PostData" IS 'PostData';
COMMENT ON COLUMN "public"."Sys_QuartzOptions"."TimeOut" IS 'TimeOut';
COMMENT ON COLUMN "public"."Sys_QuartzOptions"."CreateDate" IS 'CreateDate';
COMMENT ON COLUMN "public"."Sys_QuartzOptions"."ModifyDate" IS 'ModifyDate';

-- ----------------------------
-- Records of Sys_QuartzOptions
-- ----------------------------
INSERT INTO "public"."Sys_QuartzOptions" VALUES ('7D223549-C8EE-461D-80A9-E4601EEB5C0A', 'Execute once in 1 second', 'Modifier', '* * * * * ?	', 'get', 'http://localhost:9991/api/Sys_QuartzOptions/test', NULL, NULL, NULL, '2023-05-13 11:35:22', 1, NULL, 180, 1, 'SuperAdministrator', '2022-09-07 01:45:04', NULL, NULL, NULL);


-- ----------------------------
-- Table structure for Sys_TableColumn
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_TableColumn";
CREATE TABLE "public"."Sys_TableColumn" (
                                            "ColumnId" int4 NOT NULL,
                                            "ApiInPut" int4,
                                            "ApiIsNull" int4,
                                            "ApiOutPut" int4,
                                            "ColSize" int4,
                                            "ColumnCnName" varchar(100) COLLATE "pg_catalog"."default",
                                            "ColumnName" varchar(100) COLLATE "pg_catalog"."default",
                                            "ColumnType" text COLLATE "pg_catalog"."default",
                                            "ColumnWidth" int4,
                                            "Columnformat" text COLLATE "pg_catalog"."default",
                                            "CreateDate" timestamp(6),
                                            "CreateID" int4,
                                            "Creator" varchar(200) COLLATE "pg_catalog"."default",
                                            "DropNo" varchar(70) COLLATE "pg_catalog"."default",
                                            "EditColNo" int4,
                                            "EditRowNo" int4,
                                            "EditType" varchar(200) COLLATE "pg_catalog"."default",
                                            "Enable" int4,
                                            "IsColumnData" int4,
                                            "IsDisplay" int4,
                                            "IsImage" int4,
                                            "IsKey" int4,
                                            "IsNull" int4,
                                            "IsReadDataset" int4,
                                            "Maxlength" int4,
                                            "Modifier" text COLLATE "pg_catalog"."default",
                                            "ModifyDate" timestamp(6),
                                            "ModifyID" int4,
                                            "OrderNo" int4,
                                            "Script" text COLLATE "pg_catalog"."default",
                                            "SearchColNo" int4,
                                            "SearchRowNo" int4,
                                            "SearchType" varchar(200) COLLATE "pg_catalog"."default",
                                            "Sortable" int4,
                                            "TableName" varchar(200) COLLATE "pg_catalog"."default",
                                            "Table_Id" int4
)
;

-- ----------------------------
-- Sequence structure for sys_tablecolumn_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_tablecolumn_id_seq";
CREATE SEQUENCE "public"."sys_tablecolumn_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1000
CACHE 1;
ALTER TABLE "public"."Sys_TableColumn" ALTER COLUMN "ColumnId" SET DEFAULT nextval('sys_tablecolumn_id_seq');

-- ----------------------------
-- Records of Sys_TableColumn
-- ----------------------------
INSERT INTO "public"."Sys_TableColumn" VALUES (20, NULL, NULL, NULL, NULL, 'Role_Id', 'Role_Id', 'int', 70, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, NULL, '', NULL, 1, 1, NULL, 1, 0, 1, 4, 'SuperAdministrator', '2023-02-03 17:22:23', 1, 1420, '', NULL, NULL, '', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (21, NULL, NULL, NULL, NULL, 'ParentId', 'ParentId', 'int', 70, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, 1, '', NULL, 1, 1, NULL, 0, 0, 0, 4, 'SuperAdministrator', '2023-02-03 17:22:23', 1, 1410, '', NULL, NULL, '', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (22, NULL, NULL, NULL, NULL, 'RoleName', 'RoleName', 'string', 90, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, 1, '', NULL, 1, 1, NULL, 0, 0, 0, 100, 'SuperAdministrator', '2023-02-03 17:22:23', 1, 1400, '', NULL, 1, 'text', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (23, NULL, NULL, NULL, NULL, 'Dept_Id', 'Dept_Id', 'int', 90, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-02-03 17:22:23', 1, 1390, '', NULL, NULL, '', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (24, NULL, NULL, NULL, NULL, 'DeptName', 'DeptName', 'string', 90, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, 2, '', NULL, 1, 1, NULL, 0, 1, 0, 100, 'SuperAdministrator', '2023-02-03 17:22:23', 1, 1380, '', NULL, 1, 'text', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (25, NULL, NULL, NULL, NULL, 'OrderNo', 'OrderNo', 'int', 90, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-02-03 17:22:23', 1, 1370, '', NULL, NULL, '', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (26, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 130, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, 4, '', NULL, 1, 1, NULL, 0, 1, 1, 100, 'SuperAdministrator', '2023-02-03 17:22:23', 1, 1360, '', NULL, NULL, '', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (27, NULL, NULL, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 90, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, 4, 'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, 'SuperAdministrator', '2023-02-03 17:22:23', 1, 1350, '', NULL, 2, 'datetime', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (28, NULL, NULL, NULL, NULL, 'Modifier', 'Modifier', 'string', 130, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, 5, '', NULL, 1, 1, NULL, 0, 1, 1, 100, 'SuperAdministrator', '2023-02-03 17:22:23', 1, 1340, '', NULL, NULL, '', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (29, NULL, NULL, NULL, NULL, 'ModifyDate', 'ModifyDate', 'DateTime', 90, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, 5, '', NULL, 1, 1, NULL, 0, 1, 1, 8, 'SuperAdministrator', '2023-02-03 17:22:23', 1, 1330, '', NULL, 2, 'datetime', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (30, NULL, NULL, NULL, NULL, '', 'DeleteBy', 'string', 90, '', '2018-06-04 10:14:21', NULL, NULL, '', NULL, NULL, '', NULL, 0, 0, NULL, 0, 1, 0, 100, 'SuperAdministrator', '2023-02-03 17:22:23', 1, 1320, '', NULL, NULL, '', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (31, NULL, NULL, NULL, NULL, 'Enable', 'Enable', 'byte', 90, '', '2018-06-04 10:14:21', NULL, NULL, 'enable', NULL, 2, 'switch', NULL, 1, 1, NULL, 0, 1, 0, 1, 'SuperAdministrator', '2023-02-03 17:22:23', 1, 1375, '', NULL, 1, 'select', 0, 'Sys_Role', 2);
INSERT INTO "public"."Sys_TableColumn" VALUES (32, NULL, NULL, NULL, NULL, 'Dic_ID', 'Dic_ID', 'int', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, 'SuperAdministrator', '2022-07-18 01:41:34', 1, 1300, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (33, NULL, NULL, NULL, NULL, 'DicName', 'DicName', 'string', 140, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, 'SuperAdministrator', '2022-07-18 01:41:34', 1, 1290, NULL, NULL, 1, 'textarea', 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (34, NULL, NULL, NULL, NULL, 'ParentId', 'ParentId', 'int', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, 'SuperAdministrator', '2022-07-18 01:41:34', 1, 1280, NULL, NULL, 1, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (35, NULL, NULL, NULL, NULL, 'Config', 'Config', 'string', 300, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8000, 'SuperAdministrator', '2022-07-18 01:41:34', 1, 1270, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (36, NULL, NULL, NULL, 8, 'DbSql', 'DbSql', 'string', 200, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 6, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 8000, 'SuperAdministrator', '2022-07-18 01:41:34', 1, 1260, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (37, NULL, NULL, NULL, NULL, 'DBServer', 'DBServer', 'string', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8000, 'SuperAdministrator', '2022-07-18 01:41:34', 1, 1250, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (38, NULL, NULL, NULL, NULL, 'OrderNo', 'OrderNo', 'int', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2022-07-18 01:41:34', 1, 1240, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (39, NULL, NULL, NULL, NULL, 'DicNo', 'DicNo', 'string', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, 'SuperAdministrator', '2022-07-18 01:41:34', 1, 1295, NULL, NULL, 1, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (40, NULL, NULL, NULL, NULL, 'Remark', 'Remark', 'string', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 6, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 4000, 'SuperAdministrator', '2022-07-18 01:41:34', 1, 1220, NULL, NULL, NULL, 'None', 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (41, NULL, NULL, NULL, NULL, 'Enable', 'Enable', 'byte', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, 'enable', NULL, 2, 'select', NULL, 1, 1, NULL, 0, 0, 0, 1, 'SuperAdministrator', '2022-07-18 01:41:34', 1, 1210, NULL, NULL, 2, 'select', 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (42, NULL, NULL, NULL, NULL, NULL, 'CreateID', 'int', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2022-07-18 01:41:34', 1, 1200, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (43, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 130, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 60, 'SuperAdministrator', '2022-07-18 01:41:34', 1, 1190, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (44, NULL, NULL, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 150, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 2, 'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, 'SuperAdministrator', '2022-07-18 01:41:34', 1, 1180, NULL, NULL, 2, 'datetime', 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (45, NULL, NULL, NULL, NULL, NULL, 'ModifyID', 'int', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2022-07-18 01:41:34', 1, 1170, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (46, NULL, NULL, NULL, NULL, 'Modifier', 'Modifier', 'string', 130, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 60, 'SuperAdministrator', '2022-07-18 01:41:34', 1, 1160, NULL, NULL, NULL, NULL, 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (47, NULL, NULL, NULL, NULL, 'ModifyDate', 'ModifyDate', 'DateTime', 150, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, 'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, 'SuperAdministrator', '2022-07-18 01:41:34', 1, 1150, NULL, NULL, 2, 'datetime', 0, 'Sys_Dictionary', 3);
INSERT INTO "public"."Sys_TableColumn" VALUES (48, NULL, NULL, NULL, NULL, '', 'DicList_ID', 'int', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 1, 0, 1, 4, 'SuperAdministrator', '2022-06-27 00:37:25', 1, 1140, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (49, NULL, NULL, NULL, NULL, 'Dic_ID', 'Dic_ID', 'int', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, 0, '', NULL, 1, 1, NULL, 0, 1, 1, 4, 'SuperAdministrator', '2022-06-27 00:37:25', 1, 1130, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (50, NULL, NULL, NULL, NULL, 'DicValue', 'DicValue', 'string', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, 1, 'text', NULL, 1, 1, NULL, 0, 1, 0, 100, 'SuperAdministrator', '2022-06-27 00:37:25', 1, 1120, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (51, NULL, NULL, NULL, NULL, 'DicName', 'DicName', 'string', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, 1, 'text', NULL, 1, 1, NULL, 0, 1, 0, 100, 'SuperAdministrator', '2022-06-27 00:37:25', 1, 1110, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (52, NULL, NULL, NULL, NULL, 'OrderNo', 'OrderNo', 'int', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, 1, 'text', NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2022-06-27 00:37:25', 1, 1100, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (53, NULL, NULL, NULL, NULL, 'Remark', 'Remark', 'string', 90, '', '2018-06-06 14:12:18', NULL, NULL, 'pz', NULL, 1, 'selectList', NULL, 1, 1, NULL, 0, 1, 0, 2000, 'SuperAdministrator', '2022-06-27 00:37:25', 1, 1090, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (54, NULL, NULL, NULL, NULL, 'Enable', 'Enable', 'byte', 90, '', '2018-06-06 14:12:18', NULL, NULL, 'enable', NULL, 1, 'switch', NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2022-06-27 00:37:25', 1, 1080, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (55, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, NULL, 'None', NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2022-06-27 00:37:25', 1, 1070, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (56, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 130, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, NULL, '', NULL, 1, 1, NULL, 0, 1, 1, 30, 'SuperAdministrator', '2022-06-27 00:37:25', 1, 1060, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (57, NULL, NULL, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, NULL, '', NULL, 1, 1, NULL, 0, 1, 1, 8, 'SuperAdministrator', '2022-06-27 00:37:25', 1, 1050, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (58, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2022-06-27 00:37:25', 1, 1040, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (59, NULL, NULL, NULL, NULL, 'Modifier', 'Modifier', 'string', 130, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, NULL, '', NULL, 1, 1, NULL, 0, 1, 0, 30, 'SuperAdministrator', '2022-06-27 00:37:25', 1, 1030, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (60, NULL, NULL, NULL, NULL, 'ModifyDate', 'ModifyDate', 'DateTime', 90, '', '2018-06-06 14:12:18', NULL, NULL, '', NULL, NULL, '', NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2022-06-27 00:37:25', 1, 1020, '', NULL, NULL, '', 0, 'Sys_DictionaryList', 4);
INSERT INTO "public"."Sys_TableColumn" VALUES (61, NULL, NULL, NULL, NULL, NULL, 'Id', 'int', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, 'SuperAdministrator', '2022-07-18 01:41:18', 1, 10000, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (62, NULL, NULL, NULL, 12, 'LogType', 'LogType', 'string', 80, NULL, '2018-06-11 18:22:16', NULL, NULL, 'log', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, 'SuperAdministrator', '2022-07-18 01:41:18', 1, 8888, NULL, NULL, 3, 'checkbox', 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (63, NULL, NULL, NULL, NULL, 'RequestParameter', 'RequestParameter', 'string', 70, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20000, 'SuperAdministrator', '2022-07-18 01:41:18', 1, 7990, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (64, NULL, NULL, NULL, NULL, 'ResponseParameter', 'ResponseParameter', 'string', 70, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20000, 'SuperAdministrator', '2022-07-18 01:41:18', 1, 7980, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (65, NULL, NULL, NULL, NULL, 'ExceptionInfo', 'ExceptionInfo', 'string', 70, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20000, 'SuperAdministrator', '2022-07-18 01:41:18', 1, 7970, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (66, NULL, NULL, NULL, NULL, 'Success', 'Success', 'int', 80, NULL, '2018-06-11 18:22:16', NULL, NULL, 'restatus', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2022-07-18 01:41:18', 1, 8700, NULL, NULL, 2, 'selectList', 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (67, NULL, NULL, NULL, NULL, 'StratDate', 'BeginDate', 'DateTime', 140, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2022-07-18 01:41:18', 1, 9999, NULL, NULL, 2, 'datetime', 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (68, NULL, NULL, NULL, NULL, 'EndDate', 'EndDate', 'DateTime', 150, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2022-07-18 01:41:18', 1, 880, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (69, NULL, NULL, NULL, NULL, 'ElapsedTime', 'ElapsedTime', 'int', 60, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2022-07-18 01:41:18', 1, 8600, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (70, NULL, NULL, NULL, NULL, 'UserIP', 'UserIP', 'string', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, 'SuperAdministrator', '2022-07-18 01:41:18', 1, 7920, NULL, NULL, 1, 'text', 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (71, NULL, NULL, NULL, NULL, 'ServiceIP', 'ServiceIP', 'string', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 200, 'SuperAdministrator', '2022-07-18 01:41:18', 1, 7910, NULL, NULL, 1, 'text', 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (72, NULL, NULL, NULL, NULL, 'BrowserType', 'BrowserType', 'string', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 400, 'SuperAdministrator', '2022-07-18 01:41:18', 1, 7900, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (73, NULL, NULL, NULL, NULL, 'Url', 'Url', 'string', 110, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8000, 'SuperAdministrator', '2022-07-18 01:41:18', 1, 9000, NULL, NULL, 1, 'text', 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (74, NULL, NULL, NULL, NULL, 'User_Id', 'User_Id', 'int', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2022-07-18 01:41:18', 1, 7880, NULL, NULL, NULL, 'text', 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (75, NULL, NULL, NULL, NULL, 'UserName', 'UserName', 'string', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8000, 'SuperAdministrator', '2022-07-18 01:41:18', 1, 9100, NULL, NULL, NULL, NULL, 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (76, NULL, NULL, NULL, NULL, 'Role_Id', 'Role_Id', 'int', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, 'roles', NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2022-07-18 01:41:18', 1, 7860, NULL, NULL, 2, 'select', 0, 'Sys_Log', 5);
INSERT INTO "public"."Sys_TableColumn" VALUES (77, NULL, NULL, NULL, NULL, '', 'User_Id', 'int', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 1, 0, 1, 4, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 8000, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (78, NULL, NULL, NULL, NULL, 'Dept_Id', 'Dept_Id', 'int', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7840, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (79, 0, NULL, 1, NULL, 'Dept_Id', 'DeptName', 'string', 150, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, 0, 'text', NULL, 1, 0, NULL, 0, 1, 0, 150, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7830, '', NULL, 2, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (80, 0, 0, 1, NULL, 'Role_Id', 'Role_Id', 'int', 130, '', '2018-06-14 16:44:15', NULL, NULL, 'tree_roles', NULL, 5, 'cascader', NULL, 1, 1, NULL, 0, 0, 0, 4, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7820, '', NULL, 2, 'select', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (81, NULL, NULL, NULL, NULL, 'Dept_Id', 'RoleName', 'string', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, 0, '', NULL, 1, 0, NULL, 0, 1, 0, 200, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7810, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (82, 1, 0, 1, NULL, 'UserName', 'UserName', 'string', 120, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, 1, '', NULL, 1, 1, NULL, 0, 0, 1, 100, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7945, '', NULL, 1, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (83, 1, 0, NULL, NULL, 'UserPwd', 'UserPwd', 'string', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 0, 0, NULL, 0, 1, 0, 200, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7790, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (84, NULL, NULL, NULL, NULL, 'UserTrueName', 'UserTrueName', 'string', 120, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, 2, 'text', NULL, 1, 1, NULL, 0, 0, 0, 20, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7944, '', NULL, 1, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (85, NULL, NULL, NULL, NULL, 'Address', 'Address', 'string', 190, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, 0, 'text', NULL, 1, 0, NULL, 0, 1, 0, 200, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7270, '', NULL, 4, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (86, NULL, NULL, NULL, NULL, 'Mobile', 'Mobile', 'string', 140, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, 0, 'text', NULL, 1, 0, NULL, 0, 1, 0, 100, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7260, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (87, NULL, NULL, NULL, NULL, 'Email', 'Email', 'string', 140, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, 0, 'mail', NULL, 1, 0, NULL, 0, 1, 0, 100, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7250, '', NULL, 4, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (88, NULL, NULL, NULL, NULL, '', 'Tel', 'string', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 20, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7740, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (89, NULL, NULL, NULL, 12, 'Remark', 'Remark', 'string', 180, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, 13, 'textarea', NULL, 1, 0, NULL, 0, 1, 0, 200, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7230, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (90, NULL, NULL, NULL, NULL, 'OrderNo', 'OrderNo', 'int', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, 0, 'text', NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7220, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (91, NULL, NULL, NULL, NULL, 'Enable', 'Enable', 'byte', 90, '', '2018-06-14 16:44:15', NULL, NULL, 'enable', NULL, 10, 'select', NULL, 1, 1, NULL, 0, 0, 0, 1, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7670, '', NULL, 4, 'select', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (92, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7700, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (93, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 130, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 1, NULL, 0, 1, 1, 200, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7690, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (94, NULL, NULL, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 150, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 1, NULL, 0, 1, 1, 8, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7780, '', NULL, 5, 'datetime', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (95, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7670, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (96, NULL, NULL, NULL, NULL, 'Modifier', 'Modifier', 'string', 130, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 1, 200, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7660, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (97, NULL, NULL, NULL, NULL, 'ModifyDate', 'ModifyDate', 'DateTime', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, 'datetime', NULL, 1, 0, NULL, 0, 1, 1, 8, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7650, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (98, NULL, NULL, NULL, NULL, 'AuditStatus', 'AuditStatus', 'int', 90, '', '2018-06-14 16:44:15', NULL, NULL, 'audit', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7640, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (99, NULL, NULL, NULL, NULL, 'Auditor', 'Auditor', 'string', 90, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 200, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7630, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (100, NULL, NULL, NULL, NULL, 'AuditDate', 'AuditDate', 'DateTime', 150, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7620, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (101, NULL, NULL, NULL, NULL, 'LastLoginDate', 'LastLoginDate', 'DateTime', 150, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7610, '', NULL, 5, 'datetime', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (102, NULL, NULL, NULL, NULL, 'LastModifyPwdDate', 'LastModifyPwdDate', 'DateTime', 150, '', '2018-06-14 16:44:15', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7600, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (114, NULL, NULL, NULL, NULL, 'HeadImageUrl', 'HeadImageUrl', 'string', 90, '', NULL, NULL, NULL, '', NULL, 20, 'img', NULL, 1, 1, 1, 0, 1, 0, 500, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7842, '', NULL, NULL, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (142, NULL, NULL, NULL, NULL, 'Id', 'Id', 'int', 90, NULL, '2018-07-10 13:57:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, 'SuperAdministrator', '2023-05-13 10:48:27', 1, 8570, NULL, NULL, NULL, NULL, 0, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."Sys_TableColumn" VALUES (143, NULL, NULL, NULL, 12, 'Variety', 'Variety', 'string', 90, NULL, '2018-07-10 13:57:15', NULL, NULL, 'pz', NULL, 1, 'checkbox', NULL, 1, 1, NULL, 0, 0, 0, 20, 'SuperAdministrator', '2023-05-13 10:48:27', 1, 8560, NULL, NULL, 1, 'select', 0, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."Sys_TableColumn" VALUES (144, NULL, NULL, NULL, 12, 'AgeRange', 'AgeRange', 'string', 90, NULL, '2018-07-10 13:57:15', NULL, NULL, 'age', NULL, 10, 'select', NULL, 1, 1, NULL, 0, 0, 0, 50, 'SuperAdministrator', '2023-05-13 10:48:27', 1, 8561, NULL, NULL, 1, 'select', 0, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."Sys_TableColumn" VALUES (145, NULL, NULL, NULL, 12, 'City', 'City', 'string', 90, NULL, '2018-07-10 13:57:15', NULL, NULL, 'city', NULL, 15, 'select', NULL, 1, 1, NULL, 0, 0, 0, 15, 'SuperAdministrator', '2023-05-13 10:48:27', 1, 8540, NULL, NULL, 1, 'select', 0, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."Sys_TableColumn" VALUES (146, NULL, NULL, NULL, 12, 'AvgPrice', 'AvgPrice', 'decimal', 80, NULL, '2018-07-10 13:57:15', NULL, NULL, NULL, NULL, 20, NULL, NULL, 1, 1, NULL, 0, 0, 0, 9, 'SuperAdministrator', '2023-05-13 10:48:27', 1, 8530, NULL, NULL, NULL, NULL, 0, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."Sys_TableColumn" VALUES (147, NULL, NULL, NULL, 12, 'Date', 'Date', 'DateTime', 90, NULL, '2018-07-10 13:57:15', NULL, NULL, NULL, NULL, 25, 'date', NULL, 1, 1, 4, 0, 0, 0, 3, 'SuperAdministrator', '2023-05-13 10:48:27', 1, 8520, NULL, NULL, 2, 'datetime', 0, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."Sys_TableColumn" VALUES (148, NULL, NULL, NULL, NULL, 'Enable', 'Enable', 'byte', 90, NULL, '2018-07-10 13:57:15', NULL, NULL, 'enable', NULL, NULL, 'selectList', NULL, 1, 0, NULL, 0, 1, 0, 1, 'SuperAdministrator', '2023-05-13 10:48:27', 1, 8510, NULL, NULL, 2, 'selectList', 0, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."Sys_TableColumn" VALUES (149, NULL, NULL, NULL, NULL, 'CreatorId', 'CreateID', 'int', 90, NULL, '2018-07-10 13:57:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 10:48:27', 1, 8500, NULL, NULL, NULL, NULL, 0, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."Sys_TableColumn" VALUES (150, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 100, NULL, '2018-07-10 13:57:15', NULL, NULL, NULL, NULL, 40, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, 'SuperAdministrator', '2023-05-13 10:48:27', 1, 8490, NULL, NULL, NULL, NULL, 0, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."Sys_TableColumn" VALUES (151, NULL, NULL, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 150, NULL, '2018-07-10 13:57:15', NULL, NULL, NULL, NULL, 40, NULL, NULL, 1, 1, NULL, 0, 1, 1, 8, 'SuperAdministrator', '2023-05-13 10:48:27', 1, 8480, NULL, NULL, NULL, 'datetime', 0, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."Sys_TableColumn" VALUES (152, NULL, NULL, NULL, NULL, 'ModifierID', 'ModifyID', 'int', 90, NULL, '2018-07-10 13:57:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 10:48:27', 1, 8470, NULL, NULL, NULL, NULL, 0, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."Sys_TableColumn" VALUES (153, NULL, NULL, NULL, NULL, 'Modifier', 'Modifier', 'string', 90, NULL, '2018-07-10 13:57:15', NULL, NULL, NULL, NULL, 50, NULL, NULL, 1, 0, NULL, 0, 1, 1, 30, 'SuperAdministrator', '2023-05-13 10:48:27', 1, 8460, NULL, NULL, NULL, NULL, 0, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."Sys_TableColumn" VALUES (154, NULL, NULL, NULL, NULL, 'ModifyDate', 'ModifyDate', 'DateTime', 140, NULL, '2018-07-10 13:57:15', NULL, NULL, NULL, NULL, 50, NULL, NULL, 1, 0, NULL, 0, 1, 1, 8, 'SuperAdministrator', '2023-05-13 10:48:27', 1, 8450, NULL, NULL, NULL, NULL, 0, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."Sys_TableColumn" VALUES (155, NULL, NULL, NULL, NULL, 'Id', 'Id', 'int', 90, NULL, '2018-07-10 15:02:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, 'SuperAdministrator', '2023-05-13 11:31:51', 1, 8440, NULL, NULL, NULL, NULL, 0, 'App_ReportPrice', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (156, NULL, NULL, NULL, NULL, 'Variety', 'Variety', 'string', 80, NULL, '2018-07-10 15:02:46', NULL, NULL, 'pz', NULL, 1, 'select', NULL, 1, 1, NULL, 0, 0, 0, 40, 'SuperAdministrator', '2023-05-13 11:31:51', 1, 8430, NULL, NULL, 1, 'select', 0, 'App_ReportPrice', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (157, NULL, NULL, NULL, NULL, 'AgeRange', 'Age', 'string', 80, NULL, '2018-07-10 15:02:46', NULL, NULL, 'age', NULL, 1, 'select', NULL, 1, 1, NULL, 0, 0, 0, 100, 'SuperAdministrator', '2023-05-13 11:31:51', 1, 8420, NULL, NULL, 1, 'select', 0, 'App_ReportPrice', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (158, NULL, NULL, NULL, NULL, 'City', 'City', 'string', 90, NULL, '2018-07-10 15:02:46', NULL, NULL, 'city', NULL, 1, 'select', NULL, 1, 1, NULL, 0, 0, 0, 30, 'SuperAdministrator', '2023-05-13 11:31:51', 1, 8410, NULL, NULL, 1, 'select', 0, 'App_ReportPrice', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (159, NULL, NULL, NULL, NULL, 'AvgPrice', 'Price', 'decimal', 90, NULL, '2018-07-10 15:02:46', NULL, NULL, NULL, NULL, 2, 'decimal', NULL, 1, 1, NULL, 0, 0, 0, 9, 'SuperAdministrator', '2023-05-13 11:31:51', 1, 8400, NULL, NULL, NULL, NULL, 0, 'App_ReportPrice', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (160, 0, NULL, NULL, NULL, 'AuditStatus', 'AuditStatus', 'int', 90, NULL, '2018-07-10 15:02:46', NULL, NULL, 'audit', NULL, NULL, 'select', NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 11:31:51', 1, 8382, NULL, NULL, 2, 'select', 0, 'App_ReportPrice', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (161, NULL, NULL, NULL, NULL, 'AuditId', 'AuditId', 'int', 90, NULL, '2018-07-10 15:02:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 11:31:51', 1, 8380, NULL, NULL, NULL, NULL, 0, 'App_ReportPrice', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (162, NULL, NULL, NULL, NULL, 'Auditor', 'Auditor', 'string', 90, NULL, '2018-07-10 15:02:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 40, 'SuperAdministrator', '2023-05-13 11:31:51', 1, 8370, NULL, NULL, NULL, NULL, 0, 'App_ReportPrice', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (163, NULL, NULL, NULL, NULL, 'Enable', 'Enable', 'byte', 90, NULL, '2018-07-10 15:02:46', NULL, NULL, 'enable', NULL, 2, 'switch', NULL, 1, 1, NULL, 0, 1, 1, 1, 'SuperAdministrator', '2023-05-13 11:31:51', 1, 8360, NULL, NULL, NULL, NULL, 0, 'App_ReportPrice', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (164, NULL, NULL, NULL, NULL, 'CreatorId', 'CreateID', 'int', 90, NULL, '2018-07-10 15:02:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 11:31:51', 1, 8350, NULL, NULL, NULL, NULL, 0, 'App_ReportPrice', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (165, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 100, NULL, '2018-07-10 15:02:46', NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 0, NULL, 0, 1, 1, 60, 'SuperAdministrator', '2023-05-13 11:31:51', 1, 8388, NULL, NULL, NULL, NULL, 0, 'App_ReportPrice', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (166, NULL, 0, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 150, NULL, '2018-07-10 15:02:46', NULL, NULL, NULL, NULL, 5, 'datetime', NULL, 1, 0, NULL, 0, 1, 1, NULL, 'SuperAdministrator', '2023-05-13 11:31:51', 1, 8387, NULL, NULL, 2, 'datetime', 0, 'App_ReportPrice', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (167, NULL, NULL, NULL, NULL, 'ModifierID', 'ModifyID', 'int', 90, NULL, '2018-07-10 15:02:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 11:31:51', 1, 8320, NULL, NULL, NULL, NULL, 0, 'App_ReportPrice', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (168, NULL, NULL, NULL, 12, 'Modifier', 'Modifier', 'string', 100, NULL, '2018-07-10 15:02:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 60, 'SuperAdministrator', '2023-05-13 11:31:51', 1, 8310, NULL, NULL, NULL, NULL, 0, 'App_ReportPrice', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (169, NULL, NULL, NULL, NULL, 'ModifyDate', 'ModifyDate', 'DateTime', 90, NULL, '2018-07-10 15:02:46', NULL, NULL, NULL, NULL, 5, 'None', NULL, 1, 1, NULL, 0, 1, 1, NULL, 'SuperAdministrator', '2023-05-13 11:31:51', 1, 8300, NULL, NULL, NULL, NULL, 0, 'App_ReportPrice', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (170, NULL, NULL, NULL, NULL, 'AuditDate', 'AuditDate', 'DateTime', 110, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 'SuperAdministrator', '2023-05-13 11:31:51', 1, 8381, NULL, NULL, NULL, NULL, 0, 'App_ReportPrice', 16);
INSERT INTO "public"."Sys_TableColumn" VALUES (193, NULL, NULL, NULL, NULL, 'Id', 'Id', 'int', 90, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, 'SuperAdministrator', '2023-05-13 11:14:30', 1, 8060, NULL, NULL, NULL, NULL, 0, 'App_Transaction', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (194, NULL, NULL, NULL, NULL, 'UserTrueName', 'Name', 'string', 120, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 0, 0, 50, 'SuperAdministrator', '2023-05-13 11:14:30', 1, 8050, NULL, NULL, 1, 'text', 0, 'App_Transaction', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (195, NULL, NULL, NULL, NULL, 'Mobile', 'PhoneNo', 'string', 150, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, 50, 'phone', NULL, 1, 1, NULL, 0, 0, 0, 15, 'SuperAdministrator', '2023-05-13 11:14:30', 1, 8040, NULL, NULL, 1, 'text', 0, 'App_Transaction', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (196, NULL, NULL, NULL, NULL, 'Quantity', 'Quantity', 'int', 90, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, 'SuperAdministrator', '2023-05-13 11:14:30', 1, 8030, NULL, NULL, NULL, NULL, 0, 'App_Transaction', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (197, NULL, NULL, NULL, NULL, 'CowType', 'CowType', 'string', 90, NULL, '2018-07-10 15:12:25', NULL, NULL, 'nav', NULL, 30, 'select', NULL, 1, 1, NULL, 0, 1, 0, 100, 'SuperAdministrator', '2023-05-13 11:14:30', 1, 8020, NULL, NULL, 2, 'selectList', 0, 'App_Transaction', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (198, NULL, NULL, NULL, NULL, 'Describe', 'Describe', 'string', 190, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, 60, 'textarea', NULL, 1, 1, NULL, 0, 0, 0, 500, 'SuperAdministrator', '2023-05-13 11:14:30', 1, 8010, NULL, NULL, NULL, NULL, 0, 'App_Transaction', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (199, NULL, NULL, NULL, NULL, 'Enable', 'Enable', 'byte', 90, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 1, 'SuperAdministrator', '2023-05-13 11:14:30', 1, 8000, NULL, NULL, NULL, NULL, 0, 'App_Transaction', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (200, NULL, NULL, NULL, NULL, 'CreatorId', 'CreateID', 'int', 90, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 11:14:30', 1, 7990, NULL, NULL, NULL, NULL, 0, 'App_Transaction', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (201, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 130, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, 'SuperAdministrator', '2023-05-13 11:14:30', 1, 7980, NULL, NULL, 2, NULL, 0, 'App_Transaction', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (202, NULL, NULL, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 150, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-05-13 11:14:30', 1, 7970, NULL, NULL, 2, 'datetime', 0, 'App_Transaction', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (203, NULL, NULL, NULL, NULL, 'ModifierID', 'ModifyID', 'int', 90, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 11:14:30', 1, 7960, NULL, NULL, NULL, NULL, 0, 'App_Transaction', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (204, NULL, NULL, NULL, NULL, 'Modifier', 'Modifier', 'string', 130, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, 'SuperAdministrator', '2023-05-13 11:14:30', 1, 7950, NULL, NULL, NULL, NULL, 0, 'App_Transaction', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (205, NULL, NULL, NULL, NULL, 'ModifyDate', 'ModifyDate', 'DateTime', 150, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-05-13 11:14:30', 1, 7940, NULL, NULL, NULL, NULL, 0, 'App_Transaction', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (206, 1, 1, 0, NULL, 'Id', 'ExpertId', 'int', 80, '', '2018-07-10 15:29:01', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 1, 0, 1, 4, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7930, '', NULL, NULL, '', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (207, NULL, NULL, NULL, NULL, 'ExpertName', 'ExpertName', 'string', 120, '', '2018-07-10 15:29:01', NULL, NULL, '', NULL, 1, '', NULL, 1, 1, NULL, 0, 1, 0, 20, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7920, '', NULL, 1, 'like', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (208, NULL, NULL, NULL, NULL, 'UserTrueName', 'ReallyName', 'string', 90, '', '2018-07-10 15:29:01', NULL, NULL, '', NULL, 2, '', NULL, 1, 1, NULL, 0, 1, 0, 20, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7910, '', NULL, 1, '', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (209, NULL, NULL, NULL, NULL, 'IDNumber', 'IDNumber', 'string', 200, '', '2018-07-10 15:29:01', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 18, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7900, '', NULL, NULL, '', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (210, NULL, NULL, NULL, NULL, 'HeadImageUrl', 'HeadImageUrl', 'string', 90, '', '2018-07-10 15:29:01', NULL, NULL, '', NULL, 10, 'img', NULL, 1, 1, 1, 0, 1, 0, 500, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7920, '', NULL, NULL, '', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (211, NULL, NULL, NULL, NULL, 'Education', 'Education', 'string', 120, '', '2018-07-10 15:29:01', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 50, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7880, '', NULL, NULL, 'text', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (212, NULL, NULL, NULL, NULL, 'Professional', 'Professional', 'string', 120, '', '2018-07-10 15:29:01', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 50, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7870, '', NULL, NULL, '', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (213, NULL, NULL, NULL, NULL, 'Company', 'Company', 'string', 150, '', '2018-07-10 15:29:01', NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, 0, 1, 0, 50, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7860, '', NULL, NULL, 'None', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (214, NULL, NULL, NULL, NULL, 'City', 'City', 'string', 100, '', '2018-07-10 15:29:01', NULL, NULL, 'city', NULL, 5, 'select', NULL, 1, 1, NULL, 0, 1, 0, 50, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7850, '', NULL, NULL, 'selectList', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (215, NULL, NULL, NULL, NULL, 'SpecialField', 'SpecialField', 'string', 120, '', '2018-07-10 15:29:01', NULL, NULL, '', NULL, NULL, 'textarea', NULL, 0, 1, NULL, 0, 1, 0, 800, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7840, '', NULL, NULL, '', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (216, NULL, NULL, NULL, 12, 'Resume', 'Resume', 'string', 150, '', '2018-07-10 15:29:01', NULL, NULL, '', NULL, 7, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 500, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7830, '', NULL, NULL, '', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (217, NULL, NULL, NULL, NULL, 'AuditStatus', 'AuditStatus', 'int', 100, '', '2018-07-10 15:29:01', NULL, NULL, 'audit', NULL, 0, 'select', NULL, 1, 1, NULL, 0, 0, 0, 4, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7919, '', NULL, 1, 'selectList', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (218, NULL, NULL, NULL, NULL, 'AuditId', 'AuditId', 'int', 80, '', '2018-07-10 15:29:01', NULL, NULL, '', NULL, 0, '', NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7810, '', NULL, NULL, '', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (219, NULL, NULL, NULL, NULL, 'Auditor', 'Auditor', 'string', 90, '', '2018-07-10 15:29:01', NULL, NULL, '', NULL, 0, '', NULL, 1, 0, NULL, 0, 1, 0, 20, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7919, '', NULL, NULL, '', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (220, NULL, NULL, NULL, NULL, 'AuditDate', 'AuditDate', 'DateTime', 150, '', '2018-07-10 15:29:01', NULL, NULL, '', NULL, 0, 'datetime', NULL, 1, 0, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7790, '', NULL, NULL, 'datetime', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (221, NULL, NULL, NULL, NULL, 'Enable', 'Enable', 'byte', 90, '', '2018-07-10 15:29:01', NULL, NULL, 'enable', NULL, 3, 'select', NULL, 1, 1, NULL, 0, 0, 0, 1, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7919, '', NULL, 1, 'select', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (222, NULL, NULL, NULL, NULL, 'CreatorId', 'CreateID', 'int', 80, '', '2018-07-10 15:29:01', NULL, NULL, '', NULL, 0, '', NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7770, '', NULL, NULL, '', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (223, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 130, '', '2018-07-10 15:29:01', NULL, NULL, '', NULL, 0, '', NULL, 1, 0, NULL, 0, 1, 0, 30, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7760, '', NULL, NULL, '', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (224, NULL, NULL, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 130, '', '2018-07-10 15:29:01', NULL, NULL, '', NULL, 0, '', NULL, 1, 1, NULL, 0, 1, 1, 8, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7750, '', NULL, NULL, '', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (225, NULL, NULL, NULL, NULL, 'ModifierID', 'ModifyID', 'int', 80, '', '2018-07-10 15:29:01', NULL, NULL, '', NULL, 0, '', NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7740, '', NULL, NULL, '', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (226, NULL, NULL, NULL, NULL, 'Modifier', 'Modifier', 'string', 100, '', '2018-07-10 15:29:01', NULL, NULL, '', NULL, 0, '', NULL, 1, 1, NULL, 0, 1, 0, 30, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7730, '', NULL, NULL, '', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (227, NULL, NULL, NULL, NULL, 'ModifyDate', 'ModifyDate', 'DateTime', 130, '', '2018-07-10 15:29:01', NULL, NULL, '', NULL, 0, '', NULL, 1, 0, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7720, '', NULL, NULL, '', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (308, NULL, NULL, NULL, NULL, 'Id', 'Id', 'int', 80, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, 'SuperAdministrator', '2020-01-06 11:21:07', 1, 6910, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."Sys_TableColumn" VALUES (309, NULL, NULL, NULL, 12, 'Title', 'Title', 'string', 250, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 100, 'SuperAdministrator', '2020-01-06 11:21:07', 1, 6900, NULL, NULL, 1, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."Sys_TableColumn" VALUES (310, NULL, NULL, NULL, NULL, 'Author', 'Author', 'string', 120, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 100, 'SuperAdministrator', '2020-01-06 11:21:07', 1, 6890, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."Sys_TableColumn" VALUES (311, 0, NULL, NULL, NULL, 'ReleaseDate', 'ReleaseDate', 'DateTime', 150, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 8, 'SuperAdministrator', '2020-01-06 11:21:07', 1, 6880, NULL, NULL, 3, 'datetime', NULL, 'App_News', 28);
INSERT INTO "public"."Sys_TableColumn" VALUES (312, NULL, NULL, NULL, 12, 'ImageUrl', 'ImageUrl', 'string', 220, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, 9, NULL, NULL, 1, 1, 1, 0, 1, 0, 0, 'SuperAdministrator', '2020-01-06 11:21:07', 1, 6870, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."Sys_TableColumn" VALUES (313, NULL, NULL, NULL, NULL, 'BigImageUrls', 'BigImageUrls', 'string', 220, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 1000, 'SuperAdministrator', '2020-01-06 11:21:07', 1, 6860, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."Sys_TableColumn" VALUES (314, NULL, NULL, NULL, 12, 'DetailUrl', 'DetailUrl', 'string', 90, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, 8, NULL, NULL, 1, 1, NULL, 0, 1, 0, 400, 'SuperAdministrator', '2020-01-06 11:21:07', 1, 6850, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."Sys_TableColumn" VALUES (315, NULL, NULL, NULL, NULL, 'ViewCount', 'ViewCount', 'int', 110, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, 2, 3, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2020-01-06 11:21:07', 1, 6840, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."Sys_TableColumn" VALUES (316, NULL, NULL, NULL, NULL, 'NewsType', 'NewsType', 'int', 110, NULL, '2018-07-10 16:11:59', NULL, NULL, 'news', 1, 3, 'select', NULL, 1, 1, NULL, 0, 0, 0, 4, 'SuperAdministrator', '2020-01-06 11:21:07', 1, 6830, NULL, NULL, 1, 'select', NULL, 'App_News', 28);
INSERT INTO "public"."Sys_TableColumn" VALUES (317, NULL, NULL, NULL, NULL, 'Enable', 'Enable', 'int', 90, NULL, '2018-07-10 16:11:59', NULL, NULL, 'enable', NULL, 7, 'select', NULL, 1, 1, NULL, 0, 1, 0, 2, 'SuperAdministrator', '2020-01-06 11:21:07', 1, 6820, NULL, NULL, 3, 'select', NULL, 'App_News', 28);
INSERT INTO "public"."Sys_TableColumn" VALUES (318, NULL, NULL, NULL, NULL, 'CreatorId', 'CreateID', 'int', 80, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2020-01-06 11:21:07', 1, 6810, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."Sys_TableColumn" VALUES (319, NULL, NULL, NULL, NULL, 'Author', 'Creator', 'string', 130, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, 6, NULL, NULL, 1, 1, NULL, 0, 1, 1, 60, 'SuperAdministrator', '2020-01-06 11:21:07', 1, 6800, NULL, NULL, 3, 'None', NULL, 'App_News', 28);
INSERT INTO "public"."Sys_TableColumn" VALUES (320, NULL, NULL, NULL, NULL, 'ReleaseDate', 'CreateDate', 'DateTime', 150, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, 6, NULL, NULL, 1, 1, NULL, 0, 1, 1, 8, 'SuperAdministrator', '2020-01-06 11:21:07', 1, 6790, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."Sys_TableColumn" VALUES (321, NULL, NULL, NULL, NULL, 'ModifierID', 'ModifyID', 'int', 80, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2020-01-06 11:21:07', 1, 6780, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."Sys_TableColumn" VALUES (322, NULL, NULL, NULL, NULL, 'Modifier', 'Modifier', 'string', 130, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 60, 'SuperAdministrator', '2020-01-06 11:21:07', 1, 6770, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."Sys_TableColumn" VALUES (323, NULL, NULL, NULL, NULL, 'ModifyDate', 'ModifyDate', 'DateTime', 150, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, 7, NULL, NULL, 1, 1, NULL, 0, 1, 1, 8, 'SuperAdministrator', '2020-01-06 11:21:07', 1, 6760, NULL, NULL, NULL, 'datetime', NULL, 'App_News', 28);
INSERT INTO "public"."Sys_TableColumn" VALUES (324, NULL, NULL, NULL, 12, 'Content', 'Content', 'string', 300, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, 1, 0, NULL, NULL, 1, 0, 0, 'SuperAdministrator', '2020-01-06 11:21:07', 1, 6896, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."Sys_TableColumn" VALUES (429, 1, 0, NULL, NULL, 'PhoneNo', 'PhoneNo', 'string', 150, '', NULL, NULL, NULL, '', NULL, NULL, '', NULL, 1, 0, NULL, NULL, 1, 0, 11, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7760, '', NULL, 3, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (431, NULL, NULL, NULL, NULL, 'Token', 'Token', 'string', 180, '', NULL, NULL, NULL, '', NULL, 0, '', NULL, 1, 0, NULL, 0, 1, 0, 500, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7810, '', NULL, 2, '', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (446, NULL, NULL, NULL, 12, 'Modifier', 'IsTop', 'int', 90, NULL, NULL, NULL, NULL, 'enable', NULL, 30, 'select', NULL, 1, 1, NULL, 0, 0, 0, NULL, 'SuperAdministrator', '2023-05-13 10:48:27', 1, 8515, NULL, NULL, 2, 'select', 0, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."Sys_TableColumn" VALUES (457, NULL, NULL, NULL, NULL, 'Enable', 'TransactionType', 'int', 120, NULL, NULL, NULL, NULL, 'enable', NULL, 20, 'select', NULL, 1, 1, NULL, 0, 0, 0, 8, 'SuperAdministrator', '2023-05-13 11:14:30', 1, 8021, NULL, NULL, 1, 'select', 0, 'App_Transaction', 19);
INSERT INTO "public"."Sys_TableColumn" VALUES (506, NULL, NULL, NULL, NULL, 'Gender', 'Gender', 'int', 80, '', NULL, NULL, NULL, 'gender', NULL, 12, 'select', NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7843, '', NULL, 1, 'select', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (523, NULL, NULL, NULL, NULL, 'Mobile', 'PhoneNo', 'string', 150, '', NULL, NULL, NULL, '', NULL, NULL, 'phone', NULL, 1, 0, NULL, NULL, 1, 0, 11, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7900, '', NULL, NULL, '', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (550, NULL, NULL, NULL, NULL, 'UserTrueNameUserNameId', 'User_Id', 'int', 90, '', NULL, NULL, NULL, '', NULL, 0, '', NULL, 1, 0, NULL, NULL, 1, 0, 8, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7921, '', NULL, NULL, '', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (551, NULL, NULL, NULL, NULL, 'UserName', 'UserName', 'string', 120, '', NULL, NULL, NULL, '', NULL, 0, '', NULL, 1, 0, NULL, NULL, 1, 0, 30, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7920, '', NULL, NULL, '', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (552, NULL, NULL, NULL, NULL, 'UserTrueName', 'UserTrueName', 'string', 100, '', NULL, NULL, NULL, '', NULL, 0, '', NULL, 1, 0, NULL, NULL, 1, 0, 50, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7920, '', NULL, NULL, '', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (603, NULL, NULL, NULL, NULL, 'Certificate', ' Certificate', 'string', 200, '', NULL, NULL, NULL, '', NULL, 0, '', NULL, 0, 0, 1, 0, 1, 0, 2500, 'SuperAdministrator', '2023-05-13 10:59:07', 1, 7828, '', NULL, NULL, '', 0, 'App_Expert', 20);
INSERT INTO "public"."Sys_TableColumn" VALUES (654, NULL, NULL, NULL, NULL, 'AppType', 'AppType', 'int', 150, '', NULL, NULL, NULL, 'ut', NULL, 0, '', NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7809, '', NULL, 3, 'selectList', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (659, NULL, NULL, NULL, NULL, 'IsRegregisterPhone', 'IsRegregisterPhone', 'int', 120, '', NULL, NULL, NULL, 'isphone', NULL, NULL, 'select', NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7771, '', NULL, 3, 'select', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (663, NULL, NULL, NULL, NULL, 'DailyRecommend', 'DailyRecommend', 'int', 120, NULL, NULL, NULL, NULL, 'dr', NULL, 5, 'select', NULL, 1, 1, NULL, NULL, 0, 0, 2, 'SuperAdministrator', '2020-01-06 11:21:07', 1, 6825, NULL, NULL, 1, 'select', NULL, 'App_News', 28);
INSERT INTO "public"."Sys_TableColumn" VALUES (664, NULL, NULL, NULL, NULL, 'OrderNo', 'OrderNo', 'int', 120, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 4, 'SuperAdministrator', '2020-01-06 11:21:07', 1, 6822, NULL, NULL, NULL, 'None', NULL, 'App_News', 28);
INSERT INTO "public"."Sys_TableColumn" VALUES (714, NULL, NULL, NULL, NULL, 'Id', 'Order_Id', 'string', 90, NULL, '2019-08-22 17:26:55', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 36, 'SuperAdministrator', '2019-12-31 13:21:19', 1, 2850, NULL, NULL, NULL, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."Sys_TableColumn" VALUES (715, NULL, NULL, NULL, NULL, 'OrderAppType', 'OrderType', 'int', 90, NULL, '2019-08-22 17:26:55', 1, 'SuperAdministrator', 'ordertype', 1, 1, 'select', NULL, 1, 1, NULL, 0, 0, 0, NULL, 'SuperAdministrator', '2019-12-31 13:21:19', 1, 2840, NULL, 1, 1, 'select', NULL, 'SellOrder', 77);
INSERT INTO "public"."Sys_TableColumn" VALUES (716, NULL, NULL, NULL, NULL, 'TranNo', 'TranNo', 'string', 150, NULL, '2019-08-22 17:26:55', 1, 'SuperAdministrator', NULL, 1, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 100, 'SuperAdministrator', '2019-12-31 13:21:19', 1, 2830, NULL, NULL, 1, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."Sys_TableColumn" VALUES (717, NULL, NULL, NULL, NULL, 'SellNo', 'SellNo', 'string', 200, NULL, '2019-08-22 17:26:55', 1, 'SuperAdministrator', NULL, 2, 2, NULL, NULL, 1, 1, NULL, 0, 0, 0, 255, 'SuperAdministrator', '2019-12-31 13:21:19', 1, 2820, NULL, NULL, 1, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."Sys_TableColumn" VALUES (718, NULL, NULL, NULL, NULL, 'Quantity', 'Qty', 'int', 90, NULL, '2019-08-22 17:26:55', 1, 'SuperAdministrator', NULL, 2, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, NULL, 'SuperAdministrator', '2019-12-31 13:21:19', 1, 2810, NULL, NULL, NULL, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."Sys_TableColumn" VALUES (719, NULL, NULL, NULL, 8, 'Remark', 'Remark', 'string', 100, NULL, '2019-08-22 17:26:55', 1, 'SuperAdministrator', NULL, NULL, 2, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 1000, 'SuperAdministrator', '2019-12-31 13:21:19', 1, 2800, NULL, NULL, NULL, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."Sys_TableColumn" VALUES (720, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2019-08-22 17:26:55', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, 'SuperAdministrator', '2019-12-31 13:21:19', 1, 2790, NULL, NULL, NULL, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."Sys_TableColumn" VALUES (721, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 100, NULL, '2019-08-22 17:26:55', 1, 'SuperAdministrator', NULL, 3, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, 255, 'SuperAdministrator', '2019-12-31 13:21:19', 1, 2780, NULL, NULL, 3, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."Sys_TableColumn" VALUES (722, NULL, NULL, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 90, NULL, '2019-08-22 17:26:55', 1, 'SuperAdministrator', NULL, 3, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, 'SuperAdministrator', '2019-12-31 13:21:19', 1, 2770, NULL, NULL, 3, 'datetime', NULL, 'SellOrder', 77);
INSERT INTO "public"."Sys_TableColumn" VALUES (723, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2019-08-22 17:26:55', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, 'SuperAdministrator', '2019-12-31 13:21:19', 1, 2760, NULL, NULL, NULL, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."Sys_TableColumn" VALUES (724, NULL, NULL, NULL, NULL, 'Modifier', 'Modifier', 'string', 100, NULL, '2019-08-22 17:26:55', 1, 'SuperAdministrator', NULL, 4, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 255, 'SuperAdministrator', '2019-12-31 13:21:19', 1, 2750, NULL, NULL, NULL, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."Sys_TableColumn" VALUES (725, NULL, NULL, NULL, NULL, 'ModifyDate', 'ModifyDate', 'DateTime', 90, NULL, '2019-08-22 17:26:55', 1, 'SuperAdministrator', NULL, 4, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, 'SuperAdministrator', '2019-12-31 13:21:19', 1, 2740, NULL, NULL, 3, 'datetime', NULL, 'SellOrder', 77);
INSERT INTO "public"."Sys_TableColumn" VALUES (726, NULL, NULL, NULL, NULL, '', 'OrderList_Id', 'string', 90, NULL, '2019-08-28 09:17:39', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 0, 36, 'SuperAdministrator', '2019-09-19 14:54:58', 1, 2730, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."Sys_TableColumn" VALUES (727, NULL, NULL, NULL, NULL, 'Order_Id', 'Order_Id', 'string', 90, NULL, '2019-08-28 09:17:39', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0, 1, 36, 'SuperAdministrator', '2019-09-19 14:54:58', 1, 2720, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."Sys_TableColumn" VALUES (728, NULL, NULL, NULL, NULL, 'ProductName', 'ProductName', 'string', 150, NULL, '2019-08-28 09:17:39', 1, 'SuperAdministrator', 'pn', NULL, 1, 'select', NULL, 1, 1, NULL, 0, 0, 0, 200, 'SuperAdministrator', '2019-09-19 14:54:58', 1, 2710, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."Sys_TableColumn" VALUES (729, NULL, NULL, NULL, NULL, 'MO', 'MO', 'string', 100, NULL, '2019-08-28 09:17:39', 1, 'SuperAdministrator', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 255, 'SuperAdministrator', '2019-09-19 14:54:58', 1, 2700, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."Sys_TableColumn" VALUES (730, NULL, NULL, NULL, NULL, 'Quantity', 'Qty', 'int', 90, NULL, '2019-08-28 09:17:39', 1, 'SuperAdministrator', NULL, NULL, 1, 'select', NULL, 1, 1, NULL, 0, 0, 0, NULL, 'SuperAdministrator', '2019-09-19 14:54:58', 1, 2690, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."Sys_TableColumn" VALUES (731, NULL, NULL, NULL, NULL, 'Weight', 'Weight', 'decimal', 90, NULL, '2019-08-28 09:17:39', 1, 'SuperAdministrator', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, 'SuperAdministrator', '2019-09-19 14:54:58', 1, 2680, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."Sys_TableColumn" VALUES (732, NULL, NULL, NULL, NULL, 'Remark', 'Remark', 'string', 120, NULL, '2019-08-28 09:17:39', 1, 'SuperAdministrator', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1000, 'SuperAdministrator', '2019-09-19 14:54:58', 1, 2670, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."Sys_TableColumn" VALUES (733, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2019-08-28 09:17:39', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, 'SuperAdministrator', '2019-09-19 14:54:58', 1, 2660, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."Sys_TableColumn" VALUES (734, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 130, NULL, '2019-08-28 09:17:39', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, 'SuperAdministrator', '2019-09-19 14:54:58', 1, 2650, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."Sys_TableColumn" VALUES (735, NULL, NULL, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 90, NULL, '2019-08-28 09:17:39', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, 'SuperAdministrator', '2019-09-19 14:54:58', 1, 2640, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."Sys_TableColumn" VALUES (736, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2019-08-28 09:17:39', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, 'SuperAdministrator', '2019-09-19 14:54:58', 1, 2630, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."Sys_TableColumn" VALUES (737, NULL, NULL, NULL, NULL, 'Modifier', 'Modifier', 'string', 100, NULL, '2019-08-28 09:17:39', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, 'SuperAdministrator', '2019-09-19 14:54:58', 1, 2620, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."Sys_TableColumn" VALUES (738, NULL, NULL, NULL, NULL, 'ModifyDate', 'ModifyDate', 'DateTime', 90, NULL, '2019-08-28 09:17:39', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, 'SuperAdministrator', '2019-09-19 14:54:58', 1, 2610, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."Sys_TableColumn" VALUES (739, NULL, NULL, NULL, NULL, 'AuditDate', 'AuditDate', 'DateTime', 120, NULL, '2019-08-28 09:32:29', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, NULL, 'SuperAdministrator', '2019-12-31 13:21:19', 1, 2805, NULL, NULL, 2, 'datetime', NULL, 'SellOrder', 77);
INSERT INTO "public"."Sys_TableColumn" VALUES (740, NULL, NULL, NULL, NULL, 'Auditor', 'Auditor', 'string', NULL, NULL, '2019-08-28 09:32:29', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 100, 'SuperAdministrator', '2019-12-31 13:21:19', 1, 2803, NULL, NULL, 2, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."Sys_TableColumn" VALUES (741, NULL, NULL, NULL, NULL, 'AuditId', 'AuditId', 'int', NULL, NULL, '2019-08-28 09:32:29', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, 0, NULL, 'SuperAdministrator', '2019-12-31 13:21:19', 1, 2801, NULL, NULL, NULL, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."Sys_TableColumn" VALUES (742, NULL, NULL, NULL, NULL, 'AuditStatus', 'AuditStatus', 'int', NULL, NULL, '2019-08-28 09:32:29', 1, 'SuperAdministrator', 'audit', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, 0, NULL, 'SuperAdministrator', '2019-12-31 13:21:19', 1, 2808, NULL, NULL, 2, 'select', NULL, 'SellOrder', 77);
INSERT INTO "public"."Sys_TableColumn" VALUES (743, NULL, NULL, NULL, NULL, '', 'Id', 'string', 90, NULL, '2019-09-18 15:46:43', 1, 'SuperAdministrator', NULL, 5, 1, NULL, NULL, 1, 0, NULL, 1, 0, 1, 36, 'SuperAdministrator', '2019-12-06 20:31:39', 1, 2560, NULL, NULL, NULL, NULL, NULL, 'App_Appointment', 80);
INSERT INTO "public"."Sys_TableColumn" VALUES (744, NULL, NULL, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 120, NULL, '2019-09-18 15:46:43', 1, 'SuperAdministrator', NULL, 1, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, 'SuperAdministrator', '2019-12-06 20:31:39', 1, 2550, NULL, NULL, 1, 'datetime', NULL, 'App_Appointment', 80);
INSERT INTO "public"."Sys_TableColumn" VALUES (745, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2019-09-18 15:46:43', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, 'SuperAdministrator', '2019-12-06 20:31:39', 1, 2540, NULL, NULL, NULL, NULL, NULL, 'App_Appointment', 80);
INSERT INTO "public"."Sys_TableColumn" VALUES (746, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 130, NULL, '2019-09-18 15:46:43', 1, 'SuperAdministrator', NULL, 2, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, 'SuperAdministrator', '2019-12-06 20:31:39', 1, 2530, NULL, NULL, 1, NULL, NULL, 'App_Appointment', 80);
INSERT INTO "public"."Sys_TableColumn" VALUES (747, NULL, NULL, NULL, NULL, 'Describe', 'Describe', 'string', 180, NULL, '2019-09-18 15:46:43', 1, 'SuperAdministrator', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 0, 1, 250, 'SuperAdministrator', '2019-12-06 20:31:39', 1, 3490, NULL, NULL, NULL, NULL, NULL, 'App_Appointment', 80);
INSERT INTO "public"."Sys_TableColumn" VALUES (748, NULL, NULL, NULL, NULL, 'Modifier', 'Modifier', 'string', 130, NULL, '2019-09-18 15:46:43', 1, 'SuperAdministrator', NULL, NULL, 4, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, 'SuperAdministrator', '2019-12-06 20:31:39', 1, 2510, NULL, NULL, NULL, NULL, NULL, 'App_Appointment', 80);
INSERT INTO "public"."Sys_TableColumn" VALUES (749, NULL, NULL, NULL, NULL, 'ModifyDate', 'ModifyDate', 'DateTime', 90, NULL, '2019-09-18 15:46:43', 1, 'SuperAdministrator', NULL, 1, 4, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, 'SuperAdministrator', '2019-12-06 20:31:39', 1, 2500, NULL, NULL, NULL, NULL, NULL, 'App_Appointment', 80);
INSERT INTO "public"."Sys_TableColumn" VALUES (750, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2019-09-18 15:46:43', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, 'SuperAdministrator', '2019-12-06 20:31:39', 1, 2490, NULL, NULL, NULL, NULL, NULL, 'App_Appointment', 80);
INSERT INTO "public"."Sys_TableColumn" VALUES (751, NULL, NULL, NULL, NULL, 'UserTrueName', 'Name', 'string', 100, NULL, '2019-09-18 15:46:43', 1, 'SuperAdministrator', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 1, 50, 'SuperAdministrator', '2019-12-06 20:31:39', 1, 3500, NULL, NULL, 1, 'like', NULL, 'App_Appointment', 80);
INSERT INTO "public"."Sys_TableColumn" VALUES (752, NULL, NULL, NULL, NULL, 'Mobile', 'PhoneNo', 'string', 130, NULL, '2019-09-18 15:46:43', 1, 'SuperAdministrator', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 0, 1, 15, 'SuperAdministrator', '2019-12-06 20:31:39', 1, 3470, NULL, NULL, 1, NULL, NULL, 'App_Appointment', 80);
INSERT INTO "public"."Sys_TableColumn" VALUES (753, NULL, NULL, NULL, NULL, '', 'FormId', 'guid', 110, NULL, '2021-12-29 23:17:25', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, 'SuperAdministrator', '2021-12-29 23:40:25', 1, 1150, NULL, NULL, NULL, NULL, 0, 'FormDesignOptions', 82);
INSERT INTO "public"."Sys_TableColumn" VALUES (754, NULL, NULL, NULL, NULL, 'FormExpertName', 'Title', 'string', 140, NULL, '2021-12-29 23:17:25', 1, 'SuperAdministrator', NULL, 0, 1, 'textarea', NULL, 1, 1, NULL, 0, 0, 0, 1000, 'SuperAdministrator', '2021-12-29 23:40:25', 1, 1100, NULL, NULL, 1, 'like', 0, 'FormDesignOptions', 82);
INSERT INTO "public"."Sys_TableColumn" VALUES (755, NULL, NULL, NULL, NULL, 'DaraggeOptions', 'DaraggeOptions', 'string', 140, NULL, '2021-12-29 23:17:25', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'SuperAdministrator', '2021-12-29 23:40:25', 1, 1050, NULL, NULL, NULL, NULL, 0, 'FormDesignOptions', 82);
INSERT INTO "public"."Sys_TableColumn" VALUES (756, NULL, NULL, NULL, NULL, 'FormOptions', 'FormOptions', 'string', 140, NULL, '2021-12-29 23:17:25', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'SuperAdministrator', '2021-12-29 23:40:25', 1, 1000, NULL, NULL, NULL, NULL, 0, 'FormDesignOptions', 82);
INSERT INTO "public"."Sys_TableColumn" VALUES (757, NULL, NULL, NULL, NULL, 'FormConfig', 'FormConfig', 'string', 110, NULL, '2021-12-29 23:17:25', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'SuperAdministrator', '2021-12-29 23:40:25', 1, 950, NULL, NULL, NULL, NULL, 0, 'FormDesignOptions', 82);
INSERT INTO "public"."Sys_TableColumn" VALUES (758, NULL, NULL, NULL, NULL, 'FormFields', 'FormFields', 'string', 110, NULL, '2021-12-29 23:17:25', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'SuperAdministrator', '2021-12-29 23:40:25', 1, 900, NULL, NULL, NULL, NULL, 0, 'FormDesignOptions', 82);
INSERT INTO "public"."Sys_TableColumn" VALUES (760, NULL, NULL, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 110, NULL, '2021-12-29 23:17:25', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2021-12-29 23:40:25', 1, 800, NULL, NULL, 1, 'datetime', 0, 'FormDesignOptions', 82);
INSERT INTO "public"."Sys_TableColumn" VALUES (761, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2021-12-29 23:17:25', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2021-12-29 23:40:25', 1, 750, NULL, NULL, NULL, NULL, 0, 'FormDesignOptions', 82);
INSERT INTO "public"."Sys_TableColumn" VALUES (762, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 130, NULL, '2021-12-29 23:17:25', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 60, 'SuperAdministrator', '2021-12-29 23:40:25', 1, 810, NULL, NULL, NULL, NULL, 0, 'FormDesignOptions', 82);
INSERT INTO "public"."Sys_TableColumn" VALUES (763, NULL, NULL, NULL, NULL, 'Modifier', 'Modifier', 'string', 130, NULL, '2021-12-29 23:17:25', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 60, 'SuperAdministrator', '2021-12-29 23:40:25', 1, 650, NULL, NULL, NULL, NULL, 0, 'FormDesignOptions', 82);
INSERT INTO "public"."Sys_TableColumn" VALUES (764, NULL, NULL, NULL, NULL, 'ModifyDate', 'ModifyDate', 'DateTime', 110, NULL, '2021-12-29 23:17:25', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2021-12-29 23:40:25', 1, 600, NULL, NULL, 1, 'datetime', 0, 'FormDesignOptions', 82);
INSERT INTO "public"."Sys_TableColumn" VALUES (765, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2021-12-29 23:17:25', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2021-12-29 23:40:25', 1, 550, NULL, NULL, NULL, NULL, 0, 'FormDesignOptions', 82);
INSERT INTO "public"."Sys_TableColumn" VALUES (766, NULL, NULL, NULL, NULL, 'TableConfig', 'TableConfig', 'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'SuperAdministrator', '2021-12-29 23:40:25', 1, 880, NULL, NULL, NULL, NULL, 0, 'FormDesignOptions', 82);
INSERT INTO "public"."Sys_TableColumn" VALUES (767, NULL, NULL, NULL, NULL, '', 'FormCollectionId', 'guid', 110, NULL, '2021-12-29 23:23:35', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, 'SuperAdministrator', '2021-12-30 23:00:15', 1, 1000, NULL, NULL, NULL, NULL, 0, 'FormCollectionObject', 83);
INSERT INTO "public"."Sys_TableColumn" VALUES (768, NULL, NULL, NULL, NULL, 'FormID', 'FormId', 'guid', 110, NULL, '2021-12-29 23:23:35', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 16, 'SuperAdministrator', '2021-12-30 23:00:15', 1, 950, NULL, NULL, NULL, NULL, 0, 'FormCollectionObject', 83);
INSERT INTO "public"."Sys_TableColumn" VALUES (769, NULL, NULL, NULL, NULL, 'Title', 'Title', 'string', 110, NULL, '2021-12-29 23:23:35', 1, 'SuperAdministrator', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'SuperAdministrator', '2021-12-30 23:00:15', 1, 900, NULL, NULL, 1, 'like', 0, 'FormCollectionObject', 83);
INSERT INTO "public"."Sys_TableColumn" VALUES (770, NULL, NULL, NULL, NULL, 'FormData', 'FormData', 'string', 110, NULL, '2021-12-29 23:23:35', 1, 'SuperAdministrator', NULL, NULL, 1, NULL, NULL, 1, 0, NULL, 0, 1, 0, 0, 'SuperAdministrator', '2021-12-30 23:00:15', 1, 850, NULL, NULL, NULL, NULL, 0, 'FormCollectionObject', 83);
INSERT INTO "public"."Sys_TableColumn" VALUES (771, NULL, NULL, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 145, NULL, '2021-12-29 23:23:35', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2021-12-30 23:00:15', 1, 800, NULL, NULL, 1, 'datetime', 0, 'FormCollectionObject', 83);
INSERT INTO "public"."Sys_TableColumn" VALUES (772, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2021-12-29 23:23:35', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2021-12-30 23:00:15', 1, 750, NULL, NULL, NULL, NULL, 0, 'FormCollectionObject', 83);
INSERT INTO "public"."Sys_TableColumn" VALUES (773, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 100, NULL, '2021-12-29 23:23:35', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 60, 'SuperAdministrator', '2021-12-30 23:00:15', 1, 810, NULL, NULL, 1, 'like', 0, 'FormCollectionObject', 83);
INSERT INTO "public"."Sys_TableColumn" VALUES (774, NULL, NULL, NULL, NULL, '', 'Modifier', 'string', 130, NULL, '2021-12-29 23:23:35', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 60, 'SuperAdministrator', '2021-12-30 23:00:15', 1, 650, NULL, NULL, NULL, NULL, 0, 'FormCollectionObject', 83);
INSERT INTO "public"."Sys_TableColumn" VALUES (775, NULL, NULL, NULL, NULL, '', 'ModifyDate', 'DateTime', 110, NULL, '2021-12-29 23:23:35', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2021-12-30 23:00:15', 1, 600, NULL, NULL, NULL, NULL, 0, 'FormCollectionObject', 83);
INSERT INTO "public"."Sys_TableColumn" VALUES (776, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2021-12-29 23:23:35', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2021-12-30 23:00:15', 1, 550, NULL, NULL, NULL, NULL, 0, 'FormCollectionObject', 83);
INSERT INTO "public"."Sys_TableColumn" VALUES (777, NULL, NULL, NULL, NULL, '', 'WorkFlow_Id', 'guid', 110, NULL, '2022-07-25 00:31:26', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, 'SuperAdministrator', '2023-05-13 17:04:22', 1, 1200, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlow', 85);
INSERT INTO "public"."Sys_TableColumn" VALUES (778, NULL, NULL, NULL, NULL, 'WorkName', 'WorkName', 'string', 140, NULL, '2022-07-25 00:31:26', 1, 'SuperAdministrator', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, 'SuperAdministrator', '2023-05-13 17:04:22', 1, 1150, NULL, NULL, 1, NULL, 0, 'Sys_WorkFlow', 85);
INSERT INTO "public"."Sys_TableColumn" VALUES (779, NULL, NULL, NULL, NULL, 'WorkTable', 'WorkTable', 'string', 100, NULL, '2022-07-25 00:31:26', 1, 'SuperAdministrator', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, 'SuperAdministrator', '2023-05-13 17:04:22', 1, 1100, NULL, NULL, 1, NULL, 0, 'Sys_WorkFlow', 85);
INSERT INTO "public"."Sys_TableColumn" VALUES (780, NULL, NULL, NULL, NULL, 'WorkTableName', 'WorkTableName', 'string', 120, NULL, '2022-07-25 00:31:26', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, 'SuperAdministrator', '2023-05-13 17:04:22', 1, 1050, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlow', 85);
INSERT INTO "public"."Sys_TableColumn" VALUES (781, NULL, NULL, NULL, NULL, 'NodeConfig', 'NodeConfig', 'string', 110, NULL, '2022-07-25 00:31:26', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 0, 'SuperAdministrator', '2023-05-13 17:04:22', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlow', 85);
INSERT INTO "public"."Sys_TableColumn" VALUES (782, NULL, NULL, NULL, NULL, 'LineConfig', 'LineConfig', 'string', 110, NULL, '2022-07-25 00:31:26', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 0, 'SuperAdministrator', '2023-05-13 17:04:22', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlow', 85);
INSERT INTO "public"."Sys_TableColumn" VALUES (783, NULL, NULL, NULL, NULL, 'Remark', 'Remark', 'string', 130, NULL, '2022-07-25 00:31:26', 1, 'SuperAdministrator', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, 'SuperAdministrator', '2023-05-13 17:04:22', 1, 900, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlow', 85);
INSERT INTO "public"."Sys_TableColumn" VALUES (784, NULL, NULL, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 150, NULL, '2022-07-25 00:31:26', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-05-13 17:04:22', 1, 740, NULL, NULL, 1, 'datetime', 0, 'Sys_WorkFlow', 85);
INSERT INTO "public"."Sys_TableColumn" VALUES (785, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2022-07-25 00:31:26', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 17:04:22', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlow', 85);
INSERT INTO "public"."Sys_TableColumn" VALUES (786, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 100, NULL, '2022-07-25 00:31:26', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, 'SuperAdministrator', '2023-05-13 17:04:22', 1, 750, NULL, NULL, NULL, '', 0, 'Sys_WorkFlow', 85);
INSERT INTO "public"."Sys_TableColumn" VALUES (787, NULL, NULL, NULL, NULL, 'Enable', 'Enable', 'byte', 100, NULL, '2022-07-25 00:31:26', 1, 'SuperAdministrator', 'enable', NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 1, 'SuperAdministrator', '2023-05-13 17:04:22', 1, 1010, NULL, NULL, NULL, 'select', 0, 'Sys_WorkFlow', 85);
INSERT INTO "public"."Sys_TableColumn" VALUES (788, NULL, NULL, NULL, NULL, 'Modifier', 'Modifier', 'string', 100, NULL, '2022-07-25 00:31:26', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, 'SuperAdministrator', '2023-05-13 17:04:22', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlow', 85);
INSERT INTO "public"."Sys_TableColumn" VALUES (789, NULL, NULL, NULL, NULL, 'ModifyDate', 'ModifyDate', 'DateTime', 160, NULL, '2022-07-25 00:31:26', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-05-13 17:04:22', 1, 600, NULL, NULL, NULL, 'datetime', 0, 'Sys_WorkFlow', 85);
INSERT INTO "public"."Sys_TableColumn" VALUES (790, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2022-07-25 00:31:26', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 17:04:22', 1, 660, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlow', 85);
INSERT INTO "public"."Sys_TableColumn" VALUES (809, NULL, NULL, NULL, NULL, '', 'WorkStepFlow_Id', 'guid', 110, NULL, '2022-07-31 22:43:02', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 1200, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (810, NULL, NULL, NULL, NULL, 'WorkFlow_Id', 'WorkFlow_Id', 'guid', 110, NULL, '2022-07-31 22:43:02', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 16, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 1150, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (811, NULL, NULL, NULL, NULL, 'StepId', 'StepId', 'string', 120, NULL, '2022-07-31 22:43:02', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 1100, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (812, NULL, NULL, NULL, NULL, 'StepName', 'StepName', 'string', 110, NULL, '2022-07-31 22:43:02', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 1050, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (813, NULL, NULL, NULL, NULL, 'StepType', 'StepType', 'int', 110, NULL, '2022-07-31 22:43:02', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (814, NULL, NULL, NULL, NULL, 'StepValue', 'StepValue', 'string', 110, NULL, '2022-07-31 22:43:02', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (815, NULL, NULL, NULL, NULL, 'Remark', 'Remark', 'string', 220, NULL, '2022-07-31 22:43:02', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 900, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (816, NULL, NULL, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 110, NULL, '2022-07-31 22:43:02', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (817, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2022-07-31 22:43:02', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (818, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 130, NULL, '2022-07-31 22:43:02', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (819, NULL, NULL, NULL, NULL, '', 'Enable', 'byte', 110, NULL, '2022-07-31 22:43:02', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 700, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (820, NULL, NULL, NULL, NULL, 'Modifier', 'Modifier', 'string', 130, NULL, '2022-07-31 22:43:02', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (821, NULL, NULL, NULL, NULL, 'ModifyDate', 'ModifyDate', 'DateTime', 110, NULL, '2022-07-31 22:43:02', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (822, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2022-07-31 22:43:02', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (823, NULL, NULL, NULL, NULL, 'OrderId', 'OrderId', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 880, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (824, NULL, NULL, NULL, NULL, '', 'WorkFlowTable_Id', 'guid', 110, NULL, '2022-08-01 00:15:40', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, 'SuperAdministrator', '2023-05-13 12:59:47', 1, 1250, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 88);
INSERT INTO "public"."Sys_TableColumn" VALUES (825, NULL, NULL, NULL, NULL, 'WorkFlow_Id', 'WorkFlow_Id', 'guid', 110, NULL, '2022-08-01 00:15:40', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 16, 'SuperAdministrator', '2023-05-13 12:59:47', 1, 1200, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 88);
INSERT INTO "public"."Sys_TableColumn" VALUES (826, NULL, NULL, NULL, NULL, 'WorkName', 'WorkName', 'string', 130, NULL, '2022-08-01 00:15:40', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, 'SuperAdministrator', '2023-05-13 12:59:47', 1, 1150, NULL, 2, 1, 'like', 0, 'Sys_WorkFlowTable', 88);
INSERT INTO "public"."Sys_TableColumn" VALUES (827, NULL, NULL, NULL, NULL, 'WorkTableKey', 'WorkTableKey', 'string', 180, NULL, '2022-08-01 00:15:40', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 200, 'SuperAdministrator', '2023-05-13 12:59:47', 1, 1100, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 88);
INSERT INTO "public"."Sys_TableColumn" VALUES (828, NULL, NULL, NULL, NULL, 'WorkTable', 'WorkTable', 'string', 100, NULL, '2022-08-01 00:15:40', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, 'SuperAdministrator', '2023-05-13 12:59:47', 1, 1050, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 88);
INSERT INTO "public"."Sys_TableColumn" VALUES (829, NULL, NULL, NULL, NULL, 'WorkTableName', 'WorkTableName', 'string', 120, NULL, '2022-08-01 00:15:40', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, 'SuperAdministrator', '2023-05-13 12:59:47', 1, 1000, NULL, 3, 1, 'like', 0, 'Sys_WorkFlowTable', 88);
INSERT INTO "public"."Sys_TableColumn" VALUES (830, NULL, NULL, NULL, NULL, 'Dept_Id', 'CurrentOrderId', 'int', 90, NULL, '2022-08-01 00:15:40', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 12:59:47', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 88);
INSERT INTO "public"."Sys_TableColumn" VALUES (831, NULL, NULL, NULL, NULL, 'AuditStatus', 'AuditStatus', 'int', 110, NULL, '2022-08-01 00:15:40', 1, 'SuperAdministrator', 'audit', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 12:59:47', 1, 900, NULL, 1, 1, 'select', 0, 'Sys_WorkFlowTable', 88);
INSERT INTO "public"."Sys_TableColumn" VALUES (832, NULL, NULL, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 150, NULL, '2022-08-01 00:15:40', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-05-13 12:59:47', 1, 850, NULL, 4, 1, 'datetime', 0, 'Sys_WorkFlowTable', 88);
INSERT INTO "public"."Sys_TableColumn" VALUES (833, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2022-08-01 00:15:40', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 12:59:47', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 88);
INSERT INTO "public"."Sys_TableColumn" VALUES (834, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 100, NULL, '2022-08-01 00:15:40', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, 'SuperAdministrator', '2023-05-13 12:59:47', 1, 860, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 88);
INSERT INTO "public"."Sys_TableColumn" VALUES (835, NULL, NULL, NULL, NULL, '', 'Enable', 'byte', 110, NULL, '2022-08-01 00:15:40', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 1, 'SuperAdministrator', '2023-05-13 12:59:47', 1, 700, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 88);
INSERT INTO "public"."Sys_TableColumn" VALUES (836, NULL, NULL, NULL, NULL, '', 'Modifier', 'string', 130, NULL, '2022-08-01 00:15:40', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, 'SuperAdministrator', '2023-05-13 12:59:47', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 88);
INSERT INTO "public"."Sys_TableColumn" VALUES (837, NULL, NULL, NULL, NULL, '', 'ModifyDate', 'DateTime', 110, NULL, '2022-08-01 00:15:40', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-05-13 12:59:47', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 88);
INSERT INTO "public"."Sys_TableColumn" VALUES (838, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2022-08-01 00:15:40', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 12:59:47', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 88);
INSERT INTO "public"."Sys_TableColumn" VALUES (839, NULL, NULL, NULL, NULL, '', 'Sys_WorkFlowTableStep_Id', 'guid', 110, NULL, '2022-08-01 00:21:19', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 1300, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (840, NULL, NULL, NULL, NULL, 'WorkFlowTable_Id', 'WorkFlowTable_Id', 'guid', 110, NULL, '2022-08-01 00:21:19', 1, 'SuperAdministrator', NULL, 0, NULL, NULL, NULL, 1, 1, NULL, 0, 0, 0, 16, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 1250, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (841, NULL, NULL, NULL, NULL, 'WorkFlow_Id', 'WorkFlow_Id', 'guid', 110, NULL, '2022-08-01 00:21:19', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 16, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 1200, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (842, NULL, NULL, NULL, NULL, 'StepId', 'StepId', 'string', 120, NULL, '2022-08-01 00:21:19', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 1150, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (843, NULL, NULL, NULL, NULL, 'StepName', 'StepName', 'string', 180, NULL, '2022-08-01 00:21:19', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 1100, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (844, NULL, NULL, NULL, NULL, 'StepType', 'StepType', 'int', 110, NULL, '2022-08-01 00:21:19', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 1050, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (845, NULL, NULL, NULL, NULL, 'StepType', 'StepValue', 'string', 110, NULL, '2022-08-01 00:21:19', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (846, NULL, NULL, NULL, NULL, 'OrderId', 'OrderId', 'int', 110, NULL, '2022-08-01 00:21:19', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (847, NULL, NULL, NULL, NULL, '', 'Remark', 'string', 220, NULL, '2022-08-01 00:21:19', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 900, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (848, NULL, NULL, NULL, NULL, '', 'CreateDate', 'DateTime', 110, NULL, '2022-08-01 00:21:19', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (849, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2022-08-01 00:21:19', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (850, NULL, NULL, NULL, NULL, '', 'Creator', 'string', 130, NULL, '2022-08-01 00:21:19', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (851, NULL, NULL, NULL, NULL, '', 'Enable', 'byte', 110, NULL, '2022-08-01 00:21:19', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 700, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (852, NULL, NULL, NULL, NULL, '', 'Modifier', 'string', 130, NULL, '2022-08-01 00:21:19', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (853, NULL, NULL, NULL, NULL, '', 'ModifyDate', 'DateTime', 110, NULL, '2022-08-01 00:21:19', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (854, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2022-08-01 00:21:19', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (855, NULL, NULL, NULL, NULL, 'AuditId', 'AuditId', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (856, NULL, NULL, NULL, NULL, 'Auditor', 'Auditor', 'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (857, NULL, NULL, NULL, NULL, 'AuditStatus', 'AuditStatus', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (858, NULL, NULL, NULL, NULL, 'AuditDate', 'AuditDate', 'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (859, NULL, NULL, NULL, NULL, '', 'Id', 'guid', 110, NULL, '2022-09-05 03:09:08', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, 'SuperAdministrator', '2022-09-07 01:42:45', 1, 1300, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 91);
INSERT INTO "public"."Sys_TableColumn" VALUES (860, NULL, NULL, NULL, NULL, 'TaskName', 'TaskName', 'string', 120, NULL, '2022-09-05 03:09:08', 1, 'SuperAdministrator', NULL, 0, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 500, 'SuperAdministrator', '2022-09-07 01:42:45', 1, 1250, NULL, NULL, 1, 'like', 0, 'Sys_QuartzOptions', 91);
INSERT INTO "public"."Sys_TableColumn" VALUES (861, NULL, NULL, NULL, NULL, 'GroupName', 'GroupName', 'string', 100, NULL, '2022-09-05 03:09:08', 1, 'SuperAdministrator', NULL, 0, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 500, 'SuperAdministrator', '2022-09-07 01:42:45', 1, 1200, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 91);
INSERT INTO "public"."Sys_TableColumn" VALUES (862, NULL, NULL, NULL, NULL, 'CronExpression', 'CronExpression', 'string', 120, NULL, '2022-09-05 03:09:08', 1, 'SuperAdministrator', NULL, 0, 2, NULL, NULL, 1, 1, NULL, 0, 0, 0, 100, 'SuperAdministrator', '2022-09-07 01:42:45', 1, 1150, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 91);
INSERT INTO "public"."Sys_TableColumn" VALUES (863, NULL, NULL, NULL, 12, 'ApiUrl', 'ApiUrl', 'string', 150, NULL, '2022-09-05 03:09:08', 1, 'SuperAdministrator', NULL, NULL, 7, NULL, NULL, 1, 1, NULL, 0, 1, 0, 2000, 'SuperAdministrator', '2022-09-07 01:42:45', 1, 1100, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 91);
INSERT INTO "public"."Sys_TableColumn" VALUES (864, NULL, NULL, NULL, NULL, 'AuthKey', 'AuthKey', 'string', 100, NULL, '2022-09-05 03:09:08', 1, 'SuperAdministrator', NULL, NULL, 6, NULL, NULL, 1, 0, NULL, 0, 1, 0, 200, 'SuperAdministrator', '2022-09-07 01:42:45', 1, 1050, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 91);
INSERT INTO "public"."Sys_TableColumn" VALUES (865, NULL, NULL, NULL, NULL, 'AuthValue', 'AuthValue', 'string', 100, NULL, '2022-09-05 03:09:08', 1, 'SuperAdministrator', NULL, NULL, 6, NULL, NULL, 1, 0, NULL, 0, 1, 0, 200, 'SuperAdministrator', '2022-09-07 01:42:45', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 91);
INSERT INTO "public"."Sys_TableColumn" VALUES (866, NULL, NULL, NULL, NULL, 'Describe', 'Describe', 'string', 120, NULL, '2022-09-05 03:09:08', 1, 'SuperAdministrator', NULL, NULL, 5, NULL, NULL, 1, 1, NULL, 0, 1, 0, 2000, 'SuperAdministrator', '2022-09-07 01:42:45', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 91);
INSERT INTO "public"."Sys_TableColumn" VALUES (867, NULL, NULL, NULL, NULL, 'LastRunTime', 'LastRunTime', 'DateTime', 150, NULL, '2022-09-05 03:09:08', 1, 'SuperAdministrator', NULL, NULL, 0, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2022-09-07 01:42:45', 1, 900, NULL, NULL, 1, 'datetime', 0, 'Sys_QuartzOptions', 91);
INSERT INTO "public"."Sys_TableColumn" VALUES (868, NULL, NULL, NULL, NULL, 'Status', 'Status', 'int', 90, NULL, '2022-09-05 03:09:08', 1, 'SuperAdministrator', '', NULL, 0, '', NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2022-09-07 01:42:45', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 91);
INSERT INTO "public"."Sys_TableColumn" VALUES (869, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2022-09-05 03:09:08', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2022-09-07 01:42:45', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 91);
INSERT INTO "public"."Sys_TableColumn" VALUES (870, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 130, NULL, '2022-09-05 03:09:08', 1, 'SuperAdministrator', NULL, NULL, 10, NULL, NULL, 1, 0, NULL, 0, 1, 1, 30, 'SuperAdministrator', '2022-09-07 01:42:45', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 91);
INSERT INTO "public"."Sys_TableColumn" VALUES (871, NULL, NULL, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 150, NULL, '2022-09-05 03:09:08', 1, 'SuperAdministrator', NULL, NULL, 10, NULL, NULL, 1, 0, NULL, 0, 1, 1, 8, 'SuperAdministrator', '2022-09-07 01:42:45', 1, 700, NULL, NULL, 1, 'datetime', 0, 'Sys_QuartzOptions', 91);
INSERT INTO "public"."Sys_TableColumn" VALUES (872, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2022-09-05 03:09:08', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2022-09-07 01:42:45', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 91);
INSERT INTO "public"."Sys_TableColumn" VALUES (873, NULL, NULL, NULL, NULL, '', 'Modifier', 'string', 130, NULL, '2022-09-05 03:09:08', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, 'SuperAdministrator', '2022-09-07 01:42:45', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 91);
INSERT INTO "public"."Sys_TableColumn" VALUES (874, NULL, NULL, NULL, NULL, 'ModifyDate', 'ModifyDate', 'DateTime', 110, NULL, '2022-09-05 03:09:08', 1, 'SuperAdministrator', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2022-09-07 01:42:45', 1, 550, NULL, NULL, 1, 'datetime', 0, 'Sys_QuartzOptions', 91);
INSERT INTO "public"."Sys_TableColumn" VALUES (889, NULL, NULL, NULL, NULL, '', 'LogId', 'guid', 110, NULL, '2022-09-05 03:14:51', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, 'SuperAdministrator', '2022-09-05 23:49:32', 1, 1200, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 93);
INSERT INTO "public"."Sys_TableColumn" VALUES (890, NULL, NULL, NULL, NULL, 'Id', 'Id', 'guid', 110, NULL, '2022-09-05 03:14:51', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 16, 'SuperAdministrator', '2022-09-05 23:49:32', 1, 1150, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 93);
INSERT INTO "public"."Sys_TableColumn" VALUES (891, NULL, NULL, NULL, NULL, 'TaskName', 'TaskName', 'string', 120, NULL, '2022-09-05 03:14:51', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, 'SuperAdministrator', '2022-09-05 23:49:32', 1, 1100, NULL, NULL, 1, 'like', 0, 'Sys_QuartzLog', 93);
INSERT INTO "public"."Sys_TableColumn" VALUES (892, NULL, NULL, NULL, NULL, 'ElapsedTime', 'ElapsedTime', 'int', 90, NULL, '2022-09-05 03:14:51', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2022-09-05 23:49:32', 1, 1050, NULL, NULL, 1, 'range', 0, 'Sys_QuartzLog', 93);
INSERT INTO "public"."Sys_TableColumn" VALUES (893, NULL, NULL, NULL, NULL, 'StratDate', 'StratDate', 'DateTime', 150, NULL, '2022-09-05 03:14:51', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2022-09-05 23:49:32', 1, 1000, NULL, NULL, 1, 'datetime', 0, 'Sys_QuartzLog', 93);
INSERT INTO "public"."Sys_TableColumn" VALUES (894, NULL, NULL, NULL, NULL, 'EndDate', 'EndDate', 'DateTime', 150, NULL, '2022-09-05 03:14:51', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2022-09-05 23:49:32', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 93);
INSERT INTO "public"."Sys_TableColumn" VALUES (895, NULL, NULL, NULL, NULL, 'Result', 'Result', 'int', 100, NULL, '2022-09-05 03:14:51', 1, 'SuperAdministrator', 'enable', NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2022-09-05 23:49:32', 1, 900, NULL, NULL, 1, 'select', 0, 'Sys_QuartzLog', 93);
INSERT INTO "public"."Sys_TableColumn" VALUES (896, NULL, NULL, NULL, NULL, 'ResponseContent', 'ResponseContent', 'string', 250, NULL, '2022-09-05 03:14:51', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'SuperAdministrator', '2022-09-05 23:49:32', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 93);
INSERT INTO "public"."Sys_TableColumn" VALUES (897, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 80, NULL, '2022-09-05 03:14:51', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2022-09-05 23:49:32', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 93);
INSERT INTO "public"."Sys_TableColumn" VALUES (898, NULL, NULL, NULL, NULL, '', 'Creator', 'string', 130, NULL, '2022-09-05 03:14:51', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, 'SuperAdministrator', '2022-09-05 23:49:32', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 93);
INSERT INTO "public"."Sys_TableColumn" VALUES (899, NULL, NULL, NULL, NULL, '', 'CreateDate', 'DateTime', 110, NULL, '2022-09-05 03:14:51', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2022-09-05 23:49:32', 1, 700, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 93);
INSERT INTO "public"."Sys_TableColumn" VALUES (900, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 80, NULL, '2022-09-05 03:14:51', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2022-09-05 23:49:32', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 93);
INSERT INTO "public"."Sys_TableColumn" VALUES (901, NULL, NULL, NULL, NULL, '', 'Modifier', 'string', 130, NULL, '2022-09-05 03:14:51', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, 'SuperAdministrator', '2022-09-05 23:49:32', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 93);
INSERT INTO "public"."Sys_TableColumn" VALUES (902, NULL, NULL, NULL, NULL, '', 'ModifyDate', 'DateTime', 110, NULL, '2022-09-05 03:14:51', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2022-09-05 23:49:32', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 93);
INSERT INTO "public"."Sys_TableColumn" VALUES (904, NULL, NULL, NULL, 12, 'PostData', 'PostData', 'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'textarea', NULL, 1, 0, NULL, 0, 1, 0, 0, 'SuperAdministrator', '2022-09-07 01:42:45', 1, 1060, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 91);
INSERT INTO "public"."Sys_TableColumn" VALUES (905, NULL, NULL, NULL, NULL, 'Method', 'Method', 'string', 110, NULL, NULL, NULL, NULL, 'Method', NULL, 2, 'select', NULL, 1, 1, NULL, 0, 1, 0, 50, 'SuperAdministrator', '2022-09-07 01:42:45', 1, 1160, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 91);
INSERT INTO "public"."Sys_TableColumn" VALUES (906, NULL, NULL, NULL, NULL, 'TimeOut', 'TimeOut', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2022-09-07 01:42:45', 1, 1152, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzOptions', 91);
INSERT INTO "public"."Sys_TableColumn" VALUES (907, NULL, NULL, NULL, NULL, 'ExceptionInfo', 'ErrorMsg', 'string', 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'SuperAdministrator', '2022-09-05 23:49:32', 1, 840, NULL, NULL, NULL, NULL, 0, 'Sys_QuartzLog', 93);
INSERT INTO "public"."Sys_TableColumn" VALUES (908, NULL, NULL, NULL, NULL, 'NextStepIds', 'NextStepIds', 'string', 220, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 500, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (909, NULL, NULL, NULL, NULL, 'ParentId', 'ParentId', 'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 2000, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (911, NULL, NULL, NULL, NULL, 'AuditRefuse', 'AuditRefuse', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (912, NULL, NULL, NULL, NULL, 'AuditBack', 'AuditBack', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (913, NULL, NULL, NULL, NULL, 'AuditMethod', 'AuditMethod', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (914, NULL, NULL, NULL, NULL, 'SendMail', 'SendMail', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (915, NULL, NULL, NULL, NULL, 'Filters', 'Filters', 'string', 220, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4000, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (918, NULL, NULL, NULL, NULL, 'AuditingEdit', 'AuditingEdit', 'int', 80, NULL, NULL, NULL, NULL, 'enable', NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 17:04:22', 1, 1010, NULL, NULL, 1, 'select', 0, 'Sys_WorkFlow', 85);
INSERT INTO "public"."Sys_TableColumn" VALUES (919, NULL, NULL, NULL, NULL, 'StepAttrType(start、node、end))', 'StepAttrType', 'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 50, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (920, NULL, NULL, NULL, NULL, 'StepAttrType(start、node、end))', 'StepAttrType', 'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (921, NULL, NULL, NULL, NULL, 'CurrentStepId', 'CurrentStepId', 'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, 'SuperAdministrator', '2023-05-13 12:59:47', 1, 960, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 88);
INSERT INTO "public"."Sys_TableColumn" VALUES (922, NULL, NULL, NULL, NULL, '', 'ParentId', 'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 2000, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (924, NULL, NULL, NULL, NULL, '', 'NextStepId', 'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);
INSERT INTO "public"."Sys_TableColumn" VALUES (925, NULL, NULL, NULL, NULL, '', 'Id', 'guid', 110, NULL, '2023-04-26 11:52:20', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, 'SuperAdministrator', '2023-04-26 11:54:08', 1, 1100, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 94);
INSERT INTO "public"."Sys_TableColumn" VALUES (926, NULL, NULL, NULL, NULL, '', 'WorkFlowTable_Id', 'guid', 110, NULL, '2023-04-26 11:52:20', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 16, 'SuperAdministrator', '2023-04-26 11:54:08', 1, 1050, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 94);
INSERT INTO "public"."Sys_TableColumn" VALUES (927, NULL, NULL, NULL, NULL, '', 'WorkFlowTableStep_Id', 'guid', 110, NULL, '2023-04-26 11:52:20', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 16, 'SuperAdministrator', '2023-04-26 11:54:08', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 94);
INSERT INTO "public"."Sys_TableColumn" VALUES (928, NULL, NULL, NULL, NULL, 'StepId', 'StepId', 'string', 120, NULL, '2023-04-26 11:52:20', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, 'SuperAdministrator', '2023-04-26 11:54:08', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 94);
INSERT INTO "public"."Sys_TableColumn" VALUES (929, NULL, NULL, NULL, NULL, 'StepName', 'StepName', 'string', 180, NULL, '2023-04-26 11:52:20', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, 'SuperAdministrator', '2023-04-26 11:54:08', 1, 900, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 94);
INSERT INTO "public"."Sys_TableColumn" VALUES (930, NULL, NULL, NULL, NULL, '', 'AuditId', 'int', 110, NULL, '2023-04-26 11:52:20', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-04-26 11:54:08', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 94);
INSERT INTO "public"."Sys_TableColumn" VALUES (931, NULL, NULL, NULL, NULL, '', 'Auditor', 'string', 120, NULL, '2023-04-26 11:52:20', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, 'SuperAdministrator', '2023-04-26 11:54:08', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 94);
INSERT INTO "public"."Sys_TableColumn" VALUES (932, NULL, NULL, NULL, NULL, '', 'AuditStatus', 'int', 110, NULL, '2023-04-26 11:52:20', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-04-26 11:54:08', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 94);
INSERT INTO "public"."Sys_TableColumn" VALUES (933, NULL, NULL, NULL, NULL, '', 'AuditResult', 'string', 220, NULL, '2023-04-26 11:52:20', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1000, 'SuperAdministrator', '2023-04-26 11:54:08', 1, 700, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 94);
INSERT INTO "public"."Sys_TableColumn" VALUES (934, NULL, NULL, NULL, NULL, '', 'AuditDate', 'DateTime', 150, NULL, '2023-04-26 11:52:20', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-04-26 11:54:08', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 94);
INSERT INTO "public"."Sys_TableColumn" VALUES (935, NULL, NULL, NULL, NULL, '', 'Remark', 'string', 220, NULL, '2023-04-26 11:52:20', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1000, 'SuperAdministrator', '2023-04-26 11:54:08', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 94);
INSERT INTO "public"."Sys_TableColumn" VALUES (936, NULL, NULL, NULL, NULL, '', 'CreateDate', 'DateTime', 150, NULL, '2023-04-26 11:52:20', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-04-26 11:54:08', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableAuditLog', 94);
INSERT INTO "public"."Sys_TableColumn" VALUES (937, NULL, NULL, NULL, NULL, '', 'DepartmentId', 'guid', 110, NULL, '2023-05-08 02:05:31', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, 'SuperAdministrator', '2023-05-13 09:51:06', 1, 1150, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 95);
INSERT INTO "public"."Sys_TableColumn" VALUES (938, NULL, NULL, NULL, NULL, 'DepartmentName', 'DepartmentName', 'string', 180, NULL, '2023-05-08 02:05:31', 1, 'SuperAdministrator', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, 'SuperAdministrator', '2023-05-13 09:51:06', 1, 1100, NULL, NULL, 1, 'like', 0, 'Sys_Department', 95);
INSERT INTO "public"."Sys_TableColumn" VALUES (939, NULL, NULL, NULL, NULL, 'DepartmentCode', 'DepartmentCode', 'string', 90, NULL, '2023-05-08 02:05:31', 1, 'SuperAdministrator', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, 'SuperAdministrator', '2023-05-13 09:51:06', 1, 1050, NULL, NULL, 1, NULL, 0, 'Sys_Department', 95);
INSERT INTO "public"."Sys_TableColumn" VALUES (940, NULL, NULL, NULL, NULL, 'ParentId', 'ParentId', 'guid', 110, NULL, '2023-05-08 02:05:31', 1, 'SuperAdministrator', 'organization', NULL, 3, 'cascader', NULL, 1, 0, NULL, 0, 1, 0, 16, 'SuperAdministrator', '2023-05-13 09:51:06', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 95);
INSERT INTO "public"."Sys_TableColumn" VALUES (941, NULL, NULL, NULL, NULL, 'DepartmentType', 'DepartmentType', 'string', 110, NULL, '2023-05-08 02:05:31', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 50, 'SuperAdministrator', '2023-05-13 09:51:06', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 95);
INSERT INTO "public"."Sys_TableColumn" VALUES (942, NULL, NULL, NULL, NULL, 'Enable', 'Enable', 'int', 110, NULL, '2023-05-08 02:05:31', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 09:51:06', 1, 900, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 95);
INSERT INTO "public"."Sys_TableColumn" VALUES (943, NULL, NULL, NULL, NULL, 'Remark', 'Remark', 'string', 100, NULL, '2023-05-08 02:05:31', 1, 'SuperAdministrator', NULL, NULL, 5, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 500, 'SuperAdministrator', '2023-05-13 09:51:06', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 95);
INSERT INTO "public"."Sys_TableColumn" VALUES (944, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 100, NULL, '2023-05-08 02:05:31', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 09:51:06', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 95);
INSERT INTO "public"."Sys_TableColumn" VALUES (945, NULL, NULL, NULL, NULL, 'Creator', 'Creator', 'string', 90, NULL, '2023-05-08 02:05:31', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, 'SuperAdministrator', '2023-05-13 09:51:06', 1, 750, NULL, NULL, 1, NULL, 0, 'Sys_Department', 95);
INSERT INTO "public"."Sys_TableColumn" VALUES (946, NULL, NULL, NULL, NULL, 'CreateDate', 'CreateDate', 'DateTime', 145, NULL, '2023-05-08 02:05:31', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-05-13 09:51:06', 1, 700, NULL, NULL, 1, 'datetime', 0, 'Sys_Department', 95);
INSERT INTO "public"."Sys_TableColumn" VALUES (947, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 100, NULL, '2023-05-08 02:05:31', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 09:51:06', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 95);
INSERT INTO "public"."Sys_TableColumn" VALUES (948, NULL, NULL, NULL, NULL, 'Modifier', 'Modifier', 'string', 90, NULL, '2023-05-08 02:05:31', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, 'SuperAdministrator', '2023-05-13 09:51:06', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 95);
INSERT INTO "public"."Sys_TableColumn" VALUES (949, NULL, NULL, NULL, NULL, 'ModifyDate', 'ModifyDate', 'DateTime', 140, NULL, '2023-05-08 02:05:31', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-05-13 09:51:06', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_Department', 95);
INSERT INTO "public"."Sys_TableColumn" VALUES (950, NULL, NULL, NULL, NULL, '', 'Id', 'guid', 110, NULL, '2023-05-08 02:07:44', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, 'SuperAdministrator', '2023-05-13 10:08:37', 1, 1000, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 96);
INSERT INTO "public"."Sys_TableColumn" VALUES (951, NULL, NULL, NULL, NULL, '', 'UserId', 'int', 110, NULL, '2023-05-08 02:07:44', 1, 'SuperAdministrator', NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, 'SuperAdministrator', '2023-05-13 10:08:37', 1, 950, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 96);
INSERT INTO "public"."Sys_TableColumn" VALUES (952, NULL, NULL, NULL, NULL, '', 'DepartmentId', 'guid', 110, NULL, '2023-05-08 02:07:44', 1, 'SuperAdministrator', NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, 0, 0, 16, 'SuperAdministrator', '2023-05-13 10:08:37', 1, 900, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 96);
INSERT INTO "public"."Sys_TableColumn" VALUES (953, NULL, NULL, NULL, NULL, '', 'Enable', 'int', 110, NULL, '2023-05-08 02:07:44', 1, 'SuperAdministrator', NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, 'SuperAdministrator', '2023-05-13 10:08:37', 1, 850, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 96);
INSERT INTO "public"."Sys_TableColumn" VALUES (954, NULL, NULL, NULL, NULL, '', 'CreateID', 'int', 100, NULL, '2023-05-08 02:07:44', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 10:08:37', 1, 800, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 96);
INSERT INTO "public"."Sys_TableColumn" VALUES (955, NULL, NULL, NULL, NULL, '', 'Creator', 'string', 100, NULL, '2023-05-08 02:07:44', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, 'SuperAdministrator', '2023-05-13 10:08:37', 1, 750, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 96);
INSERT INTO "public"."Sys_TableColumn" VALUES (956, NULL, NULL, NULL, NULL, '', 'CreateDate', 'DateTime', 150, NULL, '2023-05-08 02:07:44', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-05-13 10:08:37', 1, 700, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 96);
INSERT INTO "public"."Sys_TableColumn" VALUES (957, NULL, NULL, NULL, NULL, '', 'ModifyID', 'int', 100, NULL, '2023-05-08 02:07:44', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 10:08:37', 1, 650, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 96);
INSERT INTO "public"."Sys_TableColumn" VALUES (958, NULL, NULL, NULL, NULL, '', 'Modifier', 'string', 100, NULL, '2023-05-08 02:07:44', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, 'SuperAdministrator', '2023-05-13 10:08:37', 1, 600, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 96);
INSERT INTO "public"."Sys_TableColumn" VALUES (959, NULL, NULL, NULL, NULL, '', 'ModifyDate', 'DateTime', 150, NULL, '2023-05-08 02:07:44', 1, 'SuperAdministrator', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, 'SuperAdministrator', '2023-05-13 10:08:37', 1, 550, NULL, NULL, NULL, NULL, 0, 'Sys_UserDepartment', 96);
INSERT INTO "public"."Sys_TableColumn" VALUES (960, NULL, NULL, NULL, 12, 'DeptIds', 'DeptIds', 'string', 140, NULL, NULL, NULL, NULL, 'organization', NULL, 6, 'treeSelect', NULL, 1, 0, NULL, 0, 1, 0, 2000, 'SuperAdministrator', '2023-05-13 10:20:05', 1, 7800, NULL, NULL, NULL, 'cascader', 0, 'Sys_User', 6);
INSERT INTO "public"."Sys_TableColumn" VALUES (961, NULL, NULL, NULL, NULL, 'StepName', 'StepName', 'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, 'SuperAdministrator', '2023-05-13 12:59:47', 1, 955, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTable', 88);
INSERT INTO "public"."Sys_TableColumn" VALUES (962, NULL, NULL, NULL, NULL, 'Weight', 'Weight', 'int', 100, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 17:04:22', 1, 1011, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlow', 85);
INSERT INTO "public"."Sys_TableColumn" VALUES (963, NULL, NULL, NULL, NULL, 'Weight', 'Weight', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 16:40:14', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowStep', 87);
INSERT INTO "public"."Sys_TableColumn" VALUES (964, NULL, NULL, NULL, NULL, '', 'Weight', 'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, 'SuperAdministrator', '2023-05-13 16:40:30', 1, 0, NULL, NULL, NULL, NULL, 0, 'Sys_WorkFlowTableStep', 89);

-- ----------------------------
-- Table structure for Sys_TableInfo
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_TableInfo";
CREATE TABLE "public"."Sys_TableInfo" (
                                          "Table_Id" int4 NOT NULL,
                                          "CnName" varchar(70) COLLATE "pg_catalog"."default",
                                          "ColumnCNName" varchar(100) COLLATE "pg_catalog"."default",
                                          "DBServer" text COLLATE "pg_catalog"."default",
                                          "DataTableType" varchar(200) COLLATE "pg_catalog"."default",
                                          "DetailCnName" varchar(200) COLLATE "pg_catalog"."default",
                                          "DetailName" varchar(200) COLLATE "pg_catalog"."default",
                                          "EditorType" varchar(100) COLLATE "pg_catalog"."default",
                                          "Enable" int4,
                                          "ExpressField" varchar(200) COLLATE "pg_catalog"."default",
                                          "FolderName" varchar(200) COLLATE "pg_catalog"."default",
                                          "Namespace" varchar(200) COLLATE "pg_catalog"."default",
                                          "OrderNo" int4,
                                          "ParentId" int4,
                                          "RichText" varchar(100) COLLATE "pg_catalog"."default",
                                          "SortName" varchar(70) COLLATE "pg_catalog"."default",
                                          "TableName" varchar(70) COLLATE "pg_catalog"."default",
                                          "TableTrueName" varchar(100) COLLATE "pg_catalog"."default",
                                          "UploadField" varchar(100) COLLATE "pg_catalog"."default",
                                          "UploadMaxCount" int4
)
;

-- ----------------------------
-- Sequence structure for sys_tableinfo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_tableinfo_id_seq";
CREATE SEQUENCE "public"."sys_tableinfo_id_seq"
    INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 100
CACHE 1;
ALTER TABLE "public"."Sys_TableInfo" ALTER COLUMN "Table_Id" SET DEFAULT nextval('sys_tableinfo_id_seq');

-- ----------------------------
-- Records of Sys_TableInfo
-- ----------------------------
INSERT INTO "public"."Sys_TableInfo" VALUES (2, 'RoleManagement', 'RoleManagement', NULL, NULL, NULL, NULL, NULL, 0, 'RoleName', 'System', 'VOL.System', NULL, 8, NULL, NULL, 'Sys_Role', 'Sys_Role', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (3, 'DictionaryData', 'DictionaryData', NULL, NULL, 'DictionaryDetails', 'Sys_DictionaryList', NULL, 0, 'DicName', 'System', 'VOL.System', NULL, 11, NULL, NULL, 'Sys_Dictionary', 'Sys_Dictionary', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (4, 'DictionaryDetails', 'DictionaryDetails', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'System', 'VOL.System', NULL, 11, NULL, NULL, 'Sys_DictionaryList', 'Sys_DictionaryList', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (5, 'SystemLog', 'SystemLog', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'System', 'VOL.System', NULL, 10, NULL, NULL, 'Sys_Log', 'Sys_Log', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (6, NULL, 'UserManagement', NULL, NULL, NULL, NULL, NULL, 0, 'UserName', 'System', 'VOL.System', NULL, 8, NULL, '', 'Sys_User', 'Sys_User', 'HeadImageUrl', 1);
INSERT INTO "public"."Sys_TableInfo" VALUES (8, 'UserManagement', 'UserManagement', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'System', 'VOL.System', 200, 0, NULL, NULL, 'None', 'None', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (10, 'LogManagement', 'LogManagement', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'System', 'VOL.System', NULL, 0, NULL, '170', 'LogManagement', NULL, NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (11, 'ConfigurationManagement', 'ConfigurationManagement', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'System', 'VOL.System', NULL, 0, NULL, '250', 'ConfigurationManagement', 'ConfigurationManagement', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (15, 'AvgPrice', 'AutomaticallyBindTheDropDownBox', NULL, NULL, NULL, NULL, NULL, 0, 'AvgPrice', 'App', 'VOL.AppManager', NULL, 79, NULL, NULL, 'App_TransactionAvgPrice', 'App_TransactionAvgPrice', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (16, NULL, 'CustomImplementationOfOneToMany', NULL, NULL, NULL, NULL, NULL, 0, 'Price', 'App', 'VOL.AppManager', NULL, 79, NULL, NULL, 'App_ReportPrice', 'App_ReportPrice', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (19, NULL, 'ImportExport', NULL, NULL, NULL, NULL, NULL, 0, 'PhoneNo', 'App', 'VOL.AppManager', NULL, 79, NULL, NULL, 'App_Transaction', 'App_Transaction', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (20, NULL, 'EnableImageSupport', NULL, NULL, NULL, NULL, NULL, 0, 'ExpertName', 'App', 'VOL.AppManager', NULL, 79, NULL, NULL, 'App_Expert', 'App_Expert', 'HeadImageUrl', 1);
INSERT INTO "public"."Sys_TableInfo" VALUES (27, ' Information', 'StaticPagePublishing', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'News', 'VOL.AppManager', NULL, 0, NULL, NULL, ' Information', NULL, NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (28, NULL, 'NewsList', NULL, NULL, NULL, NULL, NULL, 0, 'Title', 'News', 'VOL.AppManager', NULL, 27, 'Content', 'CreateDate', 'App_News', 'App_News', 'ImageUrl', 3);
INSERT INTO "public"."Sys_TableInfo" VALUES (76, 'OrderManagement', 'ModifierCompleteExample', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'OrderManagement', 'VOL.Order', NULL, 0, NULL, NULL, 'OrderManagement', 'OrderManagement', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (77, 'SalesOrder', 'SalesOrder', NULL, NULL, 'OrderDetails', 'SellOrderList', NULL, 0, 'TranNo', 'Sell', 'VOL.Order', NULL, 76, NULL, 'CreateDate', 'SellOrder', 'SellOrder', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (78, 'OrderDetails', 'OrderDetails', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Order', 'VOL.Order', NULL, 76, NULL, 'CreateDate', 'SellOrderList', NULL, NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (79, 'Table SingleTableData', 'Table+SingleTableData', NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Order', 'VOL.Order', NULL, 0, NULL, NULL, 'Table+SingleTableData', NULL, NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (80, 'BasicFormQuery', 'BasicForm+EditReadOnly', NULL, NULL, NULL, NULL, NULL, 0, 'Name', 'Appointment', 'VOL.Order', NULL, 79, NULL, 'CreateDate', 'App_Appointment', 'App_Appointment', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (81, 'FormDesign', 'FormDesign', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'form', 'VOL.System', NULL, 0, NULL, NULL, '0', NULL, NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (82, 'FormDesign', 'FormDesign', NULL, NULL, NULL, NULL, NULL, 1, 'Title', 'form', 'VOL.System', NULL, 81, NULL, 'CreateDate', 'FormDesignOptions', 'FormDesignOptions', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (83, 'DataCollection', 'DataCollection', NULL, NULL, NULL, '', NULL, 1, NULL, 'form', 'VOL.System', NULL, 81, NULL, 'CreateDate', 'FormCollectionObject', 'FormCollectionObject', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (84, 'ApprovalProcess', 'ApprovalProcess', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'flow', 'VOL.System', NULL, 0, NULL, NULL, 'ApprovalProcess', NULL, NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (85, 'ApprovalProcess', 'ApprovalProcessConfiguration', NULL, NULL, 'ApprovalSteps', 'Sys_WorkFlowStep', NULL, 1, 'WorkName', 'flow', 'VOL.System', NULL, 84, NULL, 'CreateDate', 'Sys_WorkFlow', 'Sys_WorkFlow', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (87, 'ApprovalNode', 'ApprovalNodeConfiguration', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'flow', 'VOL.System', NULL, 84, NULL, 'CreateDate', 'Sys_WorkFlowStep', 'Sys_WorkFlowStep', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (88, 'ApprovalProcess', 'ApprovalProcess', NULL, NULL, 'ApprovalNode', 'Sys_WorkFlowTableStep', NULL, 1, '', 'flow', 'VOL.System', NULL, 84, NULL, 'CreateDate', 'Sys_WorkFlowTable', 'Sys_WorkFlowTable', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (89, 'ApprovalNode', 'ApprovalNode', NULL, NULL, NULL, NULL, NULL, 1, '', 'flow', 'VOL.System', NULL, 84, NULL, 'CreateDate', 'Sys_WorkFlowTableStep', 'Sys_WorkFlowTableStep', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (90, 'ScheduledTasks', 'ScheduledTasks', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'ScheduledTasks', 'VOL.System', NULL, 0, NULL, NULL, 'ScheduledTasks', NULL, NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (91, 'ScheduledTasks', 'ScheduledTasks', NULL, NULL, NULL, NULL, NULL, 1, 'TaskName', 'Quartz', 'VOL.System', NULL, 90, NULL, 'TaskName', 'Sys_QuartzOptions', 'Sys_QuartzOptions', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (93, 'ExecutionRecord', 'ExecutionRecord', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Quartz', 'VOL.System', NULL, 90, NULL, 'StratDate', 'Sys_QuartzLog', 'Sys_QuartzLog', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (94, 'ApprovalRecord', 'ApprovalRecord', NULL, NULL, NULL, NULL, NULL, 1, '', 'flow', 'VOL.System', NULL, 84, NULL, 'CreateDate', 'Sys_WorkFlowTableAuditLog', 'Sys_WorkFlowTableAuditLog', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (95, 'OrganizationalStructure', 'OrganizationalStructure', NULL, NULL, NULL, NULL, NULL, 1, 'DepartmentName', 'System', 'VOL.System', NULL, 8, NULL, 'CreateDate', 'Sys_Department', 'Sys_Department', NULL, NULL);
INSERT INTO "public"."Sys_TableInfo" VALUES (96, 'UserDepartment', 'TheUserBelongsToTheOrganization', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'System', 'VOL.System', NULL, 8, NULL, 'CreateDate', 'Sys_UserDepartment', 'Sys_UserDepartment', NULL, NULL);

-- ----------------------------
-- Table structure for Sys_WorkFlow
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_WorkFlow";
CREATE TABLE "public"."Sys_WorkFlow" (
                                         "WorkFlow_Id" uuid NOT NULL,
                                         "WorkName" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
                                         "WorkTable" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
                                         "WorkTableName" varchar(200) COLLATE "pg_catalog"."default",
                                         "NodeConfig" text COLLATE "pg_catalog"."default",
                                         "LineConfig" text COLLATE "pg_catalog"."default",
                                         "Remark" text COLLATE "pg_catalog"."default",
                                         "Weight" int4,
                                         "CreateDate" timestamp(6),
                                         "CreateID" int4,
                                         "Creator" varchar(50) COLLATE "pg_catalog"."default",
                                         "Enable" int2,
                                         "Modifier" varchar(50) COLLATE "pg_catalog"."default",
                                         "ModifyDate" timestamp(6),
                                         "ModifyID" int4,
                                         "AuditingEdit" int4
)
;
COMMENT ON COLUMN "public"."Sys_WorkFlow"."WorkName" IS 'WorkName';
COMMENT ON COLUMN "public"."Sys_WorkFlow"."WorkTable" IS 'WorkTable';
COMMENT ON COLUMN "public"."Sys_WorkFlow"."WorkTableName" IS 'WorkTableName';
COMMENT ON COLUMN "public"."Sys_WorkFlow"."NodeConfig" IS 'NodeConfig';
COMMENT ON COLUMN "public"."Sys_WorkFlow"."LineConfig" IS 'LineConfig';
COMMENT ON COLUMN "public"."Sys_WorkFlow"."Remark" IS 'Remark';
COMMENT ON COLUMN "public"."Sys_WorkFlow"."Weight" IS 'Weight';

-- ----------------------------
-- Records of Sys_WorkFlow
-- ----------------------------
INSERT INTO "public"."Sys_WorkFlow" VALUES ('25F1B307-4562-4D0B-9ACC-73FCE3C57EB8', 'ModifierProcess', 'SellOrder', 'SalesOrder', '[{"id":"folpb3e1qe","name":"ProcessStart","type":"start","left":"296px","top":"16px","ico":"el-icon-time","state":"success","filters":[{"field":"OrderType","value":["1"],"filterType":"=","data":[{"value":"1","label":"Delivery","key":"1"},{"value":"2","label":"Return","key":"2"},{"value":"3","label":"ReturnOrder","key":"3"}]}]},{"id":"3nfhu1i4","name":"<=100","type":"node","left":"52px","top":"190px","ico":"el-icon-news","state":"success","auditType":1,"userId":3362,"filters":[{"field":"Qty","value":"100","filterType":"<=","data":null}]},{"id":"eah755bg8","name":"ProcessEnd","type":"end","left":"302.2px","top":"346.7px","ico":"el-icon-switch-button","state":"success"},{"id":"mtisrzm4x","name":">=200","type":"node","left":"446px","top":"182px","ico":"el-icon-news","state":"success","filters":[{"field":"Qty","value":"200","filterType":">=","data":null}],"auditType":1,"userId":1}]', '[{"from":"folpb3e1qe","to":"3nfhu1i4","label":"x"},{"from":"3nfhu1i4","to":"eah755bg8","label":"x"},{"from":"folpb3e1qe","to":"mtisrzm4x","label":"x"},{"from":"mtisrzm4x","to":"eah755bg8","label":"x"}]', NULL, 50, '2023-05-06 16:30:30', 1, 'SuperAdministrator', 1, 'SuperAdministrator', '2023-05-13 17:04:36', 1, 0);
INSERT INTO "public"."Sys_WorkFlow" VALUES ('AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'Department+Role_IdReviewByConditions', 'SellOrder', 'OrderManagement', '[{"id":"iyzakw0c8","name":"DeliveryOrderProcess","type":"start","left":"325px","top":"16px","ico":"el-icon-time","state":"success","filters":[{"field":"OrderType","value":["1"],"filterType":"=","data":[{"value":"1","label":"Delivery","key":"1"},{"value":"2","label":"Return","key":"2"},{"value":"3","label":"ReturnOrder","key":"3"}]}]},{"id":"jkqinw0zc","name":"UserApproval>=5000","type":"node","left":"56px","top":"92px","ico":"el-icon-news","state":"success","filters":[{"field":"Qty","value":"5000","filterType":">=","data":null}],"auditType":1,"userId":1,"auditRefuse":1,"auditBack":2,"sendMail":1},{"id":"5zfqhzz198","name":"ProcessEnd","type":"end","left":"322px","top":"530px","ico":"el-icon-switch-button","state":"success","filters":[]},{"id":"bth346cr4d","name":"OtherModifierAdministratorApproval","type":"node","left":"574px","top":"152px","ico":"el-icon-news","state":"success","filters":[],"auditType":1,"userId":3362,"auditRefuse":1,"auditBack":1},{"id":"b9cv1h35jg","name":"ProductDepartment>=7000Approval","type":"node","left":"327px","top":"225px","ico":"el-icon-news","state":"success","filters":[],"auditType":3,"deptId":"ec238385-f907-44de-b99b-0eddcffa6750"},{"id":"mcpdtusm42","name":"ModifierAdministrator<5500Approval","type":"node","left":"14px","top":"234px","ico":"el-icon-news","state":"success","filters":[{"field":"Qty","value":"5500","filterType":"<","data":null}],"auditType":2,"roleId":2},{"id":"hnoj7gaczc","name":"SuperAdministratorApproval","type":"node","left":"173px","top":"429px","ico":"el-icon-news","state":"success","filters":[],"auditType":1,"userId":1}]', '[{"from":"iyzakw0c8","to":"jkqinw0zc","label":"x"},{"from":"iyzakw0c8","to":"bth346cr4d","label":"x"},{"from":"bth346cr4d","to":"5zfqhzz198","label":"x"},{"from":"jkqinw0zc","to":"mcpdtusm42","label":"x"},{"from":"jkqinw0zc","to":"b9cv1h35jg","label":"x"},{"from":"mcpdtusm42","to":"hnoj7gaczc","label":"x"},{"from":"hnoj7gaczc","to":"5zfqhzz198","label":"x"},{"from":"b9cv1h35jg","to":"hnoj7gaczc","label":"x"}]', 'Department、Role_Id、Conditions are approved at the same time', 100, '2023-05-13 16:31:42', 1, 'SuperAdministrator', 1, 'SuperAdministrator', '2023-05-13 16:49:16', 1, 0);
INSERT INTO "public"."Sys_WorkFlow" VALUES ('BE42A851-147A-493A-B42F-3DC7D3061E32', 'ReturnSingleQuantity>10Process', 'SellOrder', 'SalesOrder', '[{"id":"18umlmt5a","name":"qty<10","type":"node","left":"186px","top":"181px","ico":"el-icon-news","state":"success","filters":[{"field":"Qty","value":"10","filterType":"<","data":null}],"auditType":1,"userId":3362},{"id":"qq4qwkz9il","name":"ProcessEnd","type":"end","left":"241px","top":"400px","ico":"el-icon-switch-button","state":"success","filters":[]},{"id":"yuo5z0v07p","name":"ProcessStart","type":"start","left":"343px","top":"59px","ico":"el-icon-time","state":"success","filters":[{"field":"OrderType","value":["2"],"filterType":"=","data":[{"value":"1","label":"Delivery","key":"1"},{"value":"2","label":"Return","key":"2"},{"value":"3","label":"ReturnOrder","key":"3"}]}]},{"id":"xebxs78ls","name":"qty>10","type":"node","left":"501px","top":"175px","ico":"el-icon-news","state":"success","filters":[{"field":"Qty","value":"10","filterType":">=","data":null}],"auditType":1,"userId":3362},{"id":"xk0xirr5zf","name":">=20","type":"node","left":"479px","top":"299px","ico":"el-icon-news","state":"success","filters":[{"field":"Qty","value":"20","filterType":">=","data":null}],"auditType":2,"roleId":2}]', '[{"from":"yuo5z0v07p","to":"18umlmt5a","label":"x"},{"from":"yuo5z0v07p","to":"xebxs78ls","label":"x"},{"from":"18umlmt5a","to":"qq4qwkz9il","label":"x"},{"from":"xebxs78ls","to":"xk0xirr5zf","label":"x"},{"from":"xk0xirr5zf","to":"qq4qwkz9il","label":"x"}]', NULL, 50, '2023-05-06 19:58:08', 1, 'SuperAdministrator', 1, 'SuperAdministrator', '2023-05-13 17:03:23', 1, 1);

-- ----------------------------
-- Table structure for Sys_WorkFlowStep
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_WorkFlowStep";
CREATE TABLE "public"."Sys_WorkFlowStep" (
                                             "WorkStepFlow_Id" uuid NOT NULL,
                                             "WorkFlow_Id" uuid,
                                             "StepId" varchar(100) COLLATE "pg_catalog"."default",
                                             "StepName" varchar(200) COLLATE "pg_catalog"."default",
                                             "StepType" int4,
                                             "StepValue" text COLLATE "pg_catalog"."default",
                                             "OrderId" int4,
                                             "Remark" text COLLATE "pg_catalog"."default",
                                             "CreateDate" timestamp(6),
                                             "CreateID" int4,
                                             "Creator" varchar(50) COLLATE "pg_catalog"."default",
                                             "Enable" int2,
                                             "Modifier" varchar(50) COLLATE "pg_catalog"."default",
                                             "ModifyDate" timestamp(6),
                                             "ModifyID" int4,
                                             "NextStepIds" text COLLATE "pg_catalog"."default",
                                             "ParentId" text COLLATE "pg_catalog"."default",
                                             "AuditRefuse" int4,
                                             "AuditBack" int4,
                                             "AuditMethod" int4,
                                             "SendMail" int4,
                                             "Filters" text COLLATE "pg_catalog"."default",
                                             "StepAttrType" varchar(70) COLLATE "pg_catalog"."default",
                                             "Weight" int4
)
;
COMMENT ON COLUMN "public"."Sys_WorkFlowStep"."WorkFlow_Id" IS 'WorkFlow_Id';
COMMENT ON COLUMN "public"."Sys_WorkFlowStep"."StepId" IS 'StepId';
COMMENT ON COLUMN "public"."Sys_WorkFlowStep"."StepName" IS 'StepName';
COMMENT ON COLUMN "public"."Sys_WorkFlowStep"."StepType" IS 'StepType';
COMMENT ON COLUMN "public"."Sys_WorkFlowStep"."StepValue" IS 'StepValue';
COMMENT ON COLUMN "public"."Sys_WorkFlowStep"."Remark" IS 'Remark';

-- ----------------------------
-- Records of Sys_WorkFlowStep
-- ----------------------------
INSERT INTO "public"."Sys_WorkFlowStep" VALUES ('0D89E5AD-40E4-4B1A-E6EB-08DB4E292860', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'yuo5z0v07p', 'ProcessStart', NULL, NULL, 0, NULL, '2023-05-06 19:58:08', 1, 'SuperAdministrator', NULL, 'SuperAdministrator', '2023-05-13 17:03:23', 1, NULL, NULL, NULL, NULL, NULL, NULL, '[{"field":"OrderType","filterType":"=","value":"2"}]', 'start', NULL);
INSERT INTO "public"."Sys_WorkFlowStep" VALUES ('1CE1ABDB-5FBA-44A8-2AE9-08DB538C7AA7', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'jkqinw0zc', 'UserApproval>=5000', 1, '1', 1, NULL, '2023-05-13 16:31:42', 1, 'SuperAdministrator', NULL, 'SuperAdministrator', '2023-05-13 16:49:16', 1, NULL, 'iyzakw0c8', 1, 2, NULL, 0, '[{"field":"Qty","filterType":">=","value":"5000"}]', 'node', NULL);
INSERT INTO "public"."Sys_WorkFlowStep" VALUES ('342E50A6-92F3-4A05-BB7F-A025E3FA0DA7', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'xebxs78ls', 'qty>10', 1, '3362', 2, NULL, '2023-05-06 20:01:24', 1, 'SuperAdministrator', NULL, 'SuperAdministrator', '2023-05-13 17:03:23', 1, NULL, 'yuo5z0v07p', NULL, NULL, NULL, 0, '[{"field":"Qty","filterType":">=","value":"10"}]', 'node', NULL);
INSERT INTO "public"."Sys_WorkFlowStep" VALUES ('34611B20-83EA-4166-2AE8-08DB538C7AA7', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'iyzakw0c8', 'DeliveryOrderProcess', NULL, NULL, 0, NULL, '2023-05-13 16:31:42', 1, 'SuperAdministrator', NULL, 'SuperAdministrator', '2023-05-13 16:49:16', 1, NULL, NULL, NULL, NULL, NULL, NULL, '[{"field":"OrderType","filterType":"=","value":"1"}]', 'start', NULL);
INSERT INTO "public"."Sys_WorkFlowStep" VALUES ('4D7781B0-FEAD-4267-B5E3-08DB4E0C2701', '25F1B307-4562-4D0B-9ACC-73FCE3C57EB8', '3nfhu1i4', '<=100', 1, '3362', 1, NULL, '2023-05-06 16:30:30', 1, 'SuperAdministrator', NULL, 'SuperAdministrator', '2023-05-13 17:04:36', 1, NULL, 'folpb3e1qe', NULL, NULL, NULL, 0, '[{"field":"Qty","filterType":"<=","value":"100"}]', 'node', NULL);
INSERT INTO "public"."Sys_WorkFlowStep" VALUES ('549425AD-43A9-450C-B5E4-08DB4E0C2701', '25F1B307-4562-4D0B-9ACC-73FCE3C57EB8', 'eah755bg8', 'ProcessEnd', NULL, NULL, 3, NULL, '2023-05-06 16:30:30', 1, 'SuperAdministrator', NULL, 'SuperAdministrator', '2023-05-13 17:04:36', 1, NULL, '3nfhu1i4,mtisrzm4x', NULL, NULL, NULL, 0, NULL, 'end', NULL);
INSERT INTO "public"."Sys_WorkFlowStep" VALUES ('5FE5984E-3BB8-4A5D-2AEB-08DB538C7AA7', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'mcpdtusm42', 'ModifierAdministrator<5500Approval', 2, '2', 3, NULL, '2023-05-13 16:31:42', 1, 'SuperAdministrator', NULL, 'SuperAdministrator', '2023-05-13 16:49:16', 1, NULL, 'jkqinw0zc', NULL, NULL, NULL, 0, '[{"field":"Qty","filterType":"<","value":"5500"}]', 'node', NULL);
INSERT INTO "public"."Sys_WorkFlowStep" VALUES ('717567AB-19CB-46FB-E6EC-08DB4E292860', 'BE42A851-147A-493A-B42F-3DC7D3061E32', '18umlmt5a', 'qty<10', 1, '3362', 1, NULL, '2023-05-06 19:58:08', 1, 'SuperAdministrator', NULL, 'SuperAdministrator', '2023-05-13 17:03:23', 1, NULL, 'yuo5z0v07p', NULL, NULL, NULL, 0, '[{"field":"Qty","filterType":"<","value":"10"}]', 'node', NULL);
INSERT INTO "public"."Sys_WorkFlowStep" VALUES ('9BABC207-2159-42C1-92AA-960F689A6AAD', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'qq4qwkz9il', 'ProcessEnd', NULL, NULL, 3, NULL, '2023-05-06 20:01:24', 1, 'SuperAdministrator', NULL, 'SuperAdministrator', '2023-05-13 17:03:23', 1, NULL, '18umlmt5a,xk0xirr5zf', NULL, NULL, NULL, 0, NULL, 'end', NULL);
INSERT INTO "public"."Sys_WorkFlowStep" VALUES ('A490B734-A54D-411E-2AEC-08DB538C7AA7', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'b9cv1h35jg', 'ProductDepartment>=7000Approval', 3, 'ec238385-f907-44de-b99b-0eddcffa6750', 4, NULL, '2023-05-13 16:31:42', 1, 'SuperAdministrator', NULL, 'SuperAdministrator', '2023-05-13 16:49:16', 1, NULL, 'jkqinw0zc', NULL, NULL, NULL, 0, NULL, 'node', NULL);
INSERT INTO "public"."Sys_WorkFlowStep" VALUES ('AC58FE6A-B5DC-4A1F-B5E2-08DB4E0C2701', '25F1B307-4562-4D0B-9ACC-73FCE3C57EB8', 'folpb3e1qe', 'ProcessStart', NULL, NULL, 0, NULL, '2023-05-06 16:30:30', 1, 'SuperAdministrator', NULL, 'SuperAdministrator', '2023-05-13 17:04:36', 1, NULL, NULL, NULL, NULL, NULL, NULL, '[{"field":"OrderType","filterType":"=","value":"1"}]', 'start', NULL);
INSERT INTO "public"."Sys_WorkFlowStep" VALUES ('B25C3BF2-8878-4283-2AEA-08DB538C7AA7', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'bth346cr4d', 'OtherModifierAdministratorApproval', 1, '3362', 2, NULL, '2023-05-13 16:31:42', 1, 'SuperAdministrator', NULL, 'SuperAdministrator', '2023-05-13 16:49:16', 1, NULL, 'iyzakw0c8', 1, 1, NULL, 0, NULL, 'node', NULL);
INSERT INTO "public"."Sys_WorkFlowStep" VALUES ('B95667C1-95DD-4370-2AED-08DB538C7AA7', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', '5zfqhzz198', 'ProcessEnd', NULL, NULL, 5, NULL, '2023-05-13 16:31:42', 1, 'SuperAdministrator', NULL, 'SuperAdministrator', '2023-05-13 16:49:16', 1, NULL, 'bth346cr4d,hnoj7gaczc', NULL, NULL, NULL, 0, NULL, 'end', NULL);
INSERT INTO "public"."Sys_WorkFlowStep" VALUES ('BCD55DBE-F145-4532-BC0C-BA876B4B48D3', '25F1B307-4562-4D0B-9ACC-73FCE3C57EB8', 'mtisrzm4x', '>=200', 1, '1', 2, NULL, '2023-05-06 19:56:37', 1, 'SuperAdministrator', NULL, 'SuperAdministrator', '2023-05-13 17:04:36', 1, NULL, 'folpb3e1qe', NULL, NULL, NULL, 0, '[{"field":"Qty","filterType":">=","value":"200"}]', 'node', NULL);
INSERT INTO "public"."Sys_WorkFlowStep" VALUES ('BEB46DA8-EF43-4844-2AEE-08DB538C7AA7', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'hnoj7gaczc', 'SuperAdministratorApproval', 1, '1', 6, NULL, '2023-05-13 16:31:42', 1, 'SuperAdministrator', NULL, 'SuperAdministrator', '2023-05-13 16:49:16', 1, NULL, 'mcpdtusm42,b9cv1h35jg', NULL, NULL, NULL, 0, NULL, 'node', NULL);
INSERT INTO "public"."Sys_WorkFlowStep" VALUES ('E63D434B-A434-44C1-93C2-8A8493C78ED2', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'xk0xirr5zf', '>=20', 2, '2', 4, NULL, '2023-05-06 20:01:24', 1, 'SuperAdministrator', NULL, 'SuperAdministrator', '2023-05-13 17:03:23', 1, NULL, 'xebxs78ls', NULL, NULL, NULL, 0, '[{"field":"Qty","filterType":">=","value":"20"}]', 'node', NULL);

-- ----------------------------
-- Table structure for Sys_WorkFlowTable
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_WorkFlowTable";
CREATE TABLE "public"."Sys_WorkFlowTable" (
                                              "WorkFlowTable_Id" uuid NOT NULL,
                                              "WorkFlow_Id" uuid,
                                              "WorkName" varchar(200) COLLATE "pg_catalog"."default",
                                              "WorkTableKey" varchar(200) COLLATE "pg_catalog"."default",
                                              "WorkTable" varchar(200) COLLATE "pg_catalog"."default",
                                              "WorkTableName" varchar(200) COLLATE "pg_catalog"."default",
                                              "CurrentOrderId" int4,
                                              "AuditStatus" int4,
                                              "CreateDate" timestamp(6),
                                              "CreateID" int4,
                                              "Creator" varchar(50) COLLATE "pg_catalog"."default",
                                              "Enable" int2,
                                              "Modifier" varchar(50) COLLATE "pg_catalog"."default",
                                              "ModifyDate" timestamp(6),
                                              "ModifyID" int4,
                                              "CurrentStepId" varchar(100) COLLATE "pg_catalog"."default",
                                              "StepName" text COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."Sys_WorkFlowTable"."WorkTableKey" IS 'WorkTableKey';
COMMENT ON COLUMN "public"."Sys_WorkFlowTable"."WorkTable" IS 'WorkTable';
COMMENT ON COLUMN "public"."Sys_WorkFlowTable"."WorkTableName" IS 'WorkTableName';

-- ----------------------------
-- Records of Sys_WorkFlowTable
-- ----------------------------
INSERT INTO "public"."Sys_WorkFlowTable" VALUES ('60BAFF11-492D-4E74-8E38-7F2FED2FEC8C', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'Department+Role_IdReviewByConditions', '323ab96f-49c1-4100-9d08-17db9f209df7', 'SellOrder', 'OrderManagement', NULL, 2, '2023-05-13 17:17:47', 1, 'SuperAdministrator', 1, NULL, NULL, NULL, 'b9cv1h35jg', 'UserApproval>=5000');
INSERT INTO "public"."Sys_WorkFlowTable" VALUES ('62C8999F-F07E-4D47-827C-B1C4E63AF323', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'Department+Role_IdReviewByConditions', '81d5db86-c85a-4b06-bc3a-08142811c522', 'SellOrder', 'OrderManagement', NULL, 0, '2023-05-13 17:19:06', 1, 'SuperAdministrator', 1, NULL, NULL, NULL, 'jkqinw0zc', 'UserApproval>=5000');
INSERT INTO "public"."Sys_WorkFlowTable" VALUES ('7DB5447A-7A78-40D8-9585-0AAB9375B61F', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'ReturnSingleQuantity>10Process', '55ae8c6c-6a11-4765-952a-7b4a3adece04', 'SellOrder', 'OrderManagement', NULL, 2, '2023-05-13 15:49:18', 1, 'SuperAdministrator', 1, NULL, NULL, NULL, 'xk0xirr5zf', 'qty>10');
INSERT INTO "public"."Sys_WorkFlowTable" VALUES ('A8A9CD0D-C885-434C-8ADC-B0347E05B08A', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'ReturnSingleQuantity>10Process', 'b67b7ec0-136c-4439-a530-cd6dd4d69a9c', 'SellOrder', 'OrderManagement', NULL, 1, '2023-05-13 15:58:43', 1, 'SuperAdministrator', 1, NULL, NULL, NULL, 'ReviewCompleted', 'qty>10');
INSERT INTO "public"."Sys_WorkFlowTable" VALUES ('D82F4733-9916-4714-BF35-900CEAA049C1', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'Department+Role_IdReviewByConditions', 'b1db23bd-ed48-4459-b9ed-355d97a7e16e', 'SellOrder', 'OrderManagement', NULL, 1, '2023-05-13 17:07:37', 1, 'SuperAdministrator', 1, NULL, NULL, NULL, 'ReviewCompleted', 'UserApproval>=5000');

-- ----------------------------
-- Table structure for Sys_WorkFlowTableAuditLog
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_WorkFlowTableAuditLog";
CREATE TABLE "public"."Sys_WorkFlowTableAuditLog" (
                                                      "Id" uuid NOT NULL,
                                                      "WorkFlowTable_Id" uuid,
                                                      "WorkFlowTableStep_Id" uuid,
                                                      "StepId" varchar(100) COLLATE "pg_catalog"."default",
                                                      "StepName" varchar(200) COLLATE "pg_catalog"."default",
                                                      "AuditId" int4,
                                                      "Auditor" varchar(100) COLLATE "pg_catalog"."default",
                                                      "AuditStatus" int4,
                                                      "AuditResult" text COLLATE "pg_catalog"."default",
                                                      "AuditDate" timestamp(6),
                                                      "Remark" text COLLATE "pg_catalog"."default",
                                                      "CreateDate" timestamp(6)
)
;

-- ----------------------------
-- Records of Sys_WorkFlowTableAuditLog
-- ----------------------------
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('032A246A-3D95-45AE-A02F-15397FE959A4', '38417B03-D70B-436B-8D24-F60ED5373DC6', 'EEE0B9EF-EB93-4680-8DCA-658B73C5D797', 'mtisrzm4x', '>=200', 1, 'SuperAdministrator', 0, NULL, '2023-05-08 16:48:16', NULL, '2023-05-08 16:48:16');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('033009CD-4227-4088-A7F4-0FE956717005', 'F00BF32C-7D32-45B7-AC3E-4E223A6E2DD6', '0F7C0A3C-A0FA-4FB4-9D4D-FBCD441FA449', 'mtisrzm4x', '>=200', 1, 'SuperAdministrator', 0, NULL, '2023-05-13 13:15:57', NULL, '2023-05-13 13:15:57');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('0404929A-1B62-4015-905F-C47B8488C0B5', 'A8A9CD0D-C885-434C-8ADC-B0347E05B08A', 'BE1DC0BF-96F0-46DB-8A02-90362B1B0B38', 'xebxs78ls', 'qty>10', 3362, 'AdminModifier', 1, '............', '2023-05-13 16:12:02', '............', '2023-05-13 16:12:02');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('04F7DBBD-D36D-4FC0-9222-A87B8475E9F1', 'A8A9CD0D-C885-434C-8ADC-B0347E05B08A', 'BE1DC0BF-96F0-46DB-8A02-90362B1B0B38', 'xebxs78ls', 'qty>10', 3362, 'AdminModifier', 1, 'Agree。。。。', '2023-05-13 16:02:58', 'Agree。。。。', '2023-05-13 16:02:58');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('0760AAF1-644F-4AE8-A28C-959583420365', 'D82F4733-9916-4714-BF35-900CEAA049C1', 'DE5133DF-9FF7-494D-BB76-C9E457DFEBAD', 'b9cv1h35jg', 'ProductDepartment>=7000Approval', 3362, 'AdminModifier', 1, 'AdminModifierAdministratorAgree。。', '2023-05-13 17:11:47', 'AdminModifierAdministratorAgree。。', '2023-05-13 17:11:47');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('088BDAB5-4BCF-4F12-A5C1-0F2E642EC66C', '7DB5447A-7A78-40D8-9585-0AAB9375B61F', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 15:49:18');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('08E13A05-901D-456A-9E96-39ABD8054D22', '827CE743-8340-4643-8512-DE6B8B998B9C', '4F5A3717-EA97-4E45-BB77-12E95A25523B', 'mtisrzm4x', '>=200', 1, 'SuperAdministrator', 0, NULL, '2023-05-08 16:36:42', NULL, '2023-05-08 16:36:42');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('09087F8C-4EDB-4FBF-BF04-97610D2EE880', '56A6D0FC-5B0D-4748-B436-1868865277C3', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 13:46:23');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('1A21CC26-EB65-4A68-BCEA-116F08B43882', '89F87FD9-B1FB-435B-8C92-7870D74214DD', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-08 01:20:31');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('1B780830-DA10-47CF-AA55-B6049CF1BC6B', '2C0D573D-F81F-4D98-89FF-75804B8BC877', 'D1E0D9F4-2476-43E5-BA73-9A3B6D3431F2', '3nfhu1i4', '<=100', 1, 'SuperAdministrator', 0, NULL, '2023-05-13 12:07:42', NULL, '2023-05-13 12:07:42');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('267C2E5B-4B55-4F5D-8A43-2920A08B89FB', '56A6D0FC-5B0D-4748-B436-1868865277C3', '89329EB5-620E-477A-80C5-9261DC1F6C60', 'mtisrzm4x', '>=200', 1, 'SuperAdministrator', 0, NULL, '2023-05-13 13:47:04', NULL, '2023-05-13 13:47:04');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('2BA41A15-768D-49DB-80F4-D6B9FF2DA546', 'EEF3FF36-111E-4398-BE9C-7C69E5D2B4C5', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-08 01:34:59');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('367AE81D-3BE4-4FA3-A5EE-555330B87FBE', 'D82F4733-9916-4714-BF35-900CEAA049C1', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 17:07:37');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('37CA151D-B43D-4364-AA6B-E2DF02720C07', 'BFF474A1-52E2-498B-8557-F7322BF34834', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-08 16:36:03');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('3A54FFCB-C687-41B3-A59C-FE287CB0BA38', 'DDD6EA0C-E3DB-49AD-8DFE-BB995C23BCF3', 'D6366D71-7FE1-480D-882C-D1B9A8419210', 'mtisrzm4x', '>=200', 1, 'SuperAdministrator', 3, '原因不明。。', '2023-05-13 15:37:08', '原因不明。。', '2023-05-13 15:37:08');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('3ABFDA8B-C565-47CD-B965-9D49BF50F902', '0CD2D3AC-A4B3-42DC-BE9B-3F3057B1AC61', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-08 00:54:50');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('42637473-018E-482E-B952-07E2C4AFC0CC', 'CC35E127-2740-40F0-AD5A-6007CF92367E', '3E190AFD-64B3-42FA-8C53-DB6670D65A9D', 'mtisrzm4x', '>=200', 1, 'SuperAdministrator', 1, NULL, '2023-05-13 12:57:36', NULL, '2023-05-13 12:57:36');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('45938D60-E6DE-4172-92EF-7F685E0F44E1', 'C46E07FC-6141-4DE8-947C-85D312F1972F', '937EB1AA-4C9F-401A-A8E3-CC267A6AB2BC', 'mtisrzm4x', '>=200', 1, 'SuperAdministrator', 3, NULL, '2023-05-13 15:35:53', NULL, '2023-05-13 15:35:53');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('47F08E68-5AE1-467B-81F3-8A55072E9794', '60BAFF11-492D-4E74-8E38-7F2FED2FEC8C', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 17:17:47');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('4AA1C64B-10B7-4F9E-83F4-4E9B7DB22878', '9FDA3A1E-1486-4BF5-BFC4-A217951A7A6A', '94407D86-77A3-4A6B-8CB5-ABFA31AC3B0C', 'mtisrzm4x', '>=200', 1, 'SuperAdministrator', 0, NULL, '2023-05-13 12:39:41', NULL, '2023-05-13 12:39:41');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('50D2F620-6FE3-4663-9E78-5CADCED87A7F', 'CA8025CD-4B66-4127-B9D6-D9EAD3D23705', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-08 01:39:57');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('576493C9-C755-4EF5-98C4-401D5BAFC5A2', 'CC35E127-2740-40F0-AD5A-6007CF92367E', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 12:56:24');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('59DD8BCD-EDDF-4882-A0E0-247844DEC5E7', 'B58589A0-04A1-432E-ACCB-76C9C22C8BC9', 'FA069866-DB1F-47F9-BB88-0132E42F7B4F', 'mtisrzm4x', '>=200', 1, 'SuperAdministrator', 0, NULL, '2023-05-13 12:14:35', NULL, '2023-05-13 12:14:35');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('5FF227A0-5138-4145-AE8D-E03EA3A55CC3', '8E60E09E-CDA6-4BAA-B452-370DEA64ADA4', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 16:33:45');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('6306B03C-7C1F-4912-9B44-CEFFCC609267', '75D7FB3F-049E-4103-8F6A-9F3E0D3EBB3A', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 13:47:17');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('673B5F2A-D798-4120-8BCE-077DC208A047', 'C46E07FC-6141-4DE8-947C-85D312F1972F', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 14:17:56');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('685B461F-1A68-4498-87C1-F00EE5D2F0B3', '9FDA3A1E-1486-4BF5-BFC4-A217951A7A6A', '94407D86-77A3-4A6B-8CB5-ABFA31AC3B0C', 'mtisrzm4x', '>=200', 1, 'SuperAdministrator', 1, NULL, '2023-05-13 12:54:29', NULL, '2023-05-13 12:54:29');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('69BFBD14-CDC2-4D70-8625-819490946116', '2D019AE7-22BB-4D25-8D06-2B4444C22C6F', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 13:07:14');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('6D9AE3C7-F802-4E31-BA8E-0A27ACF3951D', 'A8A9CD0D-C885-434C-8ADC-B0347E05B08A', '4ED73980-2E6E-4052-9722-695375D93303', 'xk0xirr5zf', '>=20', 3362, 'AdminModifier', 1, '通过。。。。。', '2023-05-13 16:14:57', '通过。。。。。', '2023-05-13 16:14:57');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('6E3E6F00-3DBB-4887-B453-A9FB54FFFB5C', '646D440F-2447-44B7-BD35-3690E7D1E5E8', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 13:49:17');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('71E15ED0-CBCC-4FEA-A45E-FAAF58758B18', 'D1CD7028-132C-4B97-AEC3-071F0BA7DA0E', '2AC1DDB2-19B7-412F-8C93-6F70228E5863', 'mtisrzm4x', '>=200', 1, 'SuperAdministrator', 0, NULL, '2023-05-13 12:06:21', NULL, '2023-05-13 12:06:21');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('744382F3-0AE7-48E5-9F97-71908863F7B9', '60BAFF11-492D-4E74-8E38-7F2FED2FEC8C', '4FC4ACA8-E0F6-4B57-B66A-4A1BF8DC3F85', 'jkqinw0zc', 'UserApproval>=5000', 1, 'SuperAdministrator', 1, 'Agree。。。', '2023-05-13 17:17:59', 'Agree。。。', '2023-05-13 17:17:59');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('77C48D16-1D3E-4EC9-BB50-81308E51C6B1', 'E7E6A63F-3CA0-4D63-A323-790D4680D8C0', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 13:20:28');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('85401EE1-C772-4610-B958-6D8C8C3307A7', '0134C7B2-8931-4477-9743-7ADDA9A4D6DF', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 15:42:01');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('860FA141-5321-45B1-8148-7B707F02C8A7', '7DB5447A-7A78-40D8-9585-0AAB9375B61F', '032EB689-C842-4EBF-B072-6062864B300D', 'xebxs78ls', 'qty>10', 3362, 'AdminModifier', 1, 'Agree。。。。', '2023-05-13 15:56:56', 'Agree。。。。', '2023-05-13 15:56:56');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('86C3310D-AF70-45E1-8156-3259AEA24C6B', 'B58589A0-04A1-432E-ACCB-76C9C22C8BC9', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 12:14:35');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('9053B951-F2FD-40DF-8BAF-8F267D6126CE', 'E7E6A63F-3CA0-4D63-A323-790D4680D8C0', '4FD17D32-518A-4F9C-80C5-738374F5A846', 'mtisrzm4x', '>=200', 1, 'SuperAdministrator', 0, NULL, '2023-05-13 13:20:44', NULL, '2023-05-13 13:20:44');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('94D7B7AE-E6E1-44F9-B5F0-66F37EB740C2', '1B92E493-11F0-462B-971B-C91FFBE82B42', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 11:47:55');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('987DE71A-AFCD-4FAD-99DF-57B4C50192E5', 'D1CD7028-132C-4B97-AEC3-071F0BA7DA0E', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 12:06:21');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('9B2C29A0-8C8F-4CDE-87C7-A6290A93ED03', '1B92E493-11F0-462B-971B-C91FFBE82B42', '839A2DE4-E5BE-4FCF-9AD5-8B3B26D791DC', 'mtisrzm4x', '>=200', 1, 'SuperAdministrator', 0, NULL, '2023-05-13 11:47:55', NULL, '2023-05-13 11:47:55');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('9CB27636-CEF5-4FA0-8AE0-940A759425F2', '2C0D573D-F81F-4D98-89FF-75804B8BC877', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 12:07:42');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('9F5C12B1-CE50-4F90-B40A-833279872B0A', '9FDA3A1E-1486-4BF5-BFC4-A217951A7A6A', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 12:39:40');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('A21B38BE-C2DF-4EDD-8EFB-5F2E8E216EC4', '98590873-049B-45C1-8F75-FF7AB22AE0DD', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 14:00:08');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('A4337440-A79E-4C46-BCDD-F279EBC6AB29', '827CE743-8340-4643-8512-DE6B8B998B9C', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-08 16:36:42');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('B8473B4D-C6FC-49C8-BE4F-2E8C8C181F24', 'ED175615-9853-469F-9BEE-DAC37D4CFE49', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-08 16:30:56');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('B9D955F1-05B2-4C16-B877-FF700B2954A7', 'A8A9CD0D-C885-434C-8ADC-B0347E05B08A', 'BE1DC0BF-96F0-46DB-8A02-90362B1B0B38', 'xebxs78ls', 'qty>10', 3362, 'AdminModifier', 1, 'Agree。。。。。', '2023-05-13 16:14:44', 'Agree。。。。。', '2023-05-13 16:14:44');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('C0B40AD7-1C64-4C0A-B9D0-EA7074075583', '581940D5-848F-4493-9C66-42ADD81F301C', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-08 01:45:41');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('C251C391-3F13-4D05-91C1-591F0CA737D5', 'CC35E127-2740-40F0-AD5A-6007CF92367E', '3E190AFD-64B3-42FA-8C53-DB6670D65A9D', 'mtisrzm4x', '>=200', 1, 'SuperAdministrator', 0, NULL, '2023-05-13 12:56:24', NULL, '2023-05-13 12:56:24');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('C4CF806A-7B5C-49A2-B4A9-721CA3BD4868', 'D82F4733-9916-4714-BF35-900CEAA049C1', '8486B561-6403-4D1C-AF33-DD635BF63B8C', 'jkqinw0zc', 'UserApproval>=5000', 1, 'SuperAdministrator', 1, NULL, '2023-05-13 17:10:51', NULL, '2023-05-13 17:10:51');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('C6AB40F6-7A16-4E69-A7C6-F5AF695AB473', '646D440F-2447-44B7-BD35-3690E7D1E5E8', '0AD966A6-A5AF-4E1B-8764-29A120431351', 'mtisrzm4x', '>=200', 1, 'SuperAdministrator', 1, NULL, '2023-05-13 13:49:50', NULL, '2023-05-13 13:49:50');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('D3FBF10D-DB09-4A6B-BE8E-76D1506DDCD9', 'DDD6EA0C-E3DB-49AD-8DFE-BB995C23BCF3', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 15:36:45');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('DCF07982-9EDA-4A19-BE7E-8F4C33FB32CF', '2D019AE7-22BB-4D25-8D06-2B4444C22C6F', 'AB5DE430-5007-4027-B58B-C5EB9B0BFEB8', 'mtisrzm4x', '>=200', 1, 'SuperAdministrator', 0, NULL, '2023-05-13 13:07:25', NULL, '2023-05-13 13:07:25');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('DF004942-44BD-4BE2-AC42-316E562EEAEB', '38417B03-D70B-436B-8D24-F60ED5373DC6', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-08 16:48:16');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('E0A80AD6-25BE-49EE-B802-4F517991FC0A', 'D82F4733-9916-4714-BF35-900CEAA049C1', 'A2035FC1-334B-4B54-ABC9-CAAF5C8C7B6D', 'hnoj7gaczc', 'SuperAdministratorApproval', 1, 'SuperAdministrator', 1, 'SuperAdministratorAgree。。', '2023-05-13 17:12:13', 'SuperAdministratorAgree。。', '2023-05-13 17:12:13');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('E1C9E5B3-A11E-478C-8169-C39032846C35', '147E53C5-231F-43CC-BBA0-AB906A59B6CA', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-08 01:17:03');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('E2A55CBF-E68E-4F99-9715-D2DD27CCAFE7', '62C8999F-F07E-4D47-827C-B1C4E63AF323', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 17:19:06');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('E4ED2781-4D7C-4E87-81AE-16D86538BDF3', 'F00BF32C-7D32-45B7-AC3E-4E223A6E2DD6', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 13:15:57');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('E68F23C0-FA88-4290-B975-11E044A7B7E8', '7F13EAAB-F51C-4534-B839-2410501C6693', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-08 16:23:44');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('E8FDD20E-21F5-4EFF-9CBF-CF810ED95692', 'BFF474A1-52E2-498B-8557-F7322BF34834', '7413DE5D-100C-4C83-AD91-8E808E6C41F6', 'mtisrzm4x', '>=200', 1, 'SuperAdministrator', 2, NULL, '2023-05-08 16:36:03', NULL, '2023-05-08 16:36:03');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('EF0A21C8-5896-4919-A075-BB3A46D4387C', 'A8A9CD0D-C885-434C-8ADC-B0347E05B08A', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 15:58:43');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('EF617F6B-3AF3-4FA3-9C4D-27C7DB775A74', '83005898-C7DC-4C3A-8519-69BE2DEBE83D', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-13 13:52:36');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('F2E57DEA-D98B-45FB-BB88-FA4F187F8C8A', '385F83BD-5518-488D-A335-E9ECFF0318C0', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-08 01:49:32');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('F4DD3674-9F9F-40D7-BCDB-92D35A89F89B', '75D7FB3F-049E-4103-8F6A-9F3E0D3EBB3A', 'E3EC2568-A952-4AE3-A269-67663E39BDF0', 'mtisrzm4x', '>=200', 1, 'SuperAdministrator', 0, NULL, '2023-05-13 13:47:50', NULL, '2023-05-13 13:47:50');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('F744C9ED-132F-4294-BC7B-C762201CB1B1', '9768E54C-D8D0-49EE-B943-2416F990C1DF', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-08 16:31:33');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('FA4C6EF4-82D8-455C-8166-3D86DA68B09B', 'D5F96FFD-D50B-4581-847C-FEEE264243DA', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-08 16:32:18');
INSERT INTO "public"."Sys_WorkFlowTableAuditLog" VALUES ('FBF482E7-A0FF-4842-9E37-34BF672E64F3', '2CD8CE25-650C-49EA-ABB0-82AA8C6BDF72', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '[SuperAdministrator]SubmittedData', '2023-05-08 01:37:42');

-- ----------------------------
-- Table structure for Sys_WorkFlowTableStep
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_WorkFlowTableStep";
CREATE TABLE "public"."Sys_WorkFlowTableStep" (
                                                  "Sys_WorkFlowTableStep_Id" uuid NOT NULL,
                                                  "WorkFlowTable_Id" uuid NOT NULL,
                                                  "WorkFlow_Id" uuid,
                                                  "StepId" varchar(100) COLLATE "pg_catalog"."default",
                                                  "StepName" varchar(200) COLLATE "pg_catalog"."default",
                                                  "StepType" int4,
                                                  "StepValue" text COLLATE "pg_catalog"."default",
                                                  "OrderId" int4,
                                                  "AuditId" int4,
                                                  "Auditor" varchar(70) COLLATE "pg_catalog"."default",
                                                  "AuditStatus" int4,
                                                  "AuditDate" timestamp(6),
                                                  "Remark" text COLLATE "pg_catalog"."default",
                                                  "CreateDate" timestamp(6),
                                                  "CreateID" int4,
                                                  "Creator" varchar(50) COLLATE "pg_catalog"."default",
                                                  "Enable" int2,
                                                  "Modifier" varchar(50) COLLATE "pg_catalog"."default",
                                                  "ModifyDate" timestamp(6),
                                                  "ModifyID" int4,
                                                  "StepAttrType" varchar(70) COLLATE "pg_catalog"."default",
                                                  "ParentId" text COLLATE "pg_catalog"."default",
                                                  "NextStepId" varchar(100) COLLATE "pg_catalog"."default",
                                                  "Weight" int4
)
;
COMMENT ON COLUMN "public"."Sys_WorkFlowTableStep"."AuditId" IS 'AuditId';
COMMENT ON COLUMN "public"."Sys_WorkFlowTableStep"."Auditor" IS 'Auditor';
COMMENT ON COLUMN "public"."Sys_WorkFlowTableStep"."AuditStatus" IS 'AuditStatus';

-- ----------------------------
-- Records of Sys_WorkFlowTableStep
-- ----------------------------
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('0284CA27-CD47-48B2-9228-6731D86091CE', 'A8A9CD0D-C885-434C-8ADC-B0347E05B08A', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'qq4qwkz9il', 'ProcessEnd', NULL, NULL, 3, NULL, NULL, 0, NULL, NULL, '2023-05-13 15:58:43', NULL, NULL, 1, NULL, NULL, NULL, 'end', 'xk0xirr5zf', NULL, NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('032EB689-C842-4EBF-B072-6062864B300D', '7DB5447A-7A78-40D8-9585-0AAB9375B61F', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'xebxs78ls', 'qty>10', 1, '3362', 1, 3362, 'AdminModifier', 0, '2023-05-13 15:56:56', 'Agree。。。。', '2023-05-13 15:49:18', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'yuo5z0v07p', 'xk0xirr5zf', NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('03E1881F-6A73-4E4C-A3AE-148A7D47E8D5', '7DB5447A-7A78-40D8-9585-0AAB9375B61F', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'qq4qwkz9il', 'ProcessEnd', NULL, NULL, 3, NULL, NULL, 0, NULL, NULL, '2023-05-13 15:49:18', NULL, NULL, 1, NULL, NULL, NULL, 'end', 'xk0xirr5zf', NULL, NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('2A273253-BC06-4721-91FA-996C72C85858', '60BAFF11-492D-4E74-8E38-7F2FED2FEC8C', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', '5zfqhzz198', 'ProcessEnd', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, '2023-05-13 17:17:47', NULL, NULL, 1, NULL, NULL, NULL, 'end', 'hnoj7gaczc', NULL, NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('3021E4E6-EC9B-43AE-A7D2-443F1CB7BA44', '62C8999F-F07E-4D47-827C-B1C4E63AF323', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'iyzakw0c8', 'ProcessStart', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-05-13 17:19:06', 1, 'SuperAdministrator', 1, NULL, NULL, NULL, 'start', NULL, 'jkqinw0zc', NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('3C690619-948A-484E-88CD-6AD17371EAFD', '62C8999F-F07E-4D47-827C-B1C4E63AF323', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'hnoj7gaczc', 'SuperAdministratorApproval', 1, '1', 3, 1, NULL, NULL, NULL, NULL, '2023-05-13 17:19:06', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'b9cv1h35jg', '5zfqhzz198', NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('3E9FF38C-DADC-4AF4-8771-8C30791B0669', 'D82F4733-9916-4714-BF35-900CEAA049C1', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', '5zfqhzz198', 'ProcessEnd', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, '2023-05-13 17:07:37', NULL, NULL, 1, NULL, NULL, NULL, 'end', 'hnoj7gaczc', NULL, NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('4ED73980-2E6E-4052-9722-695375D93303', 'A8A9CD0D-C885-434C-8ADC-B0347E05B08A', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'xk0xirr5zf', '>=20', 2, '2', 2, 3362, 'AdminModifier', 1, '2023-05-13 16:14:57', '通过。。。。。', '2023-05-13 15:58:43', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'xebxs78ls', 'qq4qwkz9il', NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('4FC4ACA8-E0F6-4B57-B66A-4A1BF8DC3F85', '60BAFF11-492D-4E74-8E38-7F2FED2FEC8C', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'jkqinw0zc', 'UserApproval>=5000', 1, '1', 1, 1, 'SuperAdministrator', 1, '2023-05-13 17:17:59', 'Agree。。。', '2023-05-13 17:17:47', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'iyzakw0c8', 'b9cv1h35jg', NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('53DD80A6-DD77-4C98-8531-1D648C5773E8', '60BAFF11-492D-4E74-8E38-7F2FED2FEC8C', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'iyzakw0c8', 'ProcessStart', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-05-13 17:17:47', 1, 'SuperAdministrator', 1, NULL, NULL, NULL, 'start', NULL, 'jkqinw0zc', NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('6F7B76C5-82EA-49E5-9878-3965792D8988', '62C8999F-F07E-4D47-827C-B1C4E63AF323', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'b9cv1h35jg', 'ProductDepartment>=7000Approval', 3, 'ec238385-f907-44de-b99b-0eddcffa6750', 2, NULL, NULL, NULL, NULL, NULL, '2023-05-13 17:19:06', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'jkqinw0zc', 'hnoj7gaczc', NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('79DC0FAA-4E29-47F4-BF8B-7BE72244D848', '60BAFF11-492D-4E74-8E38-7F2FED2FEC8C', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'hnoj7gaczc', 'SuperAdministratorApproval', 1, '1', 3, 1, NULL, NULL, NULL, NULL, '2023-05-13 17:17:47', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'b9cv1h35jg', '5zfqhzz198', NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('8486B561-6403-4D1C-AF33-DD635BF63B8C', 'D82F4733-9916-4714-BF35-900CEAA049C1', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'jkqinw0zc', 'UserApproval>=5000', 1, '1', 1, 1, 'SuperAdministrator', 1, '2023-05-13 17:11:00', NULL, '2023-05-13 17:07:37', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'iyzakw0c8', 'b9cv1h35jg', NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('8676DB90-4A31-4670-B3F8-24D7C752071E', '60BAFF11-492D-4E74-8E38-7F2FED2FEC8C', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'b9cv1h35jg', 'ProductDepartment>=7000Approval', 3, 'ec238385-f907-44de-b99b-0eddcffa6750', 2, NULL, NULL, NULL, NULL, NULL, '2023-05-13 17:17:47', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'jkqinw0zc', 'hnoj7gaczc', NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('8F3A845E-6C12-4BA7-A24C-CF04884C9981', '62C8999F-F07E-4D47-827C-B1C4E63AF323', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', '5zfqhzz198', 'ProcessEnd', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, '2023-05-13 17:19:06', NULL, NULL, 1, NULL, NULL, NULL, 'end', 'hnoj7gaczc', NULL, NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('A2035FC1-334B-4B54-ABC9-CAAF5C8C7B6D', 'D82F4733-9916-4714-BF35-900CEAA049C1', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'hnoj7gaczc', 'SuperAdministratorApproval', 1, '1', 3, 1, 'SuperAdministrator', 1, '2023-05-13 17:12:13', 'SuperAdministratorAgree。。', '2023-05-13 17:07:37', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'b9cv1h35jg', '5zfqhzz198', NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('AF2EF5D3-A9A3-4403-99AD-77A19AC79262', '7DB5447A-7A78-40D8-9585-0AAB9375B61F', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'yuo5z0v07p', 'ProcessStart', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, '2023-05-13 15:49:18', 1, 'SuperAdministrator', 1, NULL, NULL, NULL, 'start', NULL, 'xebxs78ls', NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('BA1A3451-535F-4831-8208-AF87A880C7BF', '7DB5447A-7A78-40D8-9585-0AAB9375B61F', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'xk0xirr5zf', '>=20', 2, '2', 2, 3362, 'AdminModifier', 0, '2023-05-13 15:56:56', 'Agree。。。。', '2023-05-13 15:49:18', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'xebxs78ls', 'qq4qwkz9il', NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('BACDBB3C-D50D-4082-83E1-0E932B9F7D0F', 'A8A9CD0D-C885-434C-8ADC-B0347E05B08A', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'yuo5z0v07p', 'ProcessStart', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, '2023-05-13 15:58:43', 1, 'SuperAdministrator', 1, NULL, NULL, NULL, 'start', NULL, 'xebxs78ls', NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('BE1DC0BF-96F0-46DB-8A02-90362B1B0B38', 'A8A9CD0D-C885-434C-8ADC-B0347E05B08A', 'BE42A851-147A-493A-B42F-3DC7D3061E32', 'xebxs78ls', 'qty>10', 1, '3362', 1, 3362, 'AdminModifier', 1, '2023-05-13 16:14:44', 'Agree。。。。。', '2023-05-13 15:58:43', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'yuo5z0v07p', 'xk0xirr5zf', NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('C0A682A2-6043-492A-A15D-BECB374353BD', 'D82F4733-9916-4714-BF35-900CEAA049C1', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'iyzakw0c8', 'ProcessStart', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-05-13 17:07:37', 1, 'SuperAdministrator', 1, NULL, NULL, NULL, 'start', NULL, 'jkqinw0zc', NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('DE5133DF-9FF7-494D-BB76-C9E457DFEBAD', 'D82F4733-9916-4714-BF35-900CEAA049C1', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'b9cv1h35jg', 'ProductDepartment>=7000Approval', 3, 'ec238385-f907-44de-b99b-0eddcffa6750', 2, 3362, 'AdminModifier', 1, '2023-05-13 17:11:47', 'AdminModifierAdministratorAgree。。', '2023-05-13 17:07:37', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'jkqinw0zc', 'hnoj7gaczc', NULL);
INSERT INTO "public"."Sys_WorkFlowTableStep" VALUES ('F5CEA9D2-C567-497A-AD6C-4B483A198AA4', '62C8999F-F07E-4D47-827C-B1C4E63AF323', 'AA7099A6-CFEE-4845-BA95-56E425A11ACE', 'jkqinw0zc', 'UserApproval>=5000', 1, '1', 1, 1, NULL, NULL, NULL, NULL, '2023-05-13 17:19:06', NULL, NULL, 1, NULL, NULL, NULL, 'node', 'iyzakw0c8', 'b9cv1h35jg', NULL);

-- ----------------------------
-- Primary Key structure for table App_Expert
-- ----------------------------
ALTER TABLE "public"."App_Expert" ADD CONSTRAINT "App_Expert_pkey" PRIMARY KEY ("ExpertId");

-- ----------------------------
-- Primary Key structure for table App_News
-- ----------------------------
ALTER TABLE "public"."App_News" ADD CONSTRAINT "App_News_pkey" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table App_ReportPrice
-- ----------------------------
ALTER TABLE "public"."App_ReportPrice" ADD CONSTRAINT "App_ReportPrice_pkey" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table App_Transaction
-- ----------------------------
ALTER TABLE "public"."App_Transaction" ADD CONSTRAINT "App_Transaction_pkey" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table App_TransactionAvgPrice
-- ----------------------------
ALTER TABLE "public"."App_TransactionAvgPrice" ADD CONSTRAINT "App_TransactionAvgPrice_pkey" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table FormCollectionObject
-- ----------------------------
ALTER TABLE "public"."FormCollectionObject" ADD CONSTRAINT "FormCollectionObject_pkey" PRIMARY KEY ("FormCollectionId");

-- ----------------------------
-- Primary Key structure for table FormDesignOptions
-- ----------------------------
ALTER TABLE "public"."FormDesignOptions" ADD CONSTRAINT "FormDesignOptions_pkey" PRIMARY KEY ("FormId");

-- ----------------------------
-- Primary Key structure for table SellOrder
-- ----------------------------
ALTER TABLE "public"."SellOrder" ADD CONSTRAINT "SellOrder_pkey" PRIMARY KEY ("Order_Id");

-- ----------------------------
-- Primary Key structure for table SellOrderList
-- ----------------------------
ALTER TABLE "public"."SellOrderList" ADD CONSTRAINT "SellOrderList_pkey" PRIMARY KEY ("OrderList_Id");

-- ----------------------------
-- Primary Key structure for table Sys_City
-- ----------------------------
ALTER TABLE "public"."Sys_City" ADD CONSTRAINT "Sys_City_pkey" PRIMARY KEY ("CityId");

-- ----------------------------
-- Primary Key structure for table Sys_Department
-- ----------------------------
ALTER TABLE "public"."Sys_Department" ADD CONSTRAINT "Sys_Department_pkey" PRIMARY KEY ("DepartmentId");

-- ----------------------------
-- Primary Key structure for table Sys_Dictionary
-- ----------------------------
ALTER TABLE "public"."Sys_Dictionary" ADD CONSTRAINT "Sys_Dictionary_pkey" PRIMARY KEY ("Dic_ID");

-- ----------------------------
-- Primary Key structure for table Sys_DictionaryList
-- ----------------------------
ALTER TABLE "public"."Sys_DictionaryList" ADD CONSTRAINT "Sys_DictionaryList_pkey" PRIMARY KEY ("DicList_ID");

-- ----------------------------
-- Primary Key structure for table Sys_Log
-- ----------------------------
ALTER TABLE "public"."Sys_Log" ADD CONSTRAINT "Sys_Log_pkey" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table Sys_Menu
-- ----------------------------
ALTER TABLE "public"."Sys_Menu" ADD CONSTRAINT "Sys_Menu_pkey" PRIMARY KEY ("Menu_Id");

-- ----------------------------
-- Primary Key structure for table Sys_Province
-- ----------------------------
ALTER TABLE "public"."Sys_Province" ADD CONSTRAINT "Sys_Province_pkey" PRIMARY KEY ("ProvinceId");

-- ----------------------------
-- Primary Key structure for table Sys_QuartzLog
-- ----------------------------
ALTER TABLE "public"."Sys_QuartzLog" ADD CONSTRAINT "Sys_QuartzLog_pkey" PRIMARY KEY ("LogId");

-- ----------------------------
-- Primary Key structure for table Sys_QuartzOptions
-- ----------------------------
ALTER TABLE "public"."Sys_QuartzOptions" ADD CONSTRAINT "Sys_QuartzOptions_pkey" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table Sys_Role
-- ----------------------------
ALTER TABLE "public"."Sys_Role" ADD CONSTRAINT "Sys_Role_pkey" PRIMARY KEY ("Role_Id");

-- ----------------------------
-- Primary Key structure for table Sys_RoleAuth
-- ----------------------------
ALTER TABLE "public"."Sys_RoleAuth" ADD CONSTRAINT "Sys_RoleAuth_pkey" PRIMARY KEY ("Auth_Id");

-- ----------------------------
-- Primary Key structure for table Sys_TableColumn
-- ----------------------------
ALTER TABLE "public"."Sys_TableColumn" ADD CONSTRAINT "Sys_TableColumn_pkey" PRIMARY KEY ("ColumnId");

-- ----------------------------
-- Primary Key structure for table Sys_TableInfo
-- ----------------------------
ALTER TABLE "public"."Sys_TableInfo" ADD CONSTRAINT "Sys_TableInfo_pkey" PRIMARY KEY ("Table_Id");

-- ----------------------------
-- Primary Key structure for table Sys_User
-- ----------------------------
ALTER TABLE "public"."Sys_User" ADD CONSTRAINT "Sys_User_pkey" PRIMARY KEY ("User_Id");

-- ----------------------------
-- Primary Key structure for table Sys_UserDepartment
-- ----------------------------
ALTER TABLE "public"."Sys_UserDepartment" ADD CONSTRAINT "Sys_UserDepartment_pkey" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table Sys_WorkFlow
-- ----------------------------
ALTER TABLE "public"."Sys_WorkFlow" ADD CONSTRAINT "Sys_WorkFlow_pkey" PRIMARY KEY ("WorkFlow_Id");

-- ----------------------------
-- Primary Key structure for table Sys_WorkFlowStep
-- ----------------------------
ALTER TABLE "public"."Sys_WorkFlowStep" ADD CONSTRAINT "Sys_WorkFlowStep_pkey" PRIMARY KEY ("WorkStepFlow_Id");

-- ----------------------------
-- Primary Key structure for table Sys_WorkFlowTable
-- ----------------------------
ALTER TABLE "public"."Sys_WorkFlowTable" ADD CONSTRAINT "Sys_WorkFlowTable_pkey" PRIMARY KEY ("WorkFlowTable_Id");

-- ----------------------------
-- Primary Key structure for table Sys_WorkFlowTableAuditLog
-- ----------------------------
ALTER TABLE "public"."Sys_WorkFlowTableAuditLog" ADD CONSTRAINT "Sys_WorkFlowTableAuditLog_pkey" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table Sys_WorkFlowTableStep
-- ----------------------------
ALTER TABLE "public"."Sys_WorkFlowTableStep" ADD CONSTRAINT "Sys_WorkFlowTableStep_pkey" PRIMARY KEY ("Sys_WorkFlowTableStep_Id");
