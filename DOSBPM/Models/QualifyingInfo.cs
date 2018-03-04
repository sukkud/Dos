using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DOSBPM.Models
{
    public class QualifyingInfo
    {

        public string TransactionType { get; set;}
        public bool IsExistingBuilding { get; set; }

        public bool IsNewConstruction { get; set; }

    }
}