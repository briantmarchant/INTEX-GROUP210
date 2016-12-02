using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NorthWestLabs.Models
{
    public class WorkOrderDetail
    {
        //WORK_ORDER_DETAIL
        public int WorkOrderDetailId { get; set; }
        public int WorkorderId { get; set; }
        public int AssayId { get; set; }
        public int OrdercompoundId { get; set; }
        public DateTime ScheduledStartDate { get; set; }
        public DateTime ScheduledEndDate { get; set; }
        public DateTime ActualStartDate { get; set; }
        public DateTime ActualEndDate { get; set; }
        public int StatusId { get; set; }
    }
}