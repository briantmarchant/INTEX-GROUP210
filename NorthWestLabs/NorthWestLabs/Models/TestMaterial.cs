using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NorthWestLabs.Models
{
    public class TestMaterial
    {
        //TEST_MATERIAL
        public int TestMaterialId { get; set; }
        public int MaterialId { get; set; }
        public bool Consumable { get; set; }
    }
}