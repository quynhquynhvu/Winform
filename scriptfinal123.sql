USE [WF_Harmony_CSDL_v0.1]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 7/25/2020 8:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[ID] [float] NOT NULL,
	[MaDon] [float] NOT NULL,
	[Line] [float] NOT NULL,
	[MaSanPham] [float] NOT NULL,
	[TenSanPham] [nvarchar](255) NOT NULL,
	[SoLuong] [float] NOT NULL,
	[GiaTri] [float] NOT NULL,
	[ĐVT] [nvarchar](255) NOT NULL,
	[Tongtien] [float] NOT NULL,
	[NgayGiaoHang] [float] NULL,
 CONSTRAINT [PK_ChiTietDonHang$] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 7/25/2020 8:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[ID] [nvarchar](255) NOT NULL,
	[MaHoaDon] [nvarchar](255) NOT NULL,
	[Line] [float] NOT NULL,
	[MaSP] [float] NOT NULL,
	[TenSp] [nvarchar](255) NOT NULL,
	[SoLuong] [float] NOT NULL,
	[DVT] [nvarchar](255) NOT NULL,
	[DonGia] [float] NOT NULL,
	[TienTe] [nvarchar](255) NULL,
	[GiaNET] [float] NOT NULL,
	[Thue] [int] NOT NULL,
	[GiaTri] [float] NOT NULL,
	[TongThue] [float] NOT NULL,
	[TongDonHang] [float] NOT NULL,
	[TongGiaVon] [float] NOT NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietNhanHang]    Script Date: 7/25/2020 8:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietNhanHang](
	[ID] [float] NOT NULL,
	[MaNhan] [float] NOT NULL,
	[MaDon] [float] NOT NULL,
	[Line] [float] NOT NULL,
	[MaSanPham] [float] NOT NULL,
	[TenSP] [nvarchar](255) NOT NULL,
	[SoLuongVanChuyen] [float] NOT NULL,
 CONSTRAINT [PK_ChiTietNhanHang$] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietYCMH]    Script Date: 7/25/2020 8:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietYCMH](
	[ID] [float] NOT NULL,
	[Line] [float] NOT NULL,
	[MaYCMH] [nvarchar](255) NOT NULL,
	[MaSanPham] [float] NOT NULL,
	[TenSP] [nvarchar](255) NOT NULL,
	[SoLuong] [float] NOT NULL,
	[DVT] [nvarchar](255) NOT NULL,
	[Size] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_ChiTietYCMH$] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 7/25/2020 8:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [char](10) NOT NULL,
	[TenChucVu] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DateTime]    Script Date: 7/25/2020 8:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DateTime](
	[DateID] [float] NOT NULL,
	[Ngay] [float] NOT NULL,
	[Thang] [float] NOT NULL,
	[Mua] [nvarchar](255) NOT NULL,
	[Nam] [float] NOT NULL,
 CONSTRAINT [PK_DateTime$] PRIMARY KEY CLUSTERED 
(
	[DateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 7/25/2020 8:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDon] [float] NOT NULL,
	[MaYCMH] [nvarchar](255) NOT NULL,
	[NgayGiaoDich] [float] NOT NULL,
 CONSTRAINT [PK_DonHang$] PRIMARY KEY CLUSTERED 
(
	[MaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 7/25/2020 8:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [nvarchar](255) NOT NULL,
	[NgayTao] [float] NOT NULL,
	[NgayIn] [float] NULL,
	[MaKhachHang] [nvarchar](255) NOT NULL,
	[MaNVKD] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 7/25/2020 8:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [nvarchar](255) NOT NULL,
	[MaNhom] [nvarchar](255) NOT NULL,
	[Ten] [nvarchar](255) NOT NULL,
	[GioiTinh] [nvarchar](255) NOT NULL,
	[DiaChi] [nvarchar](255) NOT NULL,
	[SDT] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[TrachNhiemThue] [nvarchar](255) NOT NULL,
	[MST] [float] NULL,
	[LoaiHinh] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_KhachHang$] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Login]    Script Date: 7/25/2020 8:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[ID] [nchar](10) NOT NULL,
	[TenUser] [nvarchar](max) NOT NULL,
	[MatKhau] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 7/25/2020 8:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](255) NOT NULL,
	[Ten] [nvarchar](255) NOT NULL,
	[PhapNhan] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[SDT] [nvarchar](255) NULL,
	[DiaChiMail] [nvarchar](255) NULL,
	[TrachNhiem] [nvarchar](255) NOT NULL,
	[MST] [float] NULL,
	[LoaiHinhThue] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanHang]    Script Date: 7/25/2020 8:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanHang](
	[MaNhan] [float] NOT NULL,
	[NgayNhan] [float] NOT NULL,
	[MaDonHang] [float] NOT NULL,
 CONSTRAINT [PK_NhanHang$] PRIMARY KEY CLUSTERED 
(
	[MaNhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 7/25/2020 8:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nvarchar](255) NOT NULL,
	[Ten] [nvarchar](255) NOT NULL,
	[GioiTinh] [nvarchar](255) NOT NULL,
	[DiaChi] [nvarchar](255) NOT NULL,
	[SDT] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[MaChucVu] [char](10) NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhomKhachHang]    Script Date: 7/25/2020 8:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomKhachHang](
	[MaNhom] [nvarchar](255) NOT NULL,
	[MieuTa] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_NhomKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 7/25/2020 8:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sanpham](
	[IDSanPham] [float] NOT NULL,
	[TenSanPham] [nvarchar](255) NOT NULL,
	[LoaiSP] [nvarchar](255) NOT NULL,
	[MauSac] [nvarchar](255) NULL,
	[KichCo] [nvarchar](255) NULL,
	[DVT] [nvarchar](255) NOT NULL,
	[NhanHieu] [nvarchar](255) NULL,
	[GiaVon] [float] NULL,
	[LinkImage] [varchar](300) NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Thue]    Script Date: 7/25/2020 8:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thue](
	[ID] [int] NOT NULL,
	[MaThue] [nvarchar](255) NOT NULL,
	[Mieuta] [nvarchar](255) NOT NULL,
	[Giatrị] [float] NOT NULL,
 CONSTRAINT [PK_Thue] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TonKho]    Script Date: 7/25/2020 8:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TonKho](
	[MaSanPham] [float] NOT NULL,
	[SoLuongTon] [float] NULL,
	[SoLuongYeuCau] [nvarchar](255) NULL,
 CONSTRAINT [PK_TonKho$] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrangThai]    Script Date: 7/25/2020 8:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThai](
	[MaTrangThai] [float] NOT NULL,
	[MieuTa] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_TrangThai$] PRIMARY KEY CLUSTERED 
(
	[MaTrangThai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YeuCauMuaHang]    Script Date: 7/25/2020 8:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YeuCauMuaHang](
	[MaYCMH] [nvarchar](255) NOT NULL,
	[MaNhaCungCap] [nvarchar](255) NOT NULL,
	[NgayduKienGiaoHang] [float] NOT NULL,
	[TrangThai] [float] NOT NULL,
 CONSTRAINT [PK_YeuCauMuaHang$] PRIMARY KEY CLUSTERED 
(
	[MaYCMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[DoanhSo]    Script Date: 7/25/2020 8:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[DoanhSo] as
Select [HoaDon].MaHoaDon , [HoaDon].NgayTao , [HoaDon].NgayIn,[HoaDon].MaNVKD, [SoLuong],[DonGia],
[TienTe],[GiaNET],[GiaTri],[Thue],[TongThue],[TongDonHang],[TongGiaVon],[dbo].[Sanpham].GiaVon
from [dbo].[ChiTietHoaDon] inner join [dbo].[HoaDon] 
	on [ChiTietHoaDon].MaHoaDon = [HoaDon].MaHoaDon 
		inner join [DateTime] 
			on [HoaDon].NgayTao = [DateTime].DateID 
			inner join [Sanpham] 
				on [ChiTietHoaDon].MaSP = [Sanpham].IDSanPham

GO
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDon], [Line], [MaSanPham], [TenSanPham], [SoLuong], [GiaTri], [ĐVT], [Tongtien], [NgayGiaoHang]) VALUES (1, 10000000, 10, 2, N'Áo sơ mi cổ trụ', 1, 100000, N'Cái', 100000, 20200720)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDon], [Line], [MaSanPham], [TenSanPham], [SoLuong], [GiaTri], [ĐVT], [Tongtien], [NgayGiaoHang]) VALUES (2, 10000000, 20, 3, N'Quần tây nam', 2, 1200000, N'Cái', 2400000, 20200720)
INSERT [dbo].[ChiTietDonHang] ([ID], [MaDon], [Line], [MaSanPham], [TenSanPham], [SoLuong], [GiaTri], [ĐVT], [Tongtien], [NgayGiaoHang]) VALUES (3, 10000000, 30, 6, N'Giày độn', 1, 22000000, N'Đôi', 22000000, 20200720)
INSERT [dbo].[ChiTietHoaDon] ([ID], [MaHoaDon], [Line], [MaSP], [TenSp], [SoLuong], [DVT], [DonGia], [TienTe], [GiaNET], [Thue], [GiaTri], [TongThue], [TongDonHang], [TongGiaVon]) VALUES (N'1', N'1', 10, 1, N'Áo thun nam xuân hè', 1, N'Cái', 300000, N'VND', 300000, 3, 0.1, 30000, 330000, 230000)
INSERT [dbo].[ChiTietNhanHang] ([ID], [MaNhan], [MaDon], [Line], [MaSanPham], [TenSP], [SoLuongVanChuyen]) VALUES (1, 1000000, 10000000, 10, 2, N'Áo sơ mi cổ trụ', 1)
INSERT [dbo].[ChiTietNhanHang] ([ID], [MaNhan], [MaDon], [Line], [MaSanPham], [TenSP], [SoLuongVanChuyen]) VALUES (2, 1000000, 10000000, 20, 3, N'Quần tây nam', 2)
INSERT [dbo].[ChiTietNhanHang] ([ID], [MaNhan], [MaDon], [Line], [MaSanPham], [TenSP], [SoLuongVanChuyen]) VALUES (3, 1000000, 10000000, 30, 6, N'Giày độn', 1)
INSERT [dbo].[ChiTietYCMH] ([ID], [Line], [MaYCMH], [MaSanPham], [TenSP], [SoLuong], [DVT], [Size]) VALUES (1, 10, N'10000000', 2, N'Áo sơ mi cổ trụ', 1, N'Cái', N'XL        ')
INSERT [dbo].[ChiTietYCMH] ([ID], [Line], [MaYCMH], [MaSanPham], [TenSP], [SoLuong], [DVT], [Size]) VALUES (2, 20, N'10000000', 3, N'Quần tây nam', 2, N'Cái', N'M         ')
INSERT [dbo].[ChiTietYCMH] ([ID], [Line], [MaYCMH], [MaSanPham], [TenSP], [SoLuong], [DVT], [Size]) VALUES (3, 30, N'10000000', 6, N'Giày độn', 1, N'Đôi', N'38        ')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'AD        ', N'Quản lý')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'BH        ', N'Nhân viên Bán hàng')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'KT        ', N'Nhân viên Kế toán')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'NK        ', N'Nhân viên Kho')
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190201, 1, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190202, 2, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190203, 3, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190204, 4, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190205, 5, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190206, 6, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190207, 7, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190208, 8, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190209, 9, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190210, 10, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190211, 11, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190212, 12, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190213, 13, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190214, 14, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190215, 15, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190216, 16, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190217, 17, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190218, 18, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190219, 19, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190220, 20, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190221, 21, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190222, 22, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190223, 23, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190224, 24, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190225, 25, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190226, 26, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190227, 27, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190228, 28, 2, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190301, 1, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190302, 2, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190303, 3, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190304, 4, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190305, 5, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190306, 6, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190307, 7, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190308, 8, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190309, 9, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190310, 10, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190311, 11, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190312, 12, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190313, 13, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190314, 14, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190315, 15, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190316, 16, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190317, 17, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190318, 18, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190319, 19, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190320, 20, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190321, 21, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190322, 22, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190323, 23, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190324, 24, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190325, 25, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190326, 26, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190327, 27, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190328, 28, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190329, 29, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190330, 30, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190331, 31, 3, N'Xuân', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190401, 1, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190402, 2, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190403, 3, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190404, 4, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190405, 5, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190406, 6, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190407, 7, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190408, 8, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190409, 9, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190410, 10, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190411, 11, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190412, 12, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190413, 13, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190414, 14, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190415, 15, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190416, 16, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190417, 17, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190418, 18, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190419, 19, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190420, 20, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190421, 21, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190422, 22, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190423, 23, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190424, 24, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190425, 25, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190426, 26, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190427, 27, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190428, 28, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190429, 29, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190430, 30, 4, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190501, 1, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190502, 2, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190503, 3, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190504, 4, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190505, 5, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190506, 6, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190507, 7, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190508, 8, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190509, 9, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190510, 10, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190511, 11, 5, N'Hạ', 2019)
GO
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190512, 12, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190513, 13, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190514, 14, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190515, 15, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190516, 16, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190517, 17, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190518, 18, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190519, 19, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190520, 20, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190521, 21, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190522, 22, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190523, 23, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190524, 24, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190525, 25, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190526, 26, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190527, 27, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190528, 28, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190529, 29, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190530, 30, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190531, 31, 5, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190601, 1, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190602, 2, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190603, 3, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190604, 4, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190605, 5, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190606, 6, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190607, 7, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190608, 8, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190609, 9, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190610, 10, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190611, 11, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190612, 12, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190613, 13, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190614, 14, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190615, 15, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190616, 16, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190617, 17, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190618, 18, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190619, 19, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190620, 20, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190621, 21, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190622, 22, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190623, 23, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190624, 24, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190625, 25, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190626, 26, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190627, 27, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190628, 28, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190629, 29, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190630, 30, 6, N'Hạ', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190701, 1, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190702, 2, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190703, 3, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190704, 4, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190705, 5, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190706, 6, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190707, 7, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190708, 8, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190709, 9, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190710, 10, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190711, 11, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190712, 12, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190713, 13, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190714, 14, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190715, 15, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190716, 16, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190717, 17, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190718, 18, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190719, 19, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190720, 20, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190721, 21, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190722, 22, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190723, 23, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190724, 24, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190725, 25, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190726, 26, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190727, 27, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190728, 28, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190729, 29, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190730, 30, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190731, 31, 7, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190801, 1, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190802, 2, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190803, 3, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190804, 4, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190805, 5, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190806, 6, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190807, 7, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190808, 8, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190809, 9, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190810, 10, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190811, 11, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190812, 12, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190813, 13, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190814, 14, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190815, 15, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190816, 16, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190817, 17, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190818, 18, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190819, 19, 8, N'Thu', 2019)
GO
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190820, 20, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190821, 21, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190822, 22, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190823, 23, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190824, 24, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190825, 25, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190826, 26, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190827, 27, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190828, 28, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190829, 29, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190830, 30, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190831, 31, 8, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190901, 1, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190902, 2, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190903, 3, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190904, 4, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190905, 5, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190906, 6, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190907, 7, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190908, 8, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190909, 9, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190910, 10, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190911, 11, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190912, 12, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190913, 13, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190914, 14, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190915, 15, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190916, 16, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190917, 17, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190918, 18, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190919, 19, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190920, 20, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190921, 21, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190922, 22, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190923, 23, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190924, 24, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190925, 25, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190926, 26, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190927, 27, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190928, 28, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190929, 29, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20190930, 30, 9, N'Thu', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191001, 1, 10, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191002, 2, 10, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191003, 3, 10, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191004, 4, 10, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191005, 5, 10, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191006, 6, 10, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191007, 7, 10, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191008, 8, 10, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191009, 9, 10, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191010, 10, 10, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191011, 11, 10, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191012, 12, 10, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191013, 13, 10, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191014, 14, 10, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191015, 15, 10, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191016, 16, 10, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191017, 17, 10, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191018, 18, 10, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191019, 19, 10, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191020, 20, 10, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191021, 21, 10, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20191122, 22, 11, N'Đông', 2019)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20200719, 19, 7, N'Thu', 2020)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20200720, 20, 7, N'Thu', 2020)
INSERT [dbo].[DateTime] ([DateID], [Ngay], [Thang], [Mua], [Nam]) VALUES (20200722, 22, 7, N'Thu', 2020)
INSERT [dbo].[DonHang] ([MaDon], [MaYCMH], [NgayGiaoDich]) VALUES (10000000, N'10000000', 20200719)
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayTao], [NgayIn], [MaKhachHang], [MaNVKD]) VALUES (N'1', 20190201, 20190201, N'1', N'400000004')
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayTao], [NgayIn], [MaKhachHang], [MaNVKD]) VALUES (N'2', 20190202, 20190202, N'4', N'400000006')
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayTao], [NgayIn], [MaKhachHang], [MaNVKD]) VALUES (N'3', 20190210, 0, N'1', N'400000002')
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayTao], [NgayIn], [MaKhachHang], [MaNVKD]) VALUES (N'4', 20190209, 0, N'1', N'400000002')
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayTao], [NgayIn], [MaKhachHang], [MaNVKD]) VALUES (N'5', 20190210, 0, N'1', N'400000002')
INSERT [dbo].[KhachHang] ([MaKhachHang], [MaNhom], [Ten], [GioiTinh], [DiaChi], [SDT], [Email], [TrachNhiemThue], [MST], [LoaiHinh]) VALUES (N'1', N'KHND01', N'Đặng Quốc Việt', N'Nam', N'205/3 Bình Trị Đông, Quận Bình Tân, TP HCM', N'2666186517          ', N'dangviet@gmail.com', N'1_chịu thuế', 5508824746, N'VN03')
INSERT [dbo].[KhachHang] ([MaKhachHang], [MaNhom], [Ten], [GioiTinh], [DiaChi], [SDT], [Email], [TrachNhiemThue], [MST], [LoaiHinh]) VALUES (N'100000000', N'KHND01', N'Đặng Quốc Việt', N'Nam', N'205/3 Bình Trị Đông, Quận Bình Tân, TP HCM', N'266-61-86517', N'dangviet@gmail.com', N'1_chịu thuế', 5508824746, N'VN0')
INSERT [dbo].[KhachHang] ([MaKhachHang], [MaNhom], [Ten], [GioiTinh], [DiaChi], [SDT], [Email], [TrachNhiemThue], [MST], [LoaiHinh]) VALUES (N'2', N'KHND01', N'Hoàng Văn Bảo', N'Nam', N'207 Nơ Trang Long, Quận Bình Thạnh, TP. HCM', N'9404979408          ', N'hoangbao@gmail.com', N'1_chịu thuế', 1530923952, N'VN02')
INSERT [dbo].[KhachHang] ([MaKhachHang], [MaNhom], [Ten], [GioiTinh], [DiaChi], [SDT], [Email], [TrachNhiemThue], [MST], [LoaiHinh]) VALUES (N'3', N'KHND01', N'Lưu Thanh Tuấn', N'Nam', N'110 Nguyễn Thiện Thuật, P. 2,  Quận 3, TP. HCM', N'6644654556          ', N'luutuan@gmail.com', N'1_chịu thuế', 2776280841, N'VN02')
INSERT [dbo].[KhachHang] ([MaKhachHang], [MaNhom], [Ten], [GioiTinh], [DiaChi], [SDT], [Email], [TrachNhiemThue], [MST], [LoaiHinh]) VALUES (N'4', N'KHND01', N'Hoàng Thị Thanh Mai', N'Nữ', N'77/2A Ngô Gia Tự, P. 2,  Quận 10, TP. HCM', N'2320981701          ', N'hoangmai@gmail.com', N'1_chịu thuế', 5676668225, N'VN02')
INSERT [dbo].[KhachHang] ([MaKhachHang], [MaNhom], [Ten], [GioiTinh], [DiaChi], [SDT], [Email], [TrachNhiemThue], [MST], [LoaiHinh]) VALUES (N'5', N'KHND01', N'Nguyễn Quỳnh Hoa', N'Nữ', N'222 Thành Thái, P. 14,  Quận 10, TP. HCM', N'0518568305          ', N'nguyenhoa@gmail.com', N'1_chịu thuế', 2325920598, N'VN03')
INSERT [dbo].[KhachHang] ([MaKhachHang], [MaNhom], [Ten], [GioiTinh], [DiaChi], [SDT], [Email], [TrachNhiemThue], [MST], [LoaiHinh]) VALUES (N'6', N'KHND01', N'Phạm Thị Thu Hương', N'Nữ', N'64 Đào Cam Mộc ,  Quận 8, TP. HCM', N'4070425137          ', N'phamhuong@gmail.com', N'1_chịu thuế', 3063035657, N'VN02')
INSERT [dbo].[KhachHang] ([MaKhachHang], [MaNhom], [Ten], [GioiTinh], [DiaChi], [SDT], [Email], [TrachNhiemThue], [MST], [LoaiHinh]) VALUES (N'7', N'KHNN02', N'Jonny Depp', N'Nam', N'123 ABC, China', N'3586660019          ', N'jonnydepp@gmail.com', N'1_chịu thuế', 6698094645, N'VN03')
INSERT [dbo].[Login] ([ID], [TenUser], [MatKhau]) VALUES (N'AD01      ', N'400000000', N'123                 ')
INSERT [dbo].[Login] ([ID], [TenUser], [MatKhau]) VALUES (N'BH01      ', N'400000002', N'123                 ')
INSERT [dbo].[Login] ([ID], [TenUser], [MatKhau]) VALUES (N'KT01      ', N'400000001', N'123                 ')
INSERT [dbo].[Login] ([ID], [TenUser], [MatKhau]) VALUES (N'NK01      ', N'400000003', N'123                 ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [PhapNhan], [DiaChi], [SDT], [DiaChiMail], [TrachNhiem], [MST], [LoaiHinhThue]) VALUES (N'1', N'Công ty TNHH Hoàn Phát', N'Nguyễn Ngọc', N'13 Lò Đúc, Ngô Thì Nhậm, Hai Bà Trưng, Hà Nội', N'7112659193          ', N'hoanphat@hp.vn', N'1_chịu thuế', 8505936168, N'VN02')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [PhapNhan], [DiaChi], [SDT], [DiaChiMail], [TrachNhiem], [MST], [LoaiHinhThue]) VALUES (N'2', N'Cty TNHH Tấn Đạt', N'Ái Hoa', N'41 Kỳ Đồng, Phường 9, Quận 3, Tp.HCM', N'0909182628          ', N'NTNHHTanDat@td.vn', N'1_chịu thuế', 2661440451, N'VN03')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [PhapNhan], [DiaChi], [SDT], [DiaChiMail], [TrachNhiem], [MST], [LoaiHinhThue]) VALUES (N'3', N'Maison', N'Vãn Quốc Hùng', N' 72 Lê Thánh Tôn, P. Bến Nghé, Q. 1, Tp. HCM', N'842839369424        ', N'customercare@maisonjsc.com', N'1_chịu thuế', 313175103, N'VN02')
INSERT [dbo].[NhanHang] ([MaNhan], [NgayNhan], [MaDonHang]) VALUES (1000000, 20200720, 10000000)
INSERT [dbo].[NhanVien] ([MaNhanVien], [Ten], [GioiTinh], [DiaChi], [SDT], [Email], [MaChucVu]) VALUES (N'400000000', N'Phạm Thị Thanh Thùy', N'Nữ', N'193 Cô Giang, quận 1, TP. HCM', N'123456123           ', N'thanhthuy@gmail.com', N'AD        ')
INSERT [dbo].[NhanVien] ([MaNhanVien], [Ten], [GioiTinh], [DiaChi], [SDT], [Email], [MaChucVu]) VALUES (N'400000001', N'Nguyễn Mạnh Hùng', N'Nam', N'46A Đinh Công Tráng, phường Tân Định, quận 1, TP. HCM', N'7075089570          ', N'majnhhung@gmail.com', N'KT        ')
INSERT [dbo].[NhanVien] ([MaNhanVien], [Ten], [GioiTinh], [DiaChi], [SDT], [Email], [MaChucVu]) VALUES (N'400000002', N'Ngô Văn Hiệp', N'Nam', N'26 Lê Thị Riêng, Phường Phạm Ngũ Lão, Quận 1', N'7159652595          ', N'vanhiep@gmail.com', N'BH        ')
INSERT [dbo].[NhanVien] ([MaNhanVien], [Ten], [GioiTinh], [DiaChi], [SDT], [Email], [MaChucVu]) VALUES (N'400000003', N'Nguyễn Thị Mai', N'Nữ', N'100/14 Thích Quảng Đức, phường 5, quận Phú Nhuận,TP. HCM', N'7327491659          ', N'thimai@gmail.com', N'NK        ')
INSERT [dbo].[NhanVien] ([MaNhanVien], [Ten], [GioiTinh], [DiaChi], [SDT], [Email], [MaChucVu]) VALUES (N'400000004', N'Trịnh Đình Minh', N'Nam', N'18 Kí Hòa, phường 11, quận 5,TP. HCM', N'4073723321          ', N'dinhminh@gmail.com', N'NK        ')
INSERT [dbo].[NhanVien] ([MaNhanVien], [Ten], [GioiTinh], [DiaChi], [SDT], [Email], [MaChucVu]) VALUES (N'400000005', N'Đinh Thúy Hằng', N'Nữ', N'99 Châu Văn Liêm, phường 14, quận 5, TP. HCM', N'40737233213         ', N'thuyhang@gmail.com', N'BH        ')
INSERT [dbo].[NhanVien] ([MaNhanVien], [Ten], [GioiTinh], [DiaChi], [SDT], [Email], [MaChucVu]) VALUES (N'400000006', N'Nguyễn Thúy Hảo', N'Nữ', N'149 Lê Văn Lương, phường Tân Kiểng, quận 7', N'7159642913          ', N'thuyhao@gmail.com', N'BH        ')
INSERT [dbo].[NhomKhachHang] ([MaNhom], [MieuTa]) VALUES (N'KHND01', N'Khách hàng trong nước')
INSERT [dbo].[NhomKhachHang] ([MaNhom], [MieuTa]) VALUES (N'KHNN02', N'Khách hàng nước ngoài')
INSERT [dbo].[Sanpham] ([IDSanPham], [TenSanPham], [LoaiSP], [MauSac], [KichCo], [DVT], [NhanHieu], [GiaVon], [LinkImage]) VALUES (1, N'Áo thun nam xuân hè', N'Áo thun nam', N'Trắng', N'X         ', N'Cái', N'Louis Vuitton', NULL, NULL)
INSERT [dbo].[Sanpham] ([IDSanPham], [TenSanPham], [LoaiSP], [MauSac], [KichCo], [DVT], [NhanHieu], [GiaVon], [LinkImage]) VALUES (2, N'Áo sơ mi cổ trụ', N'Áo sơ mi nam', N'Đen', N'XL        ', N'Cái', N'DIOR', NULL, NULL)
INSERT [dbo].[Sanpham] ([IDSanPham], [TenSanPham], [LoaiSP], [MauSac], [KichCo], [DVT], [NhanHieu], [GiaVon], [LinkImage]) VALUES (3, N'Quần tây nam', N'Quần Nam', N'Xám', N'M         ', N'Cái', N'VERSACE', NULL, NULL)
INSERT [dbo].[Sanpham] ([IDSanPham], [TenSanPham], [LoaiSP], [MauSac], [KichCo], [DVT], [NhanHieu], [GiaVon], [LinkImage]) VALUES (4, N'Chân váy xếp', N'Váy', N'Đỏ đen', N'M         ', N'Cái', N'CHANEL', NULL, NULL)
INSERT [dbo].[Sanpham] ([IDSanPham], [TenSanPham], [LoaiSP], [MauSac], [KichCo], [DVT], [NhanHieu], [GiaVon], [LinkImage]) VALUES (5, N'Áo sơ mi nữ', N'Áo sơ mi nữ', N'Sọc hồng', N'M         ', N'Cái', N'CHANEL', NULL, NULL)
INSERT [dbo].[Sanpham] ([IDSanPham], [TenSanPham], [LoaiSP], [MauSac], [KichCo], [DVT], [NhanHieu], [GiaVon], [LinkImage]) VALUES (6, N'Giày độn', N'Giày', N'Trắng', N'38        ', N'Đôi', N'PRADA', NULL, NULL)
INSERT [dbo].[Sanpham] ([IDSanPham], [TenSanPham], [LoaiSP], [MauSac], [KichCo], [DVT], [NhanHieu], [GiaVon], [LinkImage]) VALUES (7, N'Túi xách da cá sấu', N'Túi xách', N'Đen', N'S         ', N'Cái', N'GUCCI', NULL, NULL)
INSERT [dbo].[Sanpham] ([IDSanPham], [TenSanPham], [LoaiSP], [MauSac], [KichCo], [DVT], [NhanHieu], [GiaVon], [LinkImage]) VALUES (8, N'Áo khoác kaki', N'Áo khoác', N'Đen', N'XL', N'Cái', N'CHANEL', NULL, NULL)
INSERT [dbo].[Thue] ([ID], [MaThue], [Mieuta], [Giatrị]) VALUES (1, N'VN01', N'Không thuế 0%', 0)
INSERT [dbo].[Thue] ([ID], [MaThue], [Mieuta], [Giatrị]) VALUES (2, N'VN02', N'5%', 0.05)
INSERT [dbo].[Thue] ([ID], [MaThue], [Mieuta], [Giatrị]) VALUES (3, N'VN03', N'Thuế GTGT 10%', 0.1)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [SoLuongYeuCau]) VALUES (1, 5, N'7')
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [SoLuongYeuCau]) VALUES (2, 14, NULL)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [SoLuongYeuCau]) VALUES (4, 6, NULL)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [SoLuongYeuCau]) VALUES (5, 19, NULL)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [SoLuongYeuCau]) VALUES (6, 36, NULL)
INSERT [dbo].[TonKho] ([MaSanPham], [SoLuongTon], [SoLuongYeuCau]) VALUES (7, 40, NULL)
INSERT [dbo].[TrangThai] ([MaTrangThai], [MieuTa]) VALUES (1, N'Chờ duyệt')
INSERT [dbo].[TrangThai] ([MaTrangThai], [MieuTa]) VALUES (2, N'Được duyệt')
INSERT [dbo].[TrangThai] ([MaTrangThai], [MieuTa]) VALUES (3, N'Từ Chối')
INSERT [dbo].[TrangThai] ([MaTrangThai], [MieuTa]) VALUES (4, N'Đã xuất đơn mua hàng')
INSERT [dbo].[YeuCauMuaHang] ([MaYCMH], [MaNhaCungCap], [NgayduKienGiaoHang], [TrangThai]) VALUES (N'10000000', N'2', 20200720, 3)
INSERT [dbo].[YeuCauMuaHang] ([MaYCMH], [MaNhaCungCap], [NgayduKienGiaoHang], [TrangThai]) VALUES (N'10000001', N'2', 20200722, 1)
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DateTime] FOREIGN KEY([NgayGiaoHang])
REFERENCES [dbo].[DateTime] ([DateID])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DateTime]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDon])
REFERENCES [dbo].[DonHang] ([MaDon])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_Sanpham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[Sanpham] ([IDSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_Sanpham]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_Sanpham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[Sanpham] ([IDSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_Sanpham]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_Sanpham1] FOREIGN KEY([MaSP])
REFERENCES [dbo].[Sanpham] ([IDSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_Sanpham1]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_Thue] FOREIGN KEY([Thue])
REFERENCES [dbo].[Thue] ([ID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_Thue]
GO
ALTER TABLE [dbo].[ChiTietNhanHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietNhanHang_DonHang] FOREIGN KEY([MaDon])
REFERENCES [dbo].[DonHang] ([MaDon])
GO
ALTER TABLE [dbo].[ChiTietNhanHang] CHECK CONSTRAINT [FK_ChiTietNhanHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietNhanHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietNhanHang_Sanpham] FOREIGN KEY([ID])
REFERENCES [dbo].[Sanpham] ([IDSanPham])
GO
ALTER TABLE [dbo].[ChiTietNhanHang] CHECK CONSTRAINT [FK_ChiTietNhanHang_Sanpham]
GO
ALTER TABLE [dbo].[ChiTietYCMH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietYCMH_Sanpham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[Sanpham] ([IDSanPham])
GO
ALTER TABLE [dbo].[ChiTietYCMH] CHECK CONSTRAINT [FK_ChiTietYCMH_Sanpham]
GO
ALTER TABLE [dbo].[ChiTietYCMH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietYCMH_YeuCauMuaHang] FOREIGN KEY([MaYCMH])
REFERENCES [dbo].[YeuCauMuaHang] ([MaYCMH])
GO
ALTER TABLE [dbo].[ChiTietYCMH] CHECK CONSTRAINT [FK_ChiTietYCMH_YeuCauMuaHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH NOCHECK ADD  CONSTRAINT [FK_HoaDon_DateTime] FOREIGN KEY([NgayTao])
REFERENCES [dbo].[DateTime] ([DateID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_DateTime]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_DateTime1] FOREIGN KEY([NgayTao])
REFERENCES [dbo].[DateTime] ([DateID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_DateTime1]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNVKD])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_NhomKhachHang] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NhomKhachHang] ([MaNhom])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_NhomKhachHang]
GO
ALTER TABLE [dbo].[NhanHang]  WITH CHECK ADD  CONSTRAINT [FK_NhanHang_DateTime] FOREIGN KEY([NgayNhan])
REFERENCES [dbo].[DateTime] ([DateID])
GO
ALTER TABLE [dbo].[NhanHang] CHECK CONSTRAINT [FK_NhanHang_DateTime]
GO
ALTER TABLE [dbo].[NhanHang]  WITH CHECK ADD  CONSTRAINT [FK_NhanHang_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDon])
GO
ALTER TABLE [dbo].[NhanHang] CHECK CONSTRAINT [FK_NhanHang_DonHang]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
ALTER TABLE [dbo].[TonKho]  WITH CHECK ADD  CONSTRAINT [FK_TonKho_Sanpham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[Sanpham] ([IDSanPham])
GO
ALTER TABLE [dbo].[TonKho] CHECK CONSTRAINT [FK_TonKho_Sanpham]
GO
ALTER TABLE [dbo].[YeuCauMuaHang]  WITH CHECK ADD  CONSTRAINT [FK_YeuCauMuaHang_DateTime] FOREIGN KEY([NgayduKienGiaoHang])
REFERENCES [dbo].[DateTime] ([DateID])
GO
ALTER TABLE [dbo].[YeuCauMuaHang] CHECK CONSTRAINT [FK_YeuCauMuaHang_DateTime]
GO
ALTER TABLE [dbo].[YeuCauMuaHang]  WITH CHECK ADD  CONSTRAINT [FK_YeuCauMuaHang_NhaCungCap] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[YeuCauMuaHang] CHECK CONSTRAINT [FK_YeuCauMuaHang_NhaCungCap]
GO
ALTER TABLE [dbo].[YeuCauMuaHang]  WITH CHECK ADD  CONSTRAINT [FK_YeuCauMuaHang_TrangThai] FOREIGN KEY([TrangThai])
REFERENCES [dbo].[TrangThai] ([MaTrangThai])
GO
ALTER TABLE [dbo].[YeuCauMuaHang] CHECK CONSTRAINT [FK_YeuCauMuaHang_TrangThai]
GO
/****** Object:  StoredProcedure [dbo].[loc]    Script Date: 7/25/2020 8:36:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[loc] as
select *
from [dbo].[HoaDon] inner join [dbo].[ChiTietHoaDon] on [ChiTietHoaDon].[MaHoaDon] = [HoaDon].[MaHoaDon]
order by [dbo].[HoaDon].[MaHoaDon] Desc

GO
