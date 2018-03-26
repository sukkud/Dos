using DOSBPM.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.Data.SqlClient;

namespace DOSBPM.Controllers
{
    public class UploadsController : Controller
    {
        DEV_CODES_APPDBEntities db = new DEV_CODES_APPDBEntities();
        // GET: Uploads
        public ActionResult Index()
        {
            Log.Info("Uploads Controller Started");

            return View();
        }

        [HttpPost]
       
        //public JsonResult GetCounties(string Prefix)
        //{
        //    List<L_County> searchCounties = new List<L_County>();
        //    var Counties = db.L_County.Where(a => a.County_Name.Contains(Prefix));
           
            
        //    return Json(searchCounties, JsonRequestBehavior.AllowGet);
        //}

        public JsonResult GetCounties(string prefix)
        {
            List<Uploads> allsearch = db.L_County.Where(x => x.County_Name.Contains(prefix)).Select(x => new Uploads
            {
                Id = x.County_ID,
                County_Name = x.County_Name
            }).ToList();
            return new JsonResult { Data = allsearch, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }
        //Note : you can bind same list from database  
        //return Json(db.L_County.Where(c => c.County_Name.StartsWith(prefix)).Select(a => new { label = a.County_Name}), JsonRequestBehavior.AllowGet);

        //return Json(db.Countries.Where(c => c.Name.StartsWith(term)).Select(a => new { label = a.Name }), JsonRequestBehavior.AllowGet);
        //

        //Searching records from list using LINQ query  
        //var uploadCityList = (from N in ObjList
        //                      where N.CityName.StartsWith(Prefix)
        //                      select new { N.CityName });
        //return Json(uploadCityList, JsonRequestBehavior.AllowGet);
    }

    }
