using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NorthWestLabs.Models
{
    public class Invoice
    {
        public int InvoiceId { get; set; }
        public int WorkOrderId { get; set; }
        public DateTime DateSent { get; set; }
        public DateTime DatePaid { get; set; }
        public string SentBy { get; set; }
        public string PreparedBy { get; set; }
        public decimal SpecialDiscount { get; set; }
        public double QuotedPrice { get; set; }
        public double FinalPrice { get; set; }
        public DateTime DueDate { get; set; }
        public DateTime EarlyPaymentDate { get; set; }
        public double EarlyPaymentDiscount { get; set; }
    }
}