using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace NorthWestLabs.Controllers
{
    public class HomeController : Controller
    {
        //for the log in
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(FormCollection form, bool rememberMe = false)
        {
            //this will test if it is the authenticated user that we want.
            String email = form["Email address"].ToString();
            String password = form["Password"].ToString();
            if (string.Equals(email, "Customer") || string.Equals(email, "LabWorker") || string.Equals(email, "Manager") || string.Equals(email, "Master"))
            {
                FormsAuthentication.SetAuthCookie(email, rememberMe);
                Session["user"] = email;
                //use @Session["user"] in HTML to get this value
                return RedirectToAction("Index", "Home");
            }
            else
            {
                return View();
            }
        }
        public ActionResult LogOff()
        {
            //clears the session variable
            Session.Clear();
            FormsAuthentication.SignOut();
            Session.Abandon();
            return RedirectToAction("Index", "Home");
        }

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

        public ActionResult WorkOrderDetails()
        {
            return View();
        }

        public ActionResult AssayDetails()
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