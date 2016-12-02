using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NorthWestLabs.Models
{
    public class AuthorizationStatus
    {
        //Authorization_Status
        public int AuthorizationStatusId { get; set; }
        public string Description { get; set; }
        public string Name { get; set; }
    }
}