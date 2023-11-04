CREATE DATABASE qlSachTuNhan
GO
/*
USE master
GO
DROP DATABASE qlSachTuNhan
GO
*/
USE [qlSachTuNhan]
GO
-------------VUONG------------------------------------------------------------------------------
/****** Object:  Table [dbo].[ca]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ca](
	[maCa] [int] NOT NULL,
	[gioBatDau] [nvarchar](5) NOT NULL,
	[gioKetThuc] [nvarchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maCa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chiTietDatHang]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chiTietDatHang](
	[maDH] [nvarchar](5) NOT NULL,
	[maSP] [nvarchar](5) NOT NULL,
	[soLuong] [int] NOT NULL,
	[donGiaNhap] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanVien]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanVien](
	[maNV] [nvarchar](5) NOT NULL,
	[tenNV] [nvarchar](50) NOT NULL,
	[ngaySinh] [date] NULL,
	[gioiTinh] [int] NOT NULL,
	[soDienThoai] [nvarchar](10) NOT NULL,
	[diaChi] [nvarchar](100) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[chucVu] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phanCongCa]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phanCongCa](
	[maNV] [nvarchar](5) NOT NULL,
	[maCa] [int] NOT NULL,
	[ngayLamViec] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maNV] ASC,
	[maCa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieuDatHang]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieuDatHang](
	[maDatHang] [nvarchar](5) NOT NULL,
	[maNv] [nvarchar](5) NOT NULL,
	[ngayDatHang] [date] NOT NULL,
	[chietKhau] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maDatHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chiTietHD]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chiTietHD](
	[maHD] [nvarchar](5) NOT NULL,
	[maSP] [nvarchar](5) NOT NULL,
	[soLuong] [int] NOT NULL,
	[donGia] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maHD] ASC,
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taiKhoan]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taiKhoan](
	[username] [nvarchar](10) NOT NULL,
	[password] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

-----------------------------------------------------------------------------------------------------
/****** Object:  Table [dbo].[hoaDon]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoaDon](
	[maHD] [nvarchar](5) NOT NULL,
	[maNV] [nvarchar](5) NOT NULL,
	[maKH] [nvarchar](5) NOT NULL,
	[ngayTaoHD] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachHang]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachHang](
	[maKH] [nvarchar](5) NOT NULL,
	[tenKH] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](10) NOT NULL,
	[diaChi] [nvarchar](255) NOT NULL,
	[loaiKH] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khuyenMai]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khuyenMai](
	[maSP] [nvarchar](5) NOT NULL,
	[discount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanPham]    Script Date: 11/2/2023 1:41:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanPham](
	[maSP] [nvarchar](5) NOT NULL,
	[tenSP] [nvarchar](50) NOT NULL,
	[tenTacGia] [nvarchar](50) NOT NULL,
	[danhMuc] [nvarchar](50) NOT NULL,
	[nhaXB] [nvarchar](50) NOT NULL,
	[namXB] [int] NOT NULL,
	[soLuong] [int] NULL,
	[donGiaGoc] [float] NOT NULL,
	[donGiaMua] [float] NOT NULL,
	[tinhTrang] [nvarchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [UQ__khachHan__CA1930A536157F62]    Script Date: 11/2/2023 1:41:13 AM ******/
