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
    
    public partial class ChiTietHoaDon
    {
        public string ID { get; set; }
        public string MaHoaDon { get; set; }
        public double Line { get; set; }
        public double MaSP { get; set; }
        public string TenSp { get; set; }
        public double SoLuong { get; set; }
        public string DVT { get; set; }
        public double DonGia { get; set; }
        public string TienTe { get; set; }
        public double GiaNET { get; set; }
        public int Thue { get; set; }
        public double GiaTri { get; set; }
        public double TongThue { get; set; }
        public double TongDonHang { get; set; }
        public double TongGiaVon { get; set; }
    
        public virtual HoaDon HoaDon { get; set; }
        public virtual Sanpham Sanpham { get; set; }
        public virtual Sanpham Sanpham1 { get; set; }
        public virtual Thue Thue1 { get; set; }
    }
}
