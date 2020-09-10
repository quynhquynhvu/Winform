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
    public partial class FormNHANVIEN : Form
    {
        public FormNHANVIEN()
        {
            InitializeComponent();
        }
        //EntitiesBANHANG db = new EntitiesBANHANG();
        EntitiesHarmony db = new EntitiesHarmony();
        void LoadNV()
        {
            var dsNV = from nv in db.NhanViens
                       select new
                       {
                           nv.MaNhanVien,nv.Ten, nv.GioiTinh, nv.DiaChi, nv.Email, nv.SDT, nv.MaChucVu
                       };
            dGVNV.DataSource = dsNV.ToList();
        }

        void ThemNV()
        {
            NhanVien nhanVien = new NhanVien();
            nhanVien.MaNhanVien = txtMaNV.Text;
            nhanVien.Ten = txtTenNV.Text;
            nhanVien.GioiTinh = cBoGioiTinh.Text;
            nhanVien.DiaChi = txtDiaChi.Text;
            nhanVien.SDT = txtSDT.Text;
            nhanVien.Email = txtEmail.Text;
            nhanVien.MaChucVu = txtMaChucVu.Text;
            db.NhanViens.Add(nhanVien);
            db.SaveChanges();
        }

        void XoaNV()
        {
            NhanVien nv = db.NhanViens.Where(p => p.MaNhanVien.ToString() == txtMaNV.Text).SingleOrDefault();
            db.NhanViens.Remove(nv);
            db.SaveChanges();
        }

        void SuaNV()
        {
            NhanVien nhanVien = db.NhanViens.Where(p => p.MaNhanVien == txtMaNV.Text).SingleOrDefault();
            nhanVien.MaNhanVien = txtMaNV.Text;
            nhanVien.Ten = txtTenNV.Text;
            nhanVien.GioiTinh = cBoGioiTinh.Text;
            nhanVien.DiaChi = txtDiaChi.Text;
            nhanVien.SDT = txtSDT.Text;
            nhanVien.Email = txtEmail.Text;
            nhanVien.MaChucVu = txtMaChucVu.Text;
            db.SaveChanges();
        }

        void SearchKH()
        {
            var dsNV = from nv in db.NhanViens
                       where nv.Ten == txtSearch.Text
                       select new
                       {
                           nv.MaNhanVien,
                           nv.Ten,
                           nv.GioiTinh,
                           nv.DiaChi,
                           nv.Email,
                           nv.SDT,
                           nv.MaChucVu
                       };
            dGVNV.DataSource = dsNV.ToList();
        }
        private void FormNHANVIEN_Load(object sender, EventArgs e)
        {
            LoadNV();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            ThemNV();
            LoadNV();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            XoaNV();
            LoadNV();
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            SuaNV();
            LoadNV();
        }

        private void dGVNV_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtMaNV.Text = dGVNV.Rows[e.RowIndex].Cells[0].Value.ToString();
            txtTenNV.Text = (string)dGVNV.Rows[e.RowIndex].Cells[1].Value;
            cBoGioiTinh.Text = (string)dGVNV.Rows[e.RowIndex].Cells[2].Value;
            txtDiaChi.Text = (string)dGVNV.Rows[e.RowIndex].Cells[3].Value;
            txtSDT.Text = (string)dGVNV.Rows[e.RowIndex].Cells[5].Value;
            txtEmail.Text = (string)dGVNV.Rows[e.RowIndex].Cells[4].Value;
            txtMaChucVu.Text = (string)dGVNV.Rows[e.RowIndex].Cells[6].Value;
        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            LoadNV();
        }

        private void dGVNV_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
