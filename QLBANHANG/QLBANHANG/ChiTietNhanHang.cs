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
    
    public partial class ChiTietNhanHang
    {
        public double ID { get; set; }
        public double MaNhan { get; set; }
        public double MaDon { get; set; }
        public double Line { get; set; }
        public double MaSanPham { get; set; }
        public string TenSP { get; set; }
        public double SoLuongVanChuyen { get; set; }
    
        public virtual DonHang DonHang { get; set; }
        public virtual Sanpham Sanpham { get; set; }
    }
}
