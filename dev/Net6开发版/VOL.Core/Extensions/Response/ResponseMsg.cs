﻿using VOL.Core.Enums;

namespace VOL.Core.Extensions
{
    public static class ResponseMsg
    {
        public static string GetMsg(this ResponseType  responseType)
        {
            string msg;
            switch (responseType)
            {
                case ResponseType.LoginExpiration:
                    msg = "Login已过期,请重新Login"; break;
                case ResponseType.TokenExpiration:
                    msg = "Token已过期,请重新Login"; break;
                case ResponseType.AccountLocked:
                    msg = "UserName已被锁定"; break;
                case ResponseType.LoginSuccess:
                    msg = "Login成功"; break;
                case ResponseType.ParametersLack:
                    msg = "参数不完整"; break;
                case ResponseType.NoPermissions:
                    msg = "没有权限操作"; break;
                case ResponseType.NoRolePermissions:
                    msg = "Role_Id没有权限操作"; break;
                case ResponseType.ServerError:
                    msg = "服务器好像出了点问题....."; break;
                case ResponseType.LoginError:
                    msg = "用户名或UserPwd错误"; break;
                case ResponseType.SaveSuccess:
                    msg = "保存成功"; break;
                case ResponseType.NoKey:
                    msg = "没有主键不能Edit"; break;
                case ResponseType.NoKeyDel:
                    msg = "没有主键不能Del"; break;
                case ResponseType.KeyError:
                    msg = "主键不正确或没有传入主键"; break;
                case ResponseType.EidtSuccess:
                    msg = "Edit成功"; break;
                case ResponseType.DelSuccess:
                    msg = "Del成功"; break;
                case ResponseType.RegisterSuccess:
                    msg = "注册成功"; break;
                case ResponseType.AuditSuccess:
                    msg = "审核成功"; break;
                case ResponseType.ModifyPwdSuccess:
                    msg = "UserPwd修改成功"; break;
                case ResponseType.OperSuccess:
                    msg = "操作成功"; break;
                case ResponseType.PINError:
                    msg = "验证码不正确"; break;
                    
                default: msg = responseType.ToString(); break;
            }
            return msg;
        }

    }
}
