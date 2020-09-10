using CheckInDH;
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
    public partial class DashBoard : Form
    {
        
        public DashBoard()
        {
            InitializeComponent();
            Current.CurrentMenu = menuStrip1;
            foreach (ToolStripMenuItem item in menuStrip1.Items)
            {
                if (item.Text.Trim() == "SẢN PHẨM" || item.Text.Trim() == "KHÁCH HÀNG"|| item.Text.Trim() == "HÓA ĐƠN"
                    || item.Text.Trim() == "BÁO CÁO DOANH THU"|| item.Text.Trim() == "NHÀ CUNG CẤP" || item.Text.Trim() == "NHÂN VIÊN"
                    || item.Text.Trim() == "TỒN KHO" || item.Text.Trim() == "BÁN HÀNG" )
                {
                    item.Enabled = false;
                }
            }
        }
        private Form activeForm = null;
        ToolStripMenuItem pre_tool = null;
        private void openChildForm(Form childForm, ToolStripMenuItem tool)
        {
            Current.CurrentForm = childForm;
            Current.CurrentToolStrip = tool;
            
            if (activeForm != null)
            {
                pre_tool.BackColor = System.Drawing.SystemColors.Control;
                activeForm.Close();
                
            }
            Current.CurrentToolStrip.BackColor = System.Drawing.SystemColors.ActiveCaption;
            pre_tool = tool;
            activeForm = childForm;
            childForm.TopLevel = false;
            childForm.FormBorderStyle = FormBorderStyle.None;
            childForm.Dock = DockStyle.Fill;
            panelChildForm.Controls.Add(childForm);
            panelChildForm.Tag = childForm;
            childForm.BringToFront();
            childForm.Show();
        }
        #region Phân quyền
        private void ManageLogIn(Form childForm, ToolStripMenuItem tool)
        {

            if (Current.CurrentUser.ID.Substring(0,2) == "AD")
            {
                openChildForm(childForm,tool);
            }
            else
                MessageBox.Show("Tài khoản của bạn không thể sử dụng chức năng này");
        }
        private void KeToanLogIn(Form childForm, ToolStripMenuItem tool)
        {

            if (Current.CurrentUser.ID.Substring(0, 2) == "KT"|| Current.CurrentUser.ID.Substring(0, 2) == "AD")
            {
                openChildForm(childForm, tool);
            }
            else
                MessageBox.Show("Tài khoản của bạn không thể sử dụng chức năng này");
        }
        private void BanHangLogIn(Form childForm, ToolStripMenuItem tool)
        {

            if (Current.CurrentUser.ID.Substring(0, 2) == "BH" || Current.CurrentUser.ID.Substring(0, 2) == "AD")
            {
                openChildForm(childForm, tool);
            }
            else
                MessageBox.Show("Tài khoản của bạn không thể sử dụng chức năng này");
        }
        private void NhapKhoLogIn(Form childForm, ToolStripMenuItem tool)
        {

            if (Current.CurrentUser.ID.Substring(0, 2) == "NK" || Current.CurrentUser.ID.Substring(0, 2) == "AD")
            {
                openChildForm(childForm, tool);
            }
            else
                MessageBox.Show("Tài khoản của bạn không thể sử dụng chức năng này");
        }

        //void AccountantLogin
        #endregion
        private void sẢNPHẨMToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ManageLogIn(new FormSANPHAM(),(ToolStripMenuItem)sender);
        }

        private void kHÁCHHÀNGToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ManageLogIn(new FormKHACHHANG(), (ToolStripMenuItem)sender);
        }

        private void nHÂNVIÊNToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //openChildForm(new FormNHANVIEN(), (ToolStripMenuItem)sender);
            ManageLogIn(new FormNHANVIEN(), (ToolStripMenuItem)sender);
        }
         

        private void hÓAĐƠNToolStripMenuItem_Click(object sender, EventArgs e)
        {
            BanHangLogIn(new FormHoaDon(), (ToolStripMenuItem)sender);
        }

        private void lOẠISẢNPHẨMToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ManageLogIn(new FormNhaCungCap(), (ToolStripMenuItem)sender);
        }

        private void bÁOCÁODOANHTHUToolStripMenuItem_Click(object sender, EventArgs e)
        {
            KeToanLogIn(new FormDoanhThu(), (ToolStripMenuItem)sender);
        }

        private void đĂNGNHẬPToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //this.Enabled = false;
            FormLogIn formLogin = new FormLogIn();
            //this.Hide();

            if (formLogin.ShowDialog(this) == DialogResult.OK)
            {
                this.Activate();
            }
        }

        private void tỒNKHOToolStripMenuItem_Click(object sender, EventArgs e)
        {
            NhapKhoLogIn(new FormQLKho(), (ToolStripMenuItem)sender);
        }

        private void panelChildForm_Paint(object sender, PaintEventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void DashBoard_Load(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click_1(object sender, EventArgs e)
        {

        }

        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void pictureBox1_Click_2(object sender, EventArgs e)
        {

        }

        private void panelChildForm_Paint_1(object sender, PaintEventArgs e)
        {

        }

        private void toolStripMenuItem1_Click(object sender, EventArgs e)
        {
            
        }

        private void toolStripMenuItem1_Click_2(object sender, EventArgs e)
        {
            ManageLogIn(new Form1(), (ToolStripMenuItem)sender);
            BanHangLogIn(new Form1(), (ToolStripMenuItem)sender);
        }
    }
}
