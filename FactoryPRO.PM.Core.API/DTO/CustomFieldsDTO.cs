using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FactoryPRO.PM.Core.API.DTO
{
    public class CustomFieldsDTO
    {
        public string EntityId { get; set; }
        public string Value { get; set; }
        public int CustomFieldId { get; set; }
        public string CreatedBy { get; set; }
        public string CreatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public string UpdatedDate { get; set; }

        //public int Cid { get; set; }
        //public string ProjectId { get; set; }
        //public string ModuleId { get; set; }
        //public string Revision { get; set; }
        //public string FieldName { get; set; }
        //public string FieldValue { get; set; }
        //public string CreatedBy { get; set; }
        //public string? CreatedDate { get; set; }


    }
}
