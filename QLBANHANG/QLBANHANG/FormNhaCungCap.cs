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
    public partial class FormNhaCungCap : Form
    {
        public FormNhaCungCap()
        {
            InitializeComponent();
        }

        //EntitiesBANHANG db = new EntitiesBANHANG();
        EntitiesHarmony db = new EntitiesHarmony();
        void LoadnhaCC()
        {
            var dsnhaCC = from nhaCC in db.NhaCungCaps
                          select new
                          {
                              nhaCC.MaNCC,
                              nhaCC.Ten,
                              nhaCC.PhapNhan,
                              nhaCC.LoaiHinhThue,
                              nhaCC.MST,
                              nhaCC.TrachNhiem,
                              nhaCC.SDT,
                              nhaCC.DiaChi,
                              nhaCC.DiaChiMail
                          };
            dGVnhaCC.DataSource = dsnhaCC.ToList();
        }

        void Them()
        {
            NhaCungCap nhaCungCap = new NhaCungCap();
            nhaCungCap.MaNCC = txtMaCC.Text;
            nhaCungCap.Ten = txtTenCC.Text;
            nhaCungCap.PhapNhan = txtPhapNhan.Text;
            nhaCungCap.LoaiHinhThue = txtLoaiThue.Text;
            nhaCungCap.MST = Convert.ToDouble(txtMST.Text);
            nhaCungCap.SDT = txtSDT.Text;
            nhaCungCap.DiaChi = txtDiaChi.Text;
            nhaCungCap.TrachNhiem = txtTN.Text;
            nhaCungCap.DiaChiMail = txtEmail.Text;
            db.NhaCungCaps.Add(nhaCungCap);
            db.SaveChanges();
        }

        void Xoa()
        {
            NhaCungCap nhaCungCap = db.NhaCungCaps.Where(p => p.MaNCC == txtMaCC.Text).SingleOrDefault();
            db.NhaCungCaps.Remove(nhaCungCap);
            db.SaveChanges();
        }

        void Sua()
        {
            NhaCungCap nhaCungCap = db.NhaCungCaps.Where(p => p.MaNCC == txtMaCC.Text).SingleOrDefault();
            nhaCungCap.MaNCC = txtMaCC.Text;
            nhaCungCap.Ten = txtTenCC.Text;
            nhaCungCap.PhapNhan = txtPhapNhan.Text;
            nhaCungCap.LoaiHinhThue = txtLoaiThue.Text;
            nhaCungCap.MST = Convert.ToDouble(txtMST.Text);
            nhaCungCap.SDT = txtSDT.Text;
            nhaCungCap.DiaChi = txtDiaChi.Text;
            nhaCungCap.TrachNhiem = txtTN.Text;
            nhaCungCap.DiaChiMail = txtEmail.Text;
            db.SaveChanges();
        }
        private void FormNhaCungCap_Load(object sender, EventArgs e)
        {
            LoadnhaCC();
        }

        private void dGVnhaCC_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtMaCC.Text = dGVnhaCC.Rows[e.RowIndex].Cells[0].Value.ToString();
            txtTenCC.Text = (string)dGVnhaCC.Rows[e.RowIndex].Cells[1].Value;
            txtPhapNhan.Text = (string)dGVnhaCC.Rows[e.RowIndex].Cells[2].Value;
            txtLoaiThue.Text = (string)dGVnhaCC.Rows[e.RowIndex].Cells[3].Value;
            txtMST.Text = (string)dGVnhaCC.Rows[e.RowIndex].Cells[4].Value.ToString();
            txtTN.Text = (string)dGVnhaCC.Rows[e.RowIndex].Cells[5].Value;
            txtSDT.Text = (string)dGVnhaCC.Rows[e.RowIndex].Cells[6].Value;
            txtDiaChi.Text = (string)dGVnhaCC.Rows[e.RowIndex].Cells[7].Value;
            txtEmail.Text = (string)dGVnhaCC.Rows[e.RowIndex].Cells[8].Value.ToString();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            Them();
            LoadnhaCC();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            Xoa();
            LoadnhaCC();
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            Sua();
            LoadnhaCC();
        }

        private void dGVnhaCC_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
