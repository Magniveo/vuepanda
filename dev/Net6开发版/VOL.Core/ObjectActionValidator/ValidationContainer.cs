﻿using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;
using VOL.Core.Extensions;
using VOL.Entity.DomainModels;

namespace VOL.Core.ObjectActionValidator
{
    /// <summary>
    /// 对方法指定属性校验,此处配置完成就Dept_Id每处都写if esle判断值是合法
    /// With自带模型校验相比，此处可以通过Table达式校验指定字段，也Dept_Id担心model字段变化后还去手动修改配置的问题
    /// 目前只支持普通属性，不支持复杂AppType
    /// </summary>
    public static class ValidatorContainer
    {
        /// <summary>
        /// model校验配置
        /// 方法参数名必须With枚举ExpertName一致（不区分大小写）,如：public void Test(LoginInfo login)
        /// Table达式是model必须要验证的字段，如果不填，默认验证整个model
        /// </summary>
        /// <param name="services"></param>
        /// <returns></returns>
        public static IServiceCollection UseMethodsModelParameters(this IServiceCollection services)
        {
            //Login方法校验参数,只验证UserPwdWithUser名
            ValidatorModel.Login.Add<LoginInfo>(x => new { x.Password, x.UserName,x.VerificationCode,x.UUID });

            //只验证LoginInfo的UserPwd字段必填
            ValidatorModel.LoginOnlyPassWord.Add<LoginInfo>(x => new { x.Password });

            return services;
        }
        /// <summary>
        ///  普通属性校验
        /// 方法上添加[ObjectGeneralValidatorFilter(ValidatorGeneral.xxx)]即可进行参数自动验证
        /// ValidatorGeneral为枚举(也是方法的参数名)，自己需要校验的参数在枚举上添加
        /// ValidatorGeneral.xxx.Add() 配置自己的验证规则
        /// </summary>
        /// <param name="services"></param>
        /// <returns></returns>
        public static IServiceCollection UseMethodsGeneralParameters(this IServiceCollection services)
        {
            //配置User名最多30个字符
            ValidatorGeneral.UserName.Add("User名", 30);

            //方法参数名为newPwd，直接在方法加上[ObjectGeneralValidatorFilter(ValidatorGeneral.NewPwd)]进行参数验证
            //如果newPwd为空会提示：新UserPwd不能为空
            //6,50代TablenewPwd参数最少6个字符，最多50个符
            //Other需要验证的参数同样配置即可
            ValidatorGeneral.NewPwd.Add("新UserPwd", 6, 50);

            //如果OldPwd为空会提示：旧UserPwd不能为空
            ValidatorGeneral.OldPwd.Add("旧UserPwd");

            //校验PhoneNo码格式
            ValidatorGeneral.PhoneNo.Add("PhoneNo码", (object value) =>
            {
                ObjectValidatorResult validatorResult = new ObjectValidatorResult(true);
                if (!value.ToString().IsPhoneNo())
                {
                    validatorResult = validatorResult.Error("请输入正确的PhoneNo码");
                }
                return validatorResult;
            });

            //Modifier验证字符长度为6-10
            ValidatorGeneral.Local.Add("所在地",6,10);

            //Modifier验证数字范围
            ValidatorGeneral.Qty.Add("存货量",ParamType.Int, 200, 500);

            return services;
        }
    }
    //方法参数是实体配置验证字段
    public enum ValidatorModel
    {
        Login,
        LoginOnlyPassWord//只验证UserPwd
    }
    /// <summary>
    /// 方法普通参数名配置(枚举的名字必须With参数名字一样，不区分大小写)
    /// 通过在方法加上[ObjectGeneralValidatorFilter(ValidatorGeneral.UserName, ValidatorGeneral.PassWord)]指定要验证的参数
    /// </summary>
    public enum ValidatorGeneral
    {
        UserName,
        OldPwd,
        NewPwd,
        PhoneNo,
        Local,//Modifier验证字符长度
        Qty//Modifier 验证值大小
    }
}
