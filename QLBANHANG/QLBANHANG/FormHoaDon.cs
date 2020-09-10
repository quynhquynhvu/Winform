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
    public partial class FormHoaDon : Form
    {
        public FormHoaDon()
        {
            InitializeComponent();
        }
        //EntitiesBANHANG db = new EntitiesBANHANG();
        //Doanh_so doanh_So = new Doanh_so();
        EntitiesHarmony db = new EntitiesHarmony();
        List<ChiTietHoaDon> chiTietHoaDons = new List<ChiTietHoaDon>();
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

        void LoadSP()
        {
            var resuls = from ListSP in db.Sanphams
                         select new
                         {
                             ListSP.IDSanPham,
                             ListSP.TenSanPham,
                             ListSP.LoaiSP,
                             ListSP.MauSac,
                             ListSP.KichCo,
                             ListSP.DVT,
                             ListSP.NhanHieu
                         };
            dGVSP.DataSource = resuls.ToList();
        }

        void LoadHD()
        {
            var results = from hd in db.HoaDons
                          join kh in db.KhachHangs on hd.MaKhachHang equals kh.MaKhachHang
                          join nv in db.NhanViens  on hd.MaNVKD equals nv.MaNhanVien
                          select new
                          {
                              hd.MaHoaDon,
                              hd.NgayTao,
                              hd.NgayIn,
                              hd.MaKhachHang,
                              TenKH = kh.Ten,
                              hd.MaNVKD,
                              TenNV = nv.Ten,
                          };
            dGVHoaDon.DataSource = results.ToList();
        }

        void TaoDon()
        {
            try
            {
                if (txtMaHD.Text != string.Empty && txtMaKH.Text != string.Empty && txtMaSP.Text != string.Empty)
                {
                    HoaDon hoaDon = new HoaDon();
                    hoaDon.MaHoaDon = txtMaHD.Text;
                    hoaDon.MaKhachHang = txtMaKH.Text;
                    hoaDon.NgayTao = Convert.ToDouble(txtDateIDLap.Text);
                    hoaDon.NgayIn = 0;
                    hoaDon.MaNVKD = txtMaNV.Text;
                    db.HoaDons.Add(hoaDon);
                    db.SaveChanges();
                }
            }
            catch (Exception)
            {

                //throw;
            }
        }

        void LoadCTHD()
        {
            var dsCTHD = from CTHD in db.ChiTietHoaDons
                         where CTHD.MaHoaDon == Current.CurrentHD.MaHoaDon
                         select CTHD;
            chiTietHoaDonBindingSource.DataSource = dsCTHD.ToList();
            chiTietHoaDons = dsCTHD.ToList();
        }

        private void openFormAddCTHD(Form childForm)
        {
            childForm.Show();
            //Current.CurrentCTHD=
            //Current.CurrentForm = childForm;
            //Current.CurrentToolStrip = tool;

            //if (activeForm != null)
            //{
            //    pre_tool.BackColor = System.Drawing.SystemColors.Control;
            //    activeForm.Close();

            //}
            //Current.CurrentToolStrip.BackColor = System.Drawing.SystemColors.ActiveCaption;
            //pre_tool = tool;
            //activeForm = childForm;
            //childForm.TopLevel = false;
            //childForm.FormBorderStyle = FormBorderStyle.None;
            //childForm.Dock = DockStyle.Fill;
            //panelChildForm.Controls.Add(childForm);
            //panelChildForm.Tag = childForm;
            //childForm.BringToFront();
            //childForm.Show();
        }
        private void FormHoaDon_Load(object sender, EventArgs e)
        {
            LoadKH();
            LoadHD();
            LoadSP();
        }

        private void dGVKH_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtMaKH.Text = dGVKH.Rows[e.RowIndex].Cells[0].Value.ToString();
        }

        private void dGVSP_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtMaSP.Text = dGVSP.Rows[e.RowIndex].Cells[0].Value.ToString();
            Sanpham sp = db.Sanphams.Where(p => p.IDSanPham.ToString() == txtMaSP.Text).SingleOrDefault();
            Current.CurrentSP = sp;
        }

        private void btnTaoDon_Click(object sender, EventArgs e)
        {
            TaoDon();
            LoadHD();
        }

        private void dGVHoaDon_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtMaHD.Text = dGVHoaDon.Rows[e.RowIndex].Cells[0].Value.ToString();
            txtDateIDLap.Text = dGVHoaDon.Rows[e.RowIndex].Cells[1].Value.ToString();
            txtMaKH.Text = dGVHoaDon.Rows[e.RowIndex].Cells[3].Value.ToString();
            txtMaNV.Text = dGVHoaDon.Rows[e.RowIndex].Cells[5].Value.ToString();
            //Current.CurrentMaHD = txtMaHD.Text;
            Current.CurrentHD = db.HoaDons.Where(p => p.MaHoaDon == txtMaHD.Text).SingleOrDefault();
            LoadCTHD();
        }

        private void btnThemCTHD_Click(object sender, EventArgs e)
        {
            openFormAddCTHD(new FormCTHD());
        }

        private void btnXuatHD_Click(object sender, EventArgs e)
        {
            HoaDon hoaDon = chiTietHoaDonBindingSource.Current as HoaDon;
            FormPrintHD formPrintHD = new FormPrintHD(Current.CurrentHD, chiTietHoaDons);
            formPrintHD.Show();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void dGVKH_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }
    }
}
