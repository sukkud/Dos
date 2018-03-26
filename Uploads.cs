using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DOSBPM.Models
{
    public class Uploads
    {
        public string Id { get; set; }
        public string County_Name { get; set; }
        public SelectList CountyNames { get; set; }
    }
}