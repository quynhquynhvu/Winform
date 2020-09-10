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
    public partial class FormLogIn : Form
    {
        public FormLogIn()
        {
            InitializeComponent();
        }

        //EntitiesBANHANG db = new EntitiesBANHANG();
        EntitiesHarmony db = new EntitiesHarmony();
        
        private void btnLogIn_Click(object sender, EventArgs e)
        {
            try
            {
                var user = db.Logins.Where(i => i.TenUser.ToString() == txtUser.Text && i.MatKhau.ToString() == txtPassWord.Text).FirstOrDefault();
                if (user != null)
                {
                    Current.CurrentUser = user;
                    foreach (ToolStripMenuItem item in Current.CurrentMenu.Items)
                    {
                        item.Enabled = true;
                        //if (item.Name == "panelSideMenu")
                        //{
                        //    item.Enabled = true;
                        //    break;
                        //}
                    }
                    //MessageBox.Show(user.Quyen);
                    //(this.Owner as FormDashBoard).CurrentNV(user);
                    this.Hide();

                }
                else
                {
                    txtUser.Clear();
                    txtPassWord.Clear();
                    MessageBox.Show("Đăng nhập sai");
                }
            }
            catch (Exception ex)
            {
                txtUser.Clear();
                txtPassWord.Clear();
                MessageBox.Show("Đăng nhập sai" + " " + ex.Message);
            }
        }

        private void btnLogOut_Click(object sender, EventArgs e)
        {
            txtUser.Clear();
            txtPassWord.Clear();
            this.Activate();
            foreach (ToolStripMenuItem item in Current.CurrentMenu.Items)
            {
                if (item.Text.Trim() == "SẢN PHẨM" || item.Text.Trim() == "KHÁCH HÀNG" || item.Text.Trim() == "HÓA ĐƠN"
                    || item.Text.Trim() == "BÁO CÁO DOANH THU" || item.Text.Trim() == "NHÀ CUNG CẤP" || item.Text.Trim() == "NHÂN VIÊN")
                {
                    item.Enabled = false;
                }
            }
        }

        private void FormLogIn_Load(object sender, EventArgs e)
        {
            if (Current.CurrentUser != null)
            {
                txtUser.Text = Current.CurrentUser.TenUser;
                txtPassWord.Text = Current.CurrentUser.MatKhau;
            }
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void txtUser_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtPassWord_TextChanged(object sender, EventArgs e)
        {

        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {

        }
    }
}
