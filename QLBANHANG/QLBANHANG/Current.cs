using QLBANHANG;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLBanHang
{
    public static class Current
    {
        public static Form CurrentForm { get; set; }
        public static ToolStripMenuItem CurrentToolStrip { get; set; }
        public static NhanVien CurrentNhanVien { get; set; }
        public static ChiTietHoaDon CurrentCTHD { get; set; }
        public static HoaDon CurrentHD { get; set; }
        public static Sanpham CurrentSP { get; set; }
        public static Login CurrentUser { get; set; }
        public static MenuStrip CurrentMenu { get; set; }
    }
}
