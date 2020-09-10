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
    public partial class FormSANPHAM : Form
    {
        public FormSANPHAM()
        {
            InitializeComponent();
        }
        //EntitiesBANHANG db = new EntitiesBANHANG();
        EntitiesHarmony db = new EntitiesHarmony();
        void LoadSP()
        {
            var resuls = from ListSP in db.Sanphams
                         select new
                         {
                             ListSP.IDSanPham, ListSP.TenSanPham, ListSP.LoaiSP,
                             ListSP.MauSac, ListSP.KichCo, ListSP.DVT, ListSP.NhanHieu
                         };
            dGVSp.DataSource = resuls.ToList();
        }
        
        private void FormSANPHAM_Load(object sender, EventArgs e)
        {
            LoadSP();
        }

        void ThemSP()
        {
            Sanpham sanpham = new Sanpham();
            sanpham.IDSanPham = Convert.ToDouble(txtMaSP.Text);
            sanpham.TenSanPham = txtTenSP.Text;
            sanpham.KichCo = txtKichCo.Text;
            sanpham.LoaiSP = txtLoaiSP.Text;
            sanpham.MauSac = txtMauSac.Text;
            sanpham.DVT = txtDVT.Text;
            sanpham.NhanHieu = txtNhanHieu.Text;
            db.Sanphams.Add(sanpham);
            db.SaveChanges();
        }

        void XoaSP()
        {
            Sanpham sp = db.Sanphams.Where(p => p.IDSanPham.ToString() == txtMaSP.Text).SingleOrDefault();
            db.Sanphams.Remove(sp);
            db.SaveChanges();
        }

        void SuaSP()
        {
            Sanpham sp = db.Sanphams.Where(p => p.IDSanPham.ToString() == txtMaSP.Text).SingleOrDefault();
            sp.IDSanPham = Convert.ToDouble(txtMaSP.Text);
            sp.KichCo = txtKichCo.Text;
            sp.LoaiSP = txtLoaiSP.Text;
            sp.MauSac = txtMauSac.Text;
            sp.NhanHieu = txtNhanHieu.Text;
            sp.TenSanPham = txtTenSP.Text;
            sp.DVT = txtDVT.Text;
            db.SaveChanges();
        }

        void SearchSP()
        {
            var results = from sp in db.Sanphams
                          where sp.TenSanPham == txtSearch.Text
                          select new
                          {
                              sp.IDSanPham,
                              sp.TenSanPham,
                              sp.LoaiSP,
                              sp.MauSac,
                              sp.KichCo,
                              sp.DVT,
                              sp.NhanHieu
                          };
            dGVSp.DataSource = results.ToList();
        }

        private void dGVSp_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                txtMaSP.Text = dGVSp.Rows[e.RowIndex].Cells[0].Value.ToString();
                txtTenSP.Text = (string)dGVSp.Rows[e.RowIndex].Cells[1].Value;
                txtLoaiSP.Text = (string)dGVSp.Rows[e.RowIndex].Cells[2].Value;
                txtMauSac.Text = (string)dGVSp.Rows[e.RowIndex].Cells[3].Value;
                txtKichCo.Text = (string)dGVSp.Rows[e.RowIndex].Cells[4].Value;
                txtDVT.Text = (string)dGVSp.Rows[e.RowIndex].Cells[5].Value;
                txtNhanHieu.Text = (string)dGVSp.Rows[e.RowIndex].Cells[6].Value;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            SearchSP();
        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            LoadSP();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            ThemSP();
            LoadSP();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            XoaSP();
            LoadSP();
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            SuaSP();
            LoadSP();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }
    }
}
