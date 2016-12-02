using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NorthWestLabs.Models
{
    public class Result
    {
        public int ResultId { get; set; }
        public int WorkOrderId { get; set; }
        public string FileName { get; set; }
    }
}