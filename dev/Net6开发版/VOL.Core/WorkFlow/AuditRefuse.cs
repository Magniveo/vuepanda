using System;
using System.Collections.Generic;
using System.Text;

namespace VOL.Core.WorkFlow
{
    public enum AuditRefuse
    {
        ProcessEnd = 0,
        返回上一Node = 1,
        Process重新Start = 2
    }
}
