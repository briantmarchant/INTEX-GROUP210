using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NorthWestLabs.Models
{
    public class StatusLog
    {
        //STATUS_LOG
        public int StatusLogId { get; set; }
        public int StatusId { get; set; }
        public int WorkOrderDetailId { get; set; }
        public DateTime StatusStartTime { get; set; }
        public DateTime StatusEndTime { get; set; }
    }
}