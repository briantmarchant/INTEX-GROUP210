using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NorthWestLabs.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult CreateQuote()
        {
            return View();
        }

        public ActionResult ViewQuote()
        {
            return View();
        }

        public ActionResult CreateOrder()
        {
            return View();
        }

        public ActionResult CreateCustomerOrder()
        {
            return View();
        }
        public ActionResult OrderSummary()
        {
            return View();
        }

        public ActionResult CurrentOrderList()
        {
            return View();
        }

        public ActionResult PastOrderList()
        {
            return View();
        }

        public ActionResult OrderDetails()
        {
            return View();
        }



        public ActionResult HourlyChargeRate()
        {
            return View();
        }

        public ActionResult WorkOrders()
        {
            return View();
        }

        public ActionResult ProfitabilityReports()
        {
            return View();
        }


        public ActionResult AdHocReport()
        {
            return View();
        }

        public ActionResult ShowAdHocReport()
        {
            return View();
        }

        public ActionResult ShowProfitabilityReport()
        {
            return View();
        }
        
    }
}