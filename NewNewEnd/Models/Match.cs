//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace NewNewEnd.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Match
    {
        public int MatchId { get; set; }
        public Nullable<System.DateTime> DateTime { get; set; }
        public string Venue { get; set; }
        public Nullable<int> AmountPaid { get; set; }
        public Nullable<bool> Forfeit { get; set; }
        public Nullable<int> MemberId { get; set; }
    
        public virtual Member Member { get; set; }
    }
}
