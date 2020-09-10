using QLBANHANG;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLBanHang
{
    public partial class FormKHACHHANG : Form
    {
        public FormKHACHHANG()
        {
            InitializeComponent();
        }
        //EntitiesBANHANG db = new EntitiesBANHANG();
        EntitiesHarmony db = new EntitiesHarmony();
        void LoadKH()
        {
            var dsKH = from kh in db.KhachHangs
                       join nhomKH in db.NhomKhachHangs
                        on kh.MaNhom equals nhomKH.MaNhom
                       select new
                       {
                           kh.MaKhachHang,
                           kh.Ten,
                           kh.MaNhom,
                           nhomKH.MieuTa,
                           kh.GioiTinh,
                           kh.DiaChi,
                           kh.SDT,
                           kh.Email,
                           kh.TrachNhiemThue,
                           kh.MST,
                           kh.LoaiHinh
                       };
            dGVKH.DataSource = dsKH.ToList();
        }

        void ThemKH()
        {
            KhachHang khachHang = new KhachHang();
            khachHang.MaKhachHang = txtMaKH.Text;
            khachHang.Ten = txtTenKH.Text;
            khachHang.MaNhom = txtMaNhom.Text;
            khachHang.GioiTinh = cBoGioiTinh.Text;
            khachHang.DiaChi = txtDiaChi.Text;
            khachHang.SDT = txtSDT.Text;
            khachHang.Email = txtEmail.Text;
            khachHang.TrachNhiemThue = txtTNT.Text;
            khachHang.MST = Convert.ToDouble(txtMST.Text);
            khachHang.LoaiHinh = txtLoaiHinh.Text;
            db.KhachHangs.Add(khachHang);
            db.SaveChanges();
        }

        void XoaKH()
        {
            KhachHang kh = db.KhachHangs.Where(p => p.MaKhachHang.ToString() == txtMaKH.Text).SingleOrDefault();
            db.KhachHangs.Remove(kh);
            db.SaveChanges();
        }

        void SuaKH()
        {
            KhachHang khachHang = db.KhachHangs.Where(p => p.MaKhachHang == txtMaKH.Text).SingleOrDefault();
            khachHang.MaKhachHang = txtMaKH.Text;
            khachHang.Ten = txtTenKH.Text;
            khachHang.MaNhom = txtMaNhom.Text;
            khachHang.GioiTinh = cBoGioiTinh.Text;
            khachHang.DiaChi = txtDiaChi.Text;
            khachHang.SDT = txtSDT.Text;
            khachHang.Email = txtEmail.Text;
            khachHang.TrachNhiemThue = txtTNT.Text;
            khachHang.MST = Convert.ToDouble(txtMST.Text);
            khachHang.LoaiHinh = txtLoaiHinh.Text;
            db.SaveChanges();
        }

        void SearchKH()
        {
            var dsKH = from kh in db.KhachHangs
                       join nhomKH in db.NhomKhachHangs
                       on kh.MaNhom equals nhomKH.MaNhom
                       where kh.Ten == txtSearch.Text
                          select new
                          {
                              kh.MaKhachHang,
                              kh.Ten,
                              kh.MaNhom,
                              nhomKH.MieuTa,
                              kh.GioiTinh,
                              kh.DiaChi,
                              kh.SDT,
                              kh.Email,
                              kh.TrachNhiemThue,
                              kh.MST,
                              kh.LoaiHinh
                          };
            dGVKH.DataSource = dsKH.ToList();
        }
        private void FormKHACHHANG_Load(object sender, EventArgs e)
        {
            LoadKH();
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            SearchKH();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            ThemKH();
            LoadKH();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            XoaKH();
            LoadKH();
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            SuaKH();
            LoadKH();
        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            LoadKH();
        }

        private void dGVKH_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtMaKH.Text = dGVKH.Rows[e.RowIndex].Cells[0].Value.ToString();
            txtTenKH.Text = (string)dGVKH.Rows[e.RowIndex].Cells[1].Value;
            txtMaNhom.Text = (string)dGVKH.Rows[e.RowIndex].Cells[2].Value;
            cBoGioiTinh.Text = (string)dGVKH.Rows[e.RowIndex].Cells[4].Value;
            txtDiaChi.Text = (string)dGVKH.Rows[e.RowIndex].Cells[5].Value;
            txtSDT.Text = (string)dGVKH.Rows[e.RowIndex].Cells[6].Value;
            txtEmail.Text = (string)dGVKH.Rows[e.RowIndex].Cells[7].Value;
            txtTNT.Text = (string)dGVKH.Rows[e.RowIndex].Cells[8].Value;
            txtMST.Text = (string)dGVKH.Rows[e.RowIndex].Cells[9].Value.ToString();
            txtLoaiHinh.Text = (string)dGVKH.Rows[e.RowIndex].Cells[10].Value;
        }
    }
}
