﻿using System;
using System.Collections.Generic;
using System.Text;

namespace VOL.Core.Enums
{
    public struct ApiMessage
    {

        /// <summary>
        /// 参数有误
        /// </summary>
        public const string ParameterError = "RequestParameter不正确!";
        /// <summary>
        /// 没有配置好输入参数
        /// </summary>
        public const string NotInputEntity = "没有配置好输入参数!";
        /// <summary>
        /// token丢失
        /// </summary>
        public const string TokenLose = "token丢失!";

        /// <summary>
        /// 版本号不能为空
        /// </summary>

        public const string VersionEmpty = "版本号不能为空!";
        /// <summary>
        /// content不能为空
        /// </summary>

        public const string ContentEmpty = "biz_content不能为空!";
        /// <summary>
        /// content不能为空
        /// </summary>
        public const string TokenError = "token不正确";

        public const string AccountLocked = "UserName已被锁定!";

        public const string PhoneNoInvalid = "输入的不是PhoneNo";


        public const string PINTypeNotRange= "获取验证的AppType不正确";
        public const string OperToBusy = "Operation太频繁，请稍后再试";

        public const string SendSTKError = "短信Send异常,请稍后再试";
        public const string SendSTKSuccess = "短信SendSuccess";
        public const string STKNotSend = "请先获取验证码";
        public const string AccountExists = "PhoneNo已经被注册";

        public const string AccountNotExists = "PhoneNo没有注册";

        public const string PINExpire = "验证码已过期,请重新获取";

        public const string PINError = "验证码不正确";

        public const string ParameterEmpty = "参数不能为空";
    }
}
