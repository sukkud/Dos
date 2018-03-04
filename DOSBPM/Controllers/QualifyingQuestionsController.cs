using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DOSBPM.Controllers
{
    public class QualifyingQuestionsController : Controller
    {
        // GET: QualifyingQuestions
        public ActionResult Index()
        {
            Log.Info("Qualifying Questions Controller Started");

            return View();
        }
    }
}