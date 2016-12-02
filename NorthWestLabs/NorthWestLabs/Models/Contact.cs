using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NorthWestLabs.Models
{
    public class Contact
    {
        public int ContactId { get; set; }
        public string FName { get; set; }
        public string LName { get; set; }
        public string Street_Address { get; set; }
        public string PostCode { get; set; }
        public string Phone { get; set; }
        public int AccountId { get; set; }
        public string Email { get; set; }
    }
}