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
    
    public partial class ChiTietDonHang
    {
        public double ID { get; set; }
        public double MaDon { get; set; }
        public double Line { get; set; }
        public double MaSanPham { get; set; }
        public string TenSanPham { get; set; }
        public double SoLuong { get; set; }
        public double GiaTri { get; set; }
        public string ĐVT { get; set; }
        public double Tongtien { get; set; }
        public Nullable<double> NgayGiaoHang { get; set; }
    
        public virtual DateTime DateTime { get; set; }
        public virtual DonHang DonHang { get; set; }
        public virtual Sanpham Sanpham { get; set; }
    }
}
