using QLBanHang;
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
    public partial class FormCTHD : Form
    {
        public FormCTHD()
        {
            InitializeComponent();
        }
        //EntitiesBANHANG db = new EntitiesBANHANG();
        EntitiesHarmony db = new EntitiesHarmony();
        void LoadCTHD()
        {
            var dsCTHD = from CTHD in db.ChiTietHoaDons
                         where CTHD.MaHoaDon == Current.CurrentHD.MaHoaDon
                         select CTHD;
            dataGridView1.DataSource = dsCTHD.ToList();
        }

        void ThemCTHD()
        {
            if (Current.CurrentSP.TonKho.SoLuongTon > Convert.ToInt32(txtSoLuong.Text))
            {
                ChiTietHoaDon chiTietHoaDon = new ChiTietHoaDon();
                chiTietHoaDon.ID = txtID.Text;
                chiTietHoaDon.MaHoaDon = txtMaHD.Text;
                chiTietHoaDon.Line = Convert.ToDouble(txtLine.Text);
                chiTietHoaDon.MaSP = Convert.ToDouble(txtMaSP.Text);
                chiTietHoaDon.TenSp = txtTenSP.Text;
                chiTietHoaDon.SoLuong = Convert.ToDouble(txtSoLuong.Text);
                chiTietHoaDon.DVT = txtDVT.Text;
                chiTietHoaDon.DonGia = Convert.ToDouble(txtDonGia.Text);
                chiTietHoaDon.TienTe = txtTienTe.Text;
                chiTietHoaDon.GiaNET = Convert.ToDouble(txtGiaNET.Text);
                chiTietHoaDon.Thue = Convert.ToInt32(txtThue.Text);
                chiTietHoaDon.GiaTri = chiTietHoaDon.SoLuong * chiTietHoaDon.DonGia;
                chiTietHoaDon.TongThue = chiTietHoaDon.SoLuong * chiTietHoaDon.DonGia;
                chiTietHoaDon.TongDonHang = chiTietHoaDon.SoLuong * chiTietHoaDon.DonGia;
                chiTietHoaDon.TongGiaVon = chiTietHoaDon.SoLuong * chiTietHoaDon.DonGia;
                db.ChiTietHoaDons.Add(chiTietHoaDon);
                db.SaveChanges();
            }
            else
            {
                TonKho spTk = db.TonKhoes.Where(p => p.MaSanPham.ToString() == txtMaSP.Text).SingleOrDefault();
                spTk.SoLuongYeuCau = txtSoLuong.Text;
                db.SaveChanges();
                MessageBox.Show("Số lượng tồn kho sản phẩm ít hơn so với số lượng sản phẩm yêu cầu");
            }
            
            
        }

        void XoaCTHD()
        {
            ChiTietHoaDon chiTietHoaDon = db.ChiTietHoaDons.Where(p => p.ID == txtID.Text).SingleOrDefault();
            db.ChiTietHoaDons.Remove(chiTietHoaDon);
            db.SaveChanges();
        }

        void SuaCTHD()
        {
            ChiTietHoaDon chiTietHoaDon = db.ChiTietHoaDons.Where(p => p.ID == txtID.Text).SingleOrDefault();
            chiTietHoaDon.ID = txtID.Text;
            chiTietHoaDon.MaHoaDon = txtMaHD.Text;
            chiTietHoaDon.Line = Convert.ToDouble(txtLine.Text);
            chiTietHoaDon.MaSP = Convert.ToDouble(txtMaSP.Text);
            chiTietHoaDon.TenSp = txtTenSP.Text;
            chiTietHoaDon.SoLuong = Convert.ToDouble(txtSoLuong.Text);
            chiTietHoaDon.DVT = txtDVT.Text;
            chiTietHoaDon.DonGia = Convert.ToDouble(txtDonGia.Text);
            chiTietHoaDon.TienTe = txtTienTe.Text;
            chiTietHoaDon.GiaNET = Convert.ToDouble(txtGiaNET.Text);
            chiTietHoaDon.Thue = Convert.ToInt32(txtThue.Text);
            chiTietHoaDon.GiaTri = chiTietHoaDon.SoLuong * chiTietHoaDon.DonGia;
            chiTietHoaDon.TongThue = chiTietHoaDon.SoLuong * chiTietHoaDon.DonGia;
            chiTietHoaDon.TongDonHang = chiTietHoaDon.SoLuong * chiTietHoaDon.DonGia;
            chiTietHoaDon.TongGiaVon = chiTietHoaDon.SoLuong * chiTietHoaDon.DonGia;
            db.SaveChanges();
        }
        private void FormCTHD_Load(object sender, EventArgs e)
        {
            LoadCTHD();
            txtMaSP.Text = Current.CurrentSP.IDSanPham.ToString();
            txtTenSP.Text = Current.CurrentSP.TenSanPham;
            txtMaHD.Text = Current.CurrentHD.MaHoaDon;
            txtDonGia.Text = "100000";
            txtDVT.Text = Current.CurrentSP.DVT;
            if (txtSoLuong.Text != string.Empty)
            {
                int x = Convert.ToInt32(txtDonGia.Text) * Convert.ToInt32(txtSoLuong.Text);
                MessageBox.Show(x.ToString());
                txtGiaTri.Text = (Convert.ToInt32(txtDonGia.Text) * Convert.ToInt32(txtSoLuong.Text)).ToString();
                txtTongThue.Text = (Convert.ToInt32(txtDonGia.Text) * Convert.ToInt32(txtSoLuong.Text)).ToString();
                txtTongGiaVon.Text = (Convert.ToInt32(txtDonGia.Text) * Convert.ToInt32(txtSoLuong.Text)).ToString();
                txtTongDonHang.Text = (Convert.ToInt32(txtDonGia.Text) * Convert.ToInt32(txtSoLuong.Text)).ToString();
            }
        }

        private void btnThemCTHD_Click(object sender, EventArgs e)
        {
            ThemCTHD();
            LoadCTHD();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            XoaCTHD();
            LoadCTHD();
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            SuaCTHD();
            LoadCTHD();
        }

        private void txtSoLuong_TextChanged(object sender, EventArgs e)
        {
            if (txtSoLuong.Text != string.Empty)
            {
                txtGiaTri.Text = (Convert.ToInt32(txtDonGia.Text) * Convert.ToInt32(txtSoLuong.Text)).ToString();
                txtTongThue.Text = (Convert.ToInt32(txtDonGia.Text) * Convert.ToInt32(txtSoLuong.Text)).ToString();
                txtTongGiaVon.Text = (Convert.ToInt32(txtDonGia.Text) * Convert.ToInt32(txtSoLuong.Text)).ToString();
                txtTongDonHang.Text = (Convert.ToInt32(txtDonGia.Text) * Convert.ToInt32(txtSoLuong.Text)).ToString();
            }
        }

        private void label10_Click(object sender, EventArgs e)
        {

        }
    }
}
