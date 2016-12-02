using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NorthWestLabs.Models
{
    public class WorkOrder
    {
        public int WorkOrderId { get; set; }
        public int AccountId { get; set; }
        public int ContactId { get; set; }
        public int EmployeeId { get; set; }
        public int LT { get; set; }
        public DateTime DateDue { get; set; }
    }
}