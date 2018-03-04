using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DOSBPM.Controllers
{
    public class BaseController : Controller
    {
        DEV_CODES_APPDBEntities appdbEntities = new DEV_CODES_APPDBEntities();
        public SelectList GetStates()
        {
            return new SelectList(appdbEntities.L_State, "StateID", "StateName");
        }
        public SelectList GetCountries()
        {
            return new SelectList(appdbEntities.L_Country, "CountryID", "CountryName");
        }

        public SelectList GetCounties()
        {
            return new SelectList(appdbEntities.L_County, "CountyID", "CountyName");
        }
    }
}