﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DOSBPM.Controllers
{
    public class UploadsController : Controller
    {
        // GET: Uploads
        public ActionResult Index()
        {
            Log.Info("Uploads Controller Started");

            return View();
        }
    }
}