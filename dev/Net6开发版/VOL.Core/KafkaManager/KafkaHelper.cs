﻿////using Confluent.Kafka;
//using Newtonsoft.Json;
//using System;
//using System.Collections.Generic;
//using System.Net;
//using System.Reflection;
//using System.Text;
//using System.Text.RegularExpressions;

//namespace VOL.Core.KafkaManager
//{
//    /// <summary>
//    /// 辅助类
//    /// </summary>
//    public class KafkaHelper
//    {
//        /// <summary>
//        /// 获取当前应用程式ExpertName(仅控制台应用程序和Windows应用程序可用)
//        /// </summary>
//        /// <returns></returns>
//        public static string GetApplicationName()
//        {
//            try
//            {
//                return Assembly.GetEntryAssembly().GetName().Name;
//            }
//            catch
//            {
//                return "Kafka_Test";
//            }
//        }

//        /// <summary>
//        /// 获取服务DeviceExpertName
//        /// </summary>
//        /// <returns></returns>
//        public static string GetServerName()
//        {
//            return Dns.GetHostName();
//        }

//        /// <summary>
//        /// 获取ServiceIP
//        /// </summary>
//        /// <returns></returns>
//        public static string GetServerIp()
//        {
//            IPHostEntry ips = Dns.GetHostEntry(Dns.GetHostName());
//            foreach (var ip in ips.AddressList)
//            {
//                if (Regex.IsMatch(ip.ToString(), @"^10\.((25[0-5]|2[0-4]\d|1\d{2}|\d?\d)\.){2}(25[0-5]|2[0-4]\d|1\d{2}|\d?\d)$"))
//                {
//                    return ip.ToString();
//                };
//            }
//            return "127.0.0.1";
//        }

//        /// <summary>  
//        /// 将c# DateTime时间格式转换为Unix时间戳格式(毫秒级)  
//        /// </summary>  
//        /// <returns>long</returns>  
//        public static long GetTimeStamp()
//        {
//            DateTime time = DateTime.Now;
//            long t = (time.Ticks - 621356256000000000) / 10000;
//            return t;
//        }
//    }

//    #region 实现Message序列化和反序列化
//    public class KafkaConverter<T> : ISerializer<T>
//    {
//        /// <summary>
//        /// 序列化Data成字节
//        /// </summary>
//        /// <param name="data"></param>
//        /// <param name="context"></param>
//        /// <returns></returns>
//        public byte[] Serialize(T data, SerializationContext context)
//        {
//            var json = JsonConvert.SerializeObject(data);
//            return Encoding.UTF8.GetBytes(json);
//        }
//    }

//    public class KafkaDConverter<T> : IDeserializer<T>
//    {
//        /// <summary>
//        /// 反序列化字节Data成实体Data
//        /// </summary>
//        /// <param name="data"></param>
//        /// <param name="isNull"></param>
//        /// <param name="context"></param>
//        /// <returns></returns>
//        public T Deserialize(ReadOnlySpan<byte> data, bool isNull, SerializationContext context)
//        {
//            if (isNull) return default(T);

//            var json = Encoding.UTF8.GetString(data.ToArray());
//            try
//            {
//                return JsonConvert.DeserializeObject<T>(json);
//            }
//            catch
//            {
//                return default(T);
//            }
//        }
//    }
//    #endregion

//    #region Log类
//    /// <summary>
//    /// 默认Log类 可自行构造使用
//    /// </summary>
//    public class KafkaLogModel
//    {
//        /// <summary>
//        /// 构造默认Log类(SetUp默认值 ServerIp,ServerName,TimeStamp,ApplicationVersion)
//        /// </summary>
//        public KafkaLogModel()
//        {
//            ServerIp = KafkaHelper.GetServerIp();
//            ServerName = KafkaHelper.GetServerName();
//            TimeStamp = DateTime.Now;
//            ApplicationName = KafkaHelper.GetApplicationName();
//            ApplicationVersion = "V1.0.0";
//        }

//        /// <summary>
//        /// 程式ExpertName(默认获取当前程式ExpertName,Web应用 默认为 ISD_Kafka)
//        /// </summary>
//        public string ApplicationName { get; set; }

//        /// <summary>
//        /// 程式版本(默认为V1.0.0)
//        /// </summary>
//        public string ApplicationVersion { get; set; }

//        /// <summary>
//        /// 发生时间(默认为当前时间)
//        /// </summary>
//        public DateTime TimeStamp { get; set; }

//        /// <summary>
//        /// StratDate
//        /// </summary>
//        public DateTime BeginDate { get; set; }

//        /// <summary>
//        /// EndDate
//        /// </summary>
//        public DateTime EndDate { get; set; }

//        /// <summary>
//        /// ServiceIP(默认抓取当前ServiceIP)
//        /// </summary>
//        public string ServerIp { get; set; }

//        /// <summary>
//        /// 服务DeviceExpertName(默认抓取当前服务DeviceExpertName)
//        /// </summary>
//        public string ServerName { get; set; }

//        /// <summary>
//        /// 客户端IP
//        /// </summary>
//        public string ClientIp { get; set; }

//        /// <summary>
//        /// 模块(Page路径)
//        /// </summary>
//        public string Module { get; set; }

//        /// <summary>
//        /// Operation人
//        /// </summary>
//        public string Operator { get; set; }

//        /// <summary>
//        /// OperationAppType 如:Query,Add,Update,Delete,Export等,可Customize
//        /// </summary>
//        public string OperationType { get; set; }

//        /// <summary>
//        /// Operation状态 如:http请求使用200,404,503等,OtherOperation 1:Success,0失败等 可Customize
//        /// </summary>
//        public string Status { get; set; }

//        /// <summary>
//        /// Other信息
//        /// </summary>
//        public string Message { get; set; }
//    }
//    #endregion
//}
