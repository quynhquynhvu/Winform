//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QLBANHANG
{
    using System;
    using System.Collections.Generic;
    
    public partial class TrangThai
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TrangThai()
        {
            this.YeuCauMuaHangs = new HashSet<YeuCauMuaHang>();
        }
    
        public double MaTrangThai { get; set; }
        public string MieuTa { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<YeuCauMuaHang> YeuCauMuaHangs { get; set; }
    }
}
