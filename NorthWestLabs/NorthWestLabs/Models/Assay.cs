using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NorthWestLabs.Models
{
    public class Assay
    {
        //ASSAY
        public int AssayId { get; set; }
        public string Type { get; set; }
        public string Protocol { get; set; }
        public decimal EstimatedTimeHours { get; set; }
        public string Description { get; set; }
        public decimal BasePrice { get; set; }
    }
}