﻿using System;
using System.Collections.Generic;
using System.Text;

namespace VOL.Core.Quartz
{
    public enum JobAction
    {
        新增 = 1,
        Del = 2,
        修改 = 3,
        Pause = 4,
        停止,
        开启,
        立即Execute
    }
}
