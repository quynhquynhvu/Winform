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
    public partial class FormDoanhThu : Form
    {
        public FormDoanhThu()
        {
            InitializeComponent();
        }
        //EntitiesBANHANG db = new EntitiesBANHANG();
        EntitiesHarmony db = new EntitiesHarmony();

        private void FormDoanhThu_Load(object sender, EventArgs e)
        {
            var results = from ViewDoanhThu in db.DoanhSoes select ViewDoanhThu;
            dataGridView1.DataSource = results.ToList();
        }
    }
}
