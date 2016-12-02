using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NorthWestLabs.Models
{
    public class Test
    {
        //TEST Class
        public int TestId { get; set; }
        public int AssayId { get; set; }
        public string Condition { get; set; }
        public string Description { get; set; }
        public int MaterialId { get; set; }
        public decimal DurationHours { get; set; }
        public bool AuthorizationNeeded { get; set; }
        public int AuthorizationStatusId { get; set; }
        public int EquipmentId { get; set; }
    }
}