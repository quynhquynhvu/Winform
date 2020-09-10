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
    public partial class FormQLKho : Form
    {
        public FormQLKho()
        {
            InitializeComponent();
        }
        //EntitiesBANHANG db = new EntitiesBANHANG();
        EntitiesHarmony db = new EntitiesHarmony();
        //List tonKhos;
        List<TonKho> tonKhos;
        void LoadTonKho()
        {
            var results = from tk in db.TonKhoes
                          join sp in db.Sanphams
                            on tk.MaSanPham equals sp.IDSanPham
                          select new
                          {
                              tk.MaSanPham,
                              sp.TenSanPham,
                              tk.SoLuongTon,
                              tk.SoLuongYeuCau
                          };
            dGVTonKho.DataSource = results.ToList();
            //foreach (var item in results.ToList())
            //{
            //    if (item.SoLuongTon <= 5)
            //    {
            //        tonKhos.Add(Ton);
            //    }
            //}
        }
        void LoadSPhethang()
        {
            var results = from tk in db.TonKhoes
                          join sp in db.Sanphams
                          on tk.MaSanPham equals sp.IDSanPham
                          where tk.SoLuongTon <= 5
                          select new
                          {
                              tk.MaSanPham,
                              sp.TenSanPham,
                              tk.SoLuongTon,
                              tk.SoLuongYeuCau
                          };
            dataGridView1.DataSource = results.ToList();
        }
        private void FormQLKho_Load(object sender, EventArgs e)
        {
            LoadTonKho();
            LoadSPhethang();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
