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
    
    public partial class YeuCauMuaHang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public YeuCauMuaHang()
        {
            this.ChiTietYCMHs = new HashSet<ChiTietYCMH>();
        }
    
        public string MaYCMH { get; set; }
        public string MaNhaCungCap { get; set; }
        public double NgayduKienGiaoHang { get; set; }
        public double TrangThai { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietYCMH> ChiTietYCMHs { get; set; }
        public virtual DateTime DateTime { get; set; }
        public virtual NhaCungCap NhaCungCap { get; set; }
        public virtual TrangThai TrangThai1 { get; set; }
    }
}