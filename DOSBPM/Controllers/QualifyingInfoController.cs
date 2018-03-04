using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DOSBPM.Models;
using Newtonsoft.Json;

namespace DOSBPM.Controllers
{
    public class QualifyingInfoController : Controller
    {
        DEV_CODES_APPDBEntities db = new DEV_CODES_APPDBEntities();

        // GET: QualifyingInfo
        public ActionResult Index()
        {
            Log.Info("Qualifying Info Controller Started");
            //While Loading Deserialization
            BuildingApplication buildApp = new BuildingApplication();
            QualifyingInfo qualifyingInfo = new QualifyingInfo();
                       

            if (Session["BuildingApplication"] != null)
            {
                var data = (BuildingApplication)Session["BuildingApplication"];
               
                //qualifyingInfo =(QualifyingInfo)Session["QualifyingInfo"];


            }
            else
            {
                string jsonData = string.Empty;
                temp_BPMData objtemp_BPMData = db.temp_BPMData.FirstOrDefault(x => x.AppID == "1" && x.UserID == "1");
                if (objtemp_BPMData != null)
                {
                    jsonData = objtemp_BPMData.JsonData;
                }

                buildApp = JsonConvert.DeserializeObject<BuildingApplication>(jsonData);
            }

            if (buildApp == null)
            {
                buildApp = new BuildingApplication();
            }

            ViewBag.info = new List<SelectListItem> {
                                                        new SelectListItem {Value = "1", Text="Building Permit Application", Selected = (buildApp.QualifyingInfoData?.TransactionType=="1")},
                                                        new SelectListItem {Value = "2", Text="Demolition Permit Application", Selected=(buildApp.QualifyingInfoData?.TransactionType=="2")}

                                                     };
            

            return View(buildApp.QualifyingInfoData);
        }
        [HttpPost]
        public ActionResult Index(QualifyingInfo qualifyingInfo)
        {
            //store in session
            BuildingApplication buildApp = null;
            if (Session["BuildingApplication"] != null)
            {
                buildApp = (BuildingApplication)Session["BuildingApplication"];
            }
            else
            {
                buildApp = new BuildingApplication();
            }
            buildApp.QualifyingInfoData = qualifyingInfo;
            Session["BuildingApplication"] = buildApp;

            string buildAppString = JsonConvert.SerializeObject(buildApp);
            temp_BPMData objtemp_BPMData = db.temp_BPMData.FirstOrDefault(x => x.AppID == "1" && x.UserID == "1");
            if (objtemp_BPMData != null)
            {
                objtemp_BPMData.AppID = "1";
                objtemp_BPMData.UserID = "1";
                objtemp_BPMData.JsonData = buildAppString;
                db.SaveChanges();
            }
            else { 
            temp_BPMData objtempBPM = new temp_BPMData();
            objtempBPM.AppID = "1";
            objtempBPM.UserID = "1";
            objtempBPM.JsonData = buildAppString;
            db.temp_BPMData.Add(objtempBPM);
            db.SaveChanges();
            }


            return RedirectToAction("Index", "PropertyOwnerInfo");
        }
    }
}