ALTER TABLE [dbo].[khachHang] ADD UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__nhanVien__06ACB9A23FB7E18A]    Script Date: 11/2/2023 1:41:13 AM ******/
ALTER TABLE [dbo].[nhanVien] ADD UNIQUE NONCLUSTERED 
(
	[soDienThoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[hoaDon] ADD  DEFAULT (getdate()) FOR [ngayTaoHD]
GO
ALTER TABLE [dbo].[chiTietDatHang]  WITH CHECK ADD FOREIGN KEY([maDH])
REFERENCES [dbo].[phieuDatHang] ([maDatHang])
GO
ALTER TABLE [dbo].[chiTietDatHang]  WITH CHECK ADD FOREIGN KEY([maSP])
REFERENCES [dbo].[sanPham] ([maSP])
GO
ALTER TABLE [dbo].[chiTietHD]  WITH CHECK ADD FOREIGN KEY([maHD])
REFERENCES [dbo].[hoaDon] ([maHD])
GO
ALTER TABLE [dbo].[chiTietHD]  WITH CHECK ADD FOREIGN KEY([maSP])
REFERENCES [dbo].[sanPham] ([maSP])
GO
ALTER TABLE [dbo].[hoaDon]  WITH CHECK ADD FOREIGN KEY([maKH])
REFERENCES [dbo].[khachHang] ([maKH])
GO
ALTER TABLE [dbo].[hoaDon]  WITH CHECK ADD FOREIGN KEY([maNV])
REFERENCES [dbo].[nhanVien] ([maNV])
GO
ALTER TABLE [dbo].[khuyenMai]  WITH CHECK ADD FOREIGN KEY([maSP])
REFERENCES [dbo].[sanPham] ([maSP])
GO
ALTER TABLE [dbo].[phanCongCa]  WITH CHECK ADD FOREIGN KEY([maCa])
REFERENCES [dbo].[ca] ([maCa])
GO
ALTER TABLE [dbo].[phanCongCa]  WITH CHECK ADD FOREIGN KEY([maNV])
REFERENCES [dbo].[nhanVien] ([maNV])
GO
ALTER TABLE [dbo].[phieuDatHang]  WITH CHECK ADD FOREIGN KEY([maNv])
REFERENCES [dbo].[nhanVien] ([maNV])
GO
ALTER TABLE [dbo].[taiKhoan]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[nhanVien] ([soDienThoai])
GO
ALTER TABLE [dbo].[chiTietDatHang]  WITH CHECK ADD  CONSTRAINT [chk_donGiaNhap] CHECK  (([donGiaNhap]>(0)))
GO
ALTER TABLE [dbo].[chiTietDatHang] CHECK CONSTRAINT [chk_donGiaNhap]
GO
ALTER TABLE [dbo].[chiTietDatHang]  WITH CHECK ADD  CONSTRAINT [chk_soLg] CHECK  (([soLuong]>(0)))
GO
ALTER TABLE [dbo].[chiTietDatHang] CHECK CONSTRAINT [chk_soLg]
GO
ALTER TABLE [dbo].[chiTietHD]  WITH CHECK ADD  CONSTRAINT [chk_donGia] CHECK  (([donGia]>(0)))
GO
ALTER TABLE [dbo].[chiTietHD] CHECK CONSTRAINT [chk_donGia]
GO
ALTER TABLE [dbo].[chiTietHD]  WITH CHECK ADD  CONSTRAINT [chk_sL] CHECK  (([soLuong]>(0)))
GO
ALTER TABLE [dbo].[chiTietHD] CHECK CONSTRAINT [chk_sL]
GO
ALTER TABLE [dbo].[khuyenMai]  WITH CHECK ADD  CONSTRAINT [chk_disc] CHECK  (([discount]>(0) AND [discount]<(100)))
GO
ALTER TABLE [dbo].[khuyenMai] CHECK CONSTRAINT [chk_disc]
GO
ALTER TABLE [dbo].[phieuDatHang]  WITH CHECK ADD  CONSTRAINT [chk_chiecKhau] CHECK  (([chietKhau]>(0)))
GO
ALTER TABLE [dbo].[phieuDatHang] CHECK CONSTRAINT [chk_chiecKhau]
GO
ALTER TABLE [dbo].[phieuDatHang]  WITH CHECK ADD  CONSTRAINT [chk_ngayDH] CHECK  (([ngayDatHang]>getdate()))
GO
ALTER TABLE [dbo].[phieuDatHang] CHECK CONSTRAINT [chk_ngayDH]
GO
ALTER TABLE [dbo].[sanPham]  WITH CHECK ADD  CONSTRAINT [chk_donGiaGoc] CHECK  (([donGiaGoc]>(0)))
GO
ALTER TABLE [dbo].[sanPham] CHECK CONSTRAINT [chk_donGiaGoc]
GO
ALTER TABLE [dbo].[sanPham]  WITH CHECK ADD  CONSTRAINT [chk_donGiaMua] CHECK  (([donGiaMua]>(0)))
GO
ALTER TABLE [dbo].[sanPham] CHECK CONSTRAINT [chk_donGiaMua]
GO
ALTER TABLE [dbo].[sanPham]  WITH CHECK ADD  CONSTRAINT [chk_soLuong] CHECK  (([soLuong]>(0)))
GO
ALTER TABLE [dbo].[sanPham] CHECK CONSTRAINT [chk_soLuong]
GO


/*SAMPLE DATA*/
--Nhan vien
/*
[maNV] [nvarchar](5) NOT NULL,
[tenNV] [nvarchar](50) NOT NULL,
[ngaySinh] [date] NULL,
[gioiTinh] [int] NOT NULL,
[soDienThoai] [nvarchar](11) NOT NULL,
[diaChi] [nvarchar](50) NOT NULL,
[email] [nvarchar](50) NOT NULL,
[chucVu] [nvarchar](10) NOT NULL,
*/
INSERT [dbo].[NhanVien] VALUES (N'NV001', N'Nguyễn Đức Vương', CAST(N'2002-12-22' AS Date),0, '0799558911', N'270, ấp 8, xã Sơn Phú, huyện Giồng Trôm, tỉnh Bến Tre', N'vuongnguyen221203@gmail.com', N'QL')
INSERT [dbo].[NhanVien] VALUES (N'NV002', N'Duong Quang', CAST(N'2002-12-12' AS Date),1, '0799558912', N'Ba Dinh', N'quangD1@gmail.com', N'NV')
INSERT [dbo].[NhanVien] VALUES (N'NV003', N'Nguyen Kim', CAST(N'2002-12-12' AS Date),1, '0799558913', N'Hang Ray', N'kimHN2@gmail.com', N'NV')
INSERT [dbo].[NhanVien] VALUES (N'NV004', N'Duong Quang', CAST(N'2002-12-12' AS Date),0, '0799558914', N'Ba Dinh', N'quangD3@gmail.com', N'NV')
INSERT [dbo].[NhanVien] VALUES (N'NV005', N'Duong Quang', CAST(N'2002-12-12' AS Date),0, '0799558915', N'Ba Dinh', N'quangD4@gmail.com', N'NV')
INSERT [dbo].[NhanVien] VALUES (N'NV006', N'Duong Quang', CAST(N'2002-12-12' AS Date),1, '0799558916', N'Ba Dinh', N'quangD5@gmail.com', N'NV')
INSERT [dbo].[NhanVien] VALUES (N'NV007', N'Nguyen Kim', CAST(N'2002-12-12' AS Date),0, '0799558917', N'Hang Ray', N'kimHN6@gmail.com', N'NV')
INSERT [dbo].[NhanVien] VALUES (N'NV008', N'Nguyen Kim', CAST(N'2002-12-12' AS Date),1, '0799558918', N'Hang Ray', N'kimH7N@gmail.com', N'NV')
INSERT [dbo].[NhanVien] VALUES (N'NV009', N'Nguyen Kim', CAST(N'2002-12-12' AS Date),1, '0799558919', N'Hang Ray', N'kimHN8@gmail.com', N'NV')
INSERT [dbo].[NhanVien] VALUES (N'NV010', N'Nguyen Kim', CAST(N'2002-12-12' AS Date),0, '0799558901', N'Hang Ray', N'kimHN9@gmail.com', N'NV')
INSERT [dbo].[NhanVien] VALUES (N'NV011', N'Nguyen Kim', CAST(N'2002-12-12' AS Date),1, '0799558902', N'Hang Ray', N'kim34HN@gmail.com', N'NV')
INSERT [dbo].[NhanVien] VALUES (N'NV012', N'Duong Quang', CAST(N'2002-12-12' AS Date),0, '0799558903', N'Ba Dinh', N'quang34D@gmail.com', N'NV')
INSERT [dbo].[NhanVien] VALUES (N'NV013', N'Duong Quang', CAST(N'2002-12-12' AS Date),1, '0799558904', N'Ba Dinh', N'quangD75@gmail.com', N'NV')


--Ca
INSERT ca values (1,N'7:00',N'12:00')
INSERT ca values (2,N'13:00',N'18:00')

--test sp
INSERT sanPham values (N'SP001',N'Co',N'Tung',N'Co tich',N'Kim Dong',2020,25,300000,350000,N'Good')
INSERT sanPham values (N'SP002',N'Co',N'Tung A',N'tich',N'Kim Dong',2021,12,312000,417000,N'Bad')
INSERT sanPham values (N'SP003',N'Co',N'Tung B',N'cuoi',N'Kim Dong',2023,76,412213,430000,N'Good')


INSERT phanCongCa values (N'NV001',1,CAST(N'2023-11-4' AS Date))
INSERT phanCongCa values (N'NV002',2,CAST(N'2023-11-4' AS Date))
INSERT phanCongCa values (N'NV003',1,CAST(N'2023-11-5' AS Date))
INSERT phanCongCa values (N'NV004',2,CAST(N'2023-11-5' AS Date))
INSERT phanCongCa values (N'NV005',1,CAST(N'2023-11-6' AS Date))
INSERT phanCongCa values (N'NV006',2,CAST(N'2023-11-6' AS Date))