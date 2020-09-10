using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLBANHANG
{
    public partial class FormPrintHD : Form
    {
        //EntitiesBANHANG db = new EntitiesBANHANG();
        EntitiesHarmony db = new EntitiesHarmony();
        HoaDon _hoaDon = new HoaDon();
        KhachHang _khachHang = new KhachHang();
        List<ChiTietHoaDon> _chiTietHoaDons = new List<ChiTietHoaDon>();
        public FormPrintHD(HoaDon hoaDon, List<ChiTietHoaDon> chiTietHoaDons)
        {
            InitializeComponent();
            _hoaDon = hoaDon;
            _khachHang = db.KhachHangs.Where(p => p.MaKhachHang == _hoaDon.MaKhachHang).SingleOrDefault();
            _chiTietHoaDons = chiTietHoaDons;
        }
        
        private void FormPrintHD_Load(object sender, EventArgs e)
        {
            MessageBox.Show("Active");
            ChiTietHoaDonBindingSource.DataSource = _chiTietHoaDons;
            //bindingSource1.DataSource = _chiTietHoaDons;
            Microsoft.Reporting.WinForms.ReportParameter[] p =
                new Microsoft.Reporting.WinForms.ReportParameter[]
                {
                    new Microsoft.Reporting.WinForms.ReportParameter("pMaHD",_hoaDon.MaHoaDon.ToString()),
                    new Microsoft.Reporting.WinForms.ReportParameter("pNgayTao",_hoaDon.NgayTao.ToString()),
                    new Microsoft.Reporting.WinForms.ReportParameter("pNgayIn",_hoaDon.NgayIn.ToString()),
                    new Microsoft.Reporting.WinForms.ReportParameter("pTenKH",_khachHang.Ten.ToString()),
                };
            this.reportViewer1.LocalReport.SetParameters(p);
            //this.reportViewer1.RefreshReport();
            ////this.reportViewer2.RefreshReport();
            //this.reportViewer1.RefreshReport();
            //this.reportViewer1.RefreshReport();
            //this.reportViewer1.RefreshReport();
            this.reportViewer1.RefreshReport();
            this.reportViewer1.RefreshReport();
        }
    }
}
