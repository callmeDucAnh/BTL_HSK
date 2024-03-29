USE [vePhim]
GO
/****** Object:  Table [dbo].[chiTietHoaDon]    Script Date: 3/18/2024 9:57:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chiTietHoaDon](
	[maHD] [nvarchar](50) NOT NULL,
	[maVe] [nvarchar](50) NOT NULL,
	[ngayTao] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoaDon]    Script Date: 3/18/2024 9:57:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoaDon](
	[maHD] [nvarchar](50) NOT NULL,
	[maKH] [nvarchar](50) NOT NULL,
	[maNV] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_hoaDon] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachHang]    Script Date: 3/18/2024 9:57:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachHang](
	[maKH] [nvarchar](50) NOT NULL,
	[tenKH] [nvarchar](50) NOT NULL,
	[doTuoi] [int] NOT NULL,
	[gioiTinh] [nvarchar](50) NULL,
	[sdt] [nvarchar](50) NULL,
 CONSTRAINT [PK_khachHang] PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lichChieuPhim]    Script Date: 3/18/2024 9:57:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lichChieuPhim](
	[tenPhim] [nvarchar](50) NOT NULL,
	[ngayChieu] [date] NOT NULL,
	[gioChieu] [nvarchar](50) NOT NULL,
	[giaTien] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanVien]    Script Date: 3/18/2024 9:57:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanVien](
	[maNV] [nvarchar](50) NOT NULL,
	[hoTen] [nvarchar](50) NOT NULL,
	[gioiTinh] [nvarchar](50) NULL,
	[ngaySinh] [nvarchar](50) NULL,
	[sdt] [nvarchar](50) NOT NULL,
	[chucVu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_nhanVien] PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taiKhoan]    Script Date: 3/18/2024 9:57:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taiKhoan](
	[tenTaiKhoan] [nvarchar](50) NOT NULL,
	[matKhau] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_taiKhoan] PRIMARY KEY CLUSTERED 
(
	[tenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vePhim]    Script Date: 3/18/2024 9:57:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vePhim](
	[maVe] [nvarchar](50) NOT NULL,
	[soGhe] [nvarchar](50) NULL,
 CONSTRAINT [PK_vePhim] PRIMARY KEY CLUSTERED 
(
	[maVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[chiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_chiTietHoaDon_hoaDon] FOREIGN KEY([maVe])
REFERENCES [dbo].[vePhim] ([maVe])
GO
ALTER TABLE [dbo].[chiTietHoaDon] CHECK CONSTRAINT [FK_chiTietHoaDon_hoaDon]
GO
ALTER TABLE [dbo].[chiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_chiTietHoaDon_hoaDon1] FOREIGN KEY([maHD])
REFERENCES [dbo].[hoaDon] ([maHD])
GO
ALTER TABLE [dbo].[chiTietHoaDon] CHECK CONSTRAINT [FK_chiTietHoaDon_hoaDon1]
GO
ALTER TABLE [dbo].[hoaDon]  WITH CHECK ADD  CONSTRAINT [FK_hoaDon_khachHang] FOREIGN KEY([maKH])
REFERENCES [dbo].[khachHang] ([maKH])
GO
ALTER TABLE [dbo].[hoaDon] CHECK CONSTRAINT [FK_hoaDon_khachHang]
GO
ALTER TABLE [dbo].[hoaDon]  WITH CHECK ADD  CONSTRAINT [FK_hoaDon_nhanVien] FOREIGN KEY([maNV])
REFERENCES [dbo].[nhanVien] ([maNV])
GO
ALTER TABLE [dbo].[hoaDon] CHECK CONSTRAINT [FK_hoaDon_nhanVien]
GO
ALTER TABLE [dbo].[lichChieuPhim]  WITH CHECK ADD  CONSTRAINT [FK_lichChieuPhim_vePhim] FOREIGN KEY([tenPhim])
REFERENCES [dbo].[vePhim] ([maVe])
GO
ALTER TABLE [dbo].[lichChieuPhim] CHECK CONSTRAINT [FK_lichChieuPhim_vePhim]
GO
ALTER TABLE [dbo].[taiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_taiKhoan_nhanVien] FOREIGN KEY([tenTaiKhoan])
REFERENCES [dbo].[nhanVien] ([maNV])
GO
ALTER TABLE [dbo].[taiKhoan] CHECK CONSTRAINT [FK_taiKhoan_nhanVien]
GO
