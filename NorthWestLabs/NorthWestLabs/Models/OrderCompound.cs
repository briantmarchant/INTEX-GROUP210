using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NorthWestLabs.Models
{
    public class OrderCompound
    {
        public int OrderCompoundId { get; set; }
        public int CompoundId { get; set; }
        public double QutantityMlg { get; set; }
        public DateTime DateArrived { get; set; }
        public string ReceivedBy { get; set; }
        public string Appearance { get; set; }
        public double ClientWeight { get; set; }
        public double MolecularMass { get; set; }
        public double ActualWeight { get; set; }
        public string MTD { get; set; }
        public int LT { get; set; }
        public int SC { get; set; }
    }
}