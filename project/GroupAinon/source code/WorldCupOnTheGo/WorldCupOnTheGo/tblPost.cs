//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WorldCupOnTheGo
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblPost
    {
        public long Id { get; set; }
        public string title { get; set; }
        public string content { get; set; }
        public Nullable<System.DateTime> created_date { get; set; }
        public Nullable<long> created_by { get; set; }
        public Nullable<System.DateTime> updated_date { get; set; }
        public Nullable<long> updated_by { get; set; }
        public string status { get; set; }
        public System.DateTime published_date { get; set; }
        public long match_id_id { get; set; }
        public string file_path { get; set; }
    }
}
