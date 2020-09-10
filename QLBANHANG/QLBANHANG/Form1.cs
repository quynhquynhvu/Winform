using AForge.Video;
using AForge.Video.DirectShow;
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
using ZXing;

namespace CheckInDH
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        FilterInfoCollection FilterInfoCollection;
        VideoCaptureDevice VideoCaptureDevice;
        EntitiesHarmony db = new EntitiesHarmony();
        List<string> results = null;
        
        void LoadFormScan()
        {
            FilterInfoCollection = new FilterInfoCollection(FilterCategory.VideoInputDevice);
            foreach (FilterInfo device in FilterInfoCollection)
                cbCamera.Items.Add(device.Name);
            cbCamera.SelectedIndex = 0;
            VideoCaptureDevice = new VideoCaptureDevice(FilterInfoCollection[cbCamera.SelectedIndex].MonikerString);
            VideoCaptureDevice.NewFrame += VideoCaptureDevice_NewFrame;
        }
        void Scan()
        {
            results = new List<string>();
            VideoCaptureDevice.Start();
        }

        public Sanpham TimKiem(string valueToSearch)
        {
            Sanpham sanpham = db.Sanphams.Where(p => p.IDSanPham.ToString() == txtBarcode.Text).SingleOrDefault();
            if (sanpham != null)
            {
                return sanpham;
            }
            else
                MessageBox.Show("Không có trong hệ thống");
            return sanpham;
        }

        private void VideoCaptureDevice_NewFrame(object sender, NewFrameEventArgs eventArgs)
        {
            try
            {
                Bitmap bitmap = (Bitmap)eventArgs.Frame.Clone();
                BarcodeReader reader = new BarcodeReader();
                Result result = reader.Decode(bitmap);
                if (result != null)
                {
                    txtBarcode.Invoke(new MethodInvoker(delegate ()
                    {
                        txtBarcode.Text = result.ToString();
                        //pictureSP.ImageLocation = result.ToString();
                        //MessageBox.Show(results.ToString());
                        results.Add(txtBarcode.Text);
                    }));
                    result = null;
                }
                else
                {
                    if (results.Any())
                    {
                        string res = results.FirstOrDefault(x => x != null);
                        Sanpham sp = TimKiem(res);
                        Invoke(new Action(() =>
                        {
                            //pictureSP.ImageLocation = res;
                            ShowInfo(sp);
                        }));
                        //AddCheckIn(sv);
                        
                        VideoCaptureDevice.SignalToStop();
                    }
                }

                pictureBox1.Image = bitmap;

            }
            catch (NullReferenceException ex)
            {
                MessageBox.Show(ex.Message);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        private void ShowInfo(Sanpham sanpham)
        {
            try
            {
                if (sanpham != null)
                {
                    //pictureBox_Hinh.Image = new Bitmap(Application.StartupPath + "\\Resources\\" + sinhVien.Masv.ToString().Trim() + ".jpg");
                    txtMaSP.Text = sanpham.IDSanPham.ToString();
                    txtTenSP.Text = sanpham.TenSanPham;
                    txtKichCo.Text = sanpham.KichCo;
                    txtLoaiSP.Text = sanpham.LoaiSP;
                    txtMauSac.Text = sanpham.MauSac;
                    txtDVT.Text = sanpham.DVT;
                    txtNhanHieu.Text = sanpham.NhanHieu;
                    pictureSP.ImageLocation = sanpham.LinkImage;
                }
            }
            catch (Exception)
            {

                MessageBox.Show("Không có trong hệ thống");
            }

        }
        
        
        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (VideoCaptureDevice != null)
            {
                if (VideoCaptureDevice.IsRunning)
                {
                    VideoCaptureDevice.Stop();

                }
            }
        }



        private void timer1_Tick(object sender, EventArgs e)
        {
            if (!VideoCaptureDevice.IsRunning)
            {
                Scan();
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            LoadFormScan();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnScan_Click(object sender, EventArgs e)
        {
            timer1.Start();
            Scan();
        }
    }
}
