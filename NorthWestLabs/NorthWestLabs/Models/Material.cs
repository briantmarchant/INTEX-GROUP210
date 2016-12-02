using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NorthWestLabs.Models
{
    public class Material
    {
        //MATERIAL
        public int MaterialId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal Cost { get; set; }
    }
}