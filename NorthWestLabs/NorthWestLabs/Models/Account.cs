using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NorthWestLabs.Models
{
    public class Account
    {
        public int AccountId { get; set; }
        public string Name { get; set; }
        public string Street_Address { get; set; }
        public string PostCode { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public double Balance { get; set; }
    }
}