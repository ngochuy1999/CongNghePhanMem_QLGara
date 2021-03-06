USE [QLGARA]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/22/2020 1:38:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[USERNAME] [varchar](30) NOT NULL,
	[PASSWORD] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[USERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietDichVu]    Script Date: 6/22/2020 1:38:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDichVu](
	[MADV] [int] NOT NULL,
	[MAXE] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietDichVu_1] PRIMARY KEY CLUSTERED 
(
	[MADV] ASC,
	[MAXE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietLinhKien]    Script Date: 6/22/2020 1:38:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietLinhKien](
	[MALK] [int] NOT NULL,
	[MAXE] [int] NOT NULL,
	[SOLUONGLK] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietLinhKien] PRIMARY KEY CLUSTERED 
(
	[MALK] ASC,
	[MAXE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 6/22/2020 1:38:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DichVu](
	[MADV] [int] IDENTITY(1,1) NOT NULL,
	[TENDV] [nvarchar](30) NOT NULL,
	[DONGIA] [int] NOT NULL,
	[TRANGTHAI] [varchar](1) NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[MADV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HangXe]    Script Date: 6/22/2020 1:38:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HangXe](
	[MAHANG] [varchar](10) NOT NULL,
	[TENHANG] [varchar](10) NULL,
 CONSTRAINT [PK_HangXe] PRIMARY KEY CLUSTERED 
(
	[MAHANG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/22/2020 1:38:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MAKH] [int] IDENTITY(1,1) NOT NULL,
	[TENKH] [nvarchar](30) NOT NULL,
	[SDT] [varchar](12) NOT NULL,
	[DIACHI] [nvarchar](30) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LinhKien]    Script Date: 6/22/2020 1:38:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LinhKien](
	[MALK] [int] IDENTITY(1,1) NOT NULL,
	[TENLK] [nvarchar](30) NULL,
	[MAHANG] [varchar](10) NULL,
	[SOLUONG] [int] NULL,
	[DONGIA] [int] NULL,
	[TRANGTHAI] [varchar](1) NULL,
 CONSTRAINT [PK_LinhKien] PRIMARY KEY CLUSTERED 
(
	[MALK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/22/2020 1:38:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MANV] [int] IDENTITY(1,1) NOT NULL,
	[TENNV] [nvarchar](50) NOT NULL,
	[USERNAME] [varchar](30) NOT NULL,
	[GIOITINH] [nvarchar](10) NOT NULL,
	[CHUCVU] [nvarchar](15) NOT NULL,
	[SDT] [nchar](15) NOT NULL,
	[NGAYSINH] [nvarchar](20) NOT NULL,
	[DIACHI] [nvarchar](150) NOT NULL,
	[EMAIL] [varchar](100) NOT NULL,
	[TRANGTHAI] [char](1) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[NhanVien] SET (LOCK_ESCALATION = AUTO)
GO
/****** Object:  Table [dbo].[PhieuSuaXe]    Script Date: 6/22/2020 1:38:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuSuaXe](
	[MAPHIEU] [int] IDENTITY(1,1) NOT NULL,
	[MAXE] [int] NULL,
	[MAKH] [int] NULL,
	[NGAY] [varchar](10) NULL,
	[MANV] [int] NULL,
	[TONGTIEN] [int] NULL,
 CONSTRAINT [PK_PhieuSuaXe_1] PRIMARY KEY CLUSTERED 
(
	[MAPHIEU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XeKhach]    Script Date: 6/22/2020 1:38:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XeKhach](
	[MAXE] [int] IDENTITY(1,1) NOT NULL,
	[HIEUXE] [nvarchar](20) NOT NULL,
	[BIENSO] [nvarchar](10) NOT NULL,
	[MAKH] [int] NULL,
 CONSTRAINT [PK_XeKhach] PRIMARY KEY CLUSTERED 
(
	[MAXE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'Avan156', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'banb156', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'bao156', N'218152')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'cuongdam123', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'cuongoppa123', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'dang123', N'hoaidangit')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'dang157', N'123')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'dao123', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'daohong123', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'daohong156', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'dung156', N'218152')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'duy123', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'duy156', N'218152')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'haha123', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'hao185', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'haocontinue123', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'Haumap156', N'159753')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'hoaidang', N'hoaidangit')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'hoaidang123', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'Hocnguyen123', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'huy123', N'123')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'huybe123', N'218152')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'huyensida156', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'huynh154', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'Lananh214', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'mongchi15', N'218152')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'ngoc156', N'218152')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'phat123', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'phat156', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'tam157', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'tam1572', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'thanhvang123', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'tuykute115', N'1234567')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'VanThai156', N'123456')
INSERT [dbo].[Account] ([USERNAME], [PASSWORD]) VALUES (N'vinh255', N'123456')
INSERT [dbo].[ChiTietDichVu] ([MADV], [MAXE]) VALUES (4, 5068)
INSERT [dbo].[ChiTietLinhKien] ([MALK], [MAXE], [SOLUONGLK]) VALUES (27, 5068, 3)
INSERT [dbo].[ChiTietLinhKien] ([MALK], [MAXE], [SOLUONGLK]) VALUES (34, 5068, 1)
SET IDENTITY_INSERT [dbo].[DichVu] ON 

INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (1, N'RỬA XE BỌT TUYẾT XỊN', 40000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (2, N'TẨY NHỰA ĐƯỜNG CAO CẤP', 300000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (3, N'TẨY KÍNH XE 7 CHỖ', 300000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (4, N'TẨY KÍNH XE 4 CHỖ', 200000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (6, N'VÊ SINH LỐC MÁY VNCE', 3500000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (12, N'RỬA Ô TÔ XE 7 CHỖ', 250000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (14, N'KHỬ MÙI XE 4 CHỖ BẰNG TINH DẦU', 150000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (15, N'KHỬ MÙI XE 7 CHỖ BẰNG TINH DẦU', 250000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (16, N'ĐÁNH PASTE, PHỦ NANO XE 4 CHỖ', 200000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (17, N'ĐÁNH PASTE, PHỦ NANO XE 7 CHỖ', 300000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (18, N'TẨY BỤI TRÊN BỀ MẶT XE', 250000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (19, N'LÀM MỚI PHỤC HỒI NHỰA XE 4 CHỖ', 1000000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (21, N'TẨY TRẦY XE', 400000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (22, N'TỔNG VỆ SINH XE 7 CHỖ', 250000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (24, N'THAY NHỚT CAO CẤP', 300000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (29, N'LẮP DVD MINI', 950000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (31, N'ĐÁNH PASTE, PHỦ NANO XE 16 CHỖ', 1000000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (1031, N'TẨY KÍNH SIÊU SẠCH', 800000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (1032, N'TẨY XE SIÊU TIẾT KIỆM', 1500000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (1033, N'VÊ SINH LỐC MÁY HAPE', 1500000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (1034, N'NHỔ ĐINH XE', 3000000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (1035, N'LẮP ĐẶT CHỐNG TRỘM', 200000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (1036, N'SƠN XE CHE TRẦY', 3000000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (1037, N'THAY NHỚT XỊN', 2500000, N'0')
INSERT [dbo].[DichVu] ([MADV], [TENDV], [DONGIA], [TRANGTHAI]) VALUES (1038, N'ĐÁNH BÓNG XE MỚI HOÀN TOÀN', 2200000, N'0')
SET IDENTITY_INSERT [dbo].[DichVu] OFF
INSERT [dbo].[HangXe] ([MAHANG], [TENHANG]) VALUES (N'ADE', N'ANDO')
INSERT [dbo].[HangXe] ([MAHANG], [TENHANG]) VALUES (N'EN', N'ENMAN')
INSERT [dbo].[HangXe] ([MAHANG], [TENHANG]) VALUES (N'FO', N'FORD')
INSERT [dbo].[HangXe] ([MAHANG], [TENHANG]) VALUES (N'HA', N'HANCIS')
INSERT [dbo].[HangXe] ([MAHANG], [TENHANG]) VALUES (N'HC', N'HANCOCK')
INSERT [dbo].[HangXe] ([MAHANG], [TENHANG]) VALUES (N'HO', N'HONDA')
INSERT [dbo].[HangXe] ([MAHANG], [TENHANG]) VALUES (N'HU', N'HUNIES')
INSERT [dbo].[HangXe] ([MAHANG], [TENHANG]) VALUES (N'HUN', N'HUNLA')
INSERT [dbo].[HangXe] ([MAHANG], [TENHANG]) VALUES (N'MSB', N'MITSUBISHI')
INSERT [dbo].[HangXe] ([MAHANG], [TENHANG]) VALUES (N'MZ', N'MAZDA')
INSERT [dbo].[HangXe] ([MAHANG], [TENHANG]) VALUES (N'NS', N'NISSAN')
INSERT [dbo].[HangXe] ([MAHANG], [TENHANG]) VALUES (N'QA', N'QAN')
INSERT [dbo].[HangXe] ([MAHANG], [TENHANG]) VALUES (N'RC', N'RUNCYAN')
INSERT [dbo].[HangXe] ([MAHANG], [TENHANG]) VALUES (N'RI', N'RINRO')
INSERT [dbo].[HangXe] ([MAHANG], [TENHANG]) VALUES (N'SUZ', N'SUZUKI')
INSERT [dbo].[HangXe] ([MAHANG], [TENHANG]) VALUES (N'TO', N'TOZOTA')
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MAKH], [TENKH], [SDT], [DIACHI]) VALUES (3, N'NGUYỄN HỒNG LOAN', N'01252694623', N'123 PHƯỜNG TÂN ĐỊNH, GÒ VẤP')
INSERT [dbo].[KhachHang] ([MAKH], [TENKH], [SDT], [DIACHI]) VALUES (4039, N'LÊ NGUYỄN', N'0986862585', N'112 MAN THIỆN, QUẬN 9')
INSERT [dbo].[KhachHang] ([MAKH], [TENKH], [SDT], [DIACHI]) VALUES (4040, N'HOÀI ĐĂNG', N'0123568956', N'112 NGUYỄN HUỆ, QUẬN 2')
INSERT [dbo].[KhachHang] ([MAKH], [TENKH], [SDT], [DIACHI]) VALUES (4041, N'HÀ VĂN LINH', N'01252694621', N'1112 NGUYỄN TRƯỜNG TỘ, QUẬN 8')
INSERT [dbo].[KhachHang] ([MAKH], [TENKH], [SDT], [DIACHI]) VALUES (4042, N'HÀ VĂN MAI', N'0123568912', N'115 NGUYỄN XÍ, BÌNH THẠNH')
INSERT [dbo].[KhachHang] ([MAKH], [TENKH], [SDT], [DIACHI]) VALUES (4043, N'LÊ MINH HÒA', N'0986862582', N'112 NGUYỄN VĂN A')
INSERT [dbo].[KhachHang] ([MAKH], [TENKH], [SDT], [DIACHI]) VALUES (4044, N'LÊ NGỌC HUY', N'05223256832', N'112 TRẦN PHÚ, QUẬN 9')
INSERT [dbo].[KhachHang] ([MAKH], [TENKH], [SDT], [DIACHI]) VALUES (6043, N'NGUYỄN HOÀNG KHÔI', N'0125568568', N'112 HOÀNG TRÚ, QUẬN 2')
INSERT [dbo].[KhachHang] ([MAKH], [TENKH], [SDT], [DIACHI]) VALUES (6044, N'NGUYỄN VĂN TÀI', N'0125568567', N'114 NGUYỄN PHÚ. QUẬN 4')
INSERT [dbo].[KhachHang] ([MAKH], [TENKH], [SDT], [DIACHI]) VALUES (6045, N'NGUYỄN MINH LONG', N'0379685852', N'112 NGUYỄN HUỆ, QUẬN 7')
INSERT [dbo].[KhachHang] ([MAKH], [TENKH], [SDT], [DIACHI]) VALUES (6046, N'PHÁP VĂN HỒNG', N'0379685858', N'115 NGUYỄN AN, QUẬN 4')
INSERT [dbo].[KhachHang] ([MAKH], [TENKH], [SDT], [DIACHI]) VALUES (6047, N'NGUYỄN MINH TÈO', N'0379685853', N'61 LONG HÒA, ĐỒNG NAI')
INSERT [dbo].[KhachHang] ([MAKH], [TENKH], [SDT], [DIACHI]) VALUES (6048, N'HỨA MINH TRÍ', N'0138568755', N'112 NGUYỄN HUN, QUẬN 7')
INSERT [dbo].[KhachHang] ([MAKH], [TENKH], [SDT], [DIACHI]) VALUES (6050, N'HOÀNG MINH KHÔI', N'0186686852', N'112 NGUYÊN VĂN CANG, QUẬN 2')
INSERT [dbo].[KhachHang] ([MAKH], [TENKH], [SDT], [DIACHI]) VALUES (6051, N'TÔ THẢO VY', N'0948685752', N'35 LÊ LAI, QUẬN 3')
INSERT [dbo].[KhachHang] ([MAKH], [TENKH], [SDT], [DIACHI]) VALUES (6052, N'KHÁNH LINH', N'0832021172', N'62 NGUYỆN HUỆ, QUẬN 3')
INSERT [dbo].[KhachHang] ([MAKH], [TENKH], [SDT], [DIACHI]) VALUES (6053, N'LA VĂN LÊ', N'0782467623', N'115 LÂN NAM, QUẬN 3')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LinhKien] ON 

INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (4, N'ĐÈN PHA HONDA VOS', N'HO', 45, 120000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (5, N'RÈM XE HONDA 2 LỐP', N'FO', 50, 1500000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (19, N'THIẾT BỊ CẢM BIẾN', N'HU', 41, 5000000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (23, N'ĐÈN PHA HUNLA LAN', N'HUN', 10, 750000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (25, N'ĐẦU DVD MINI LENKA', N'FO', 5, 1000000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (27, N'RUỘT FORD RANTRO', N'FO', 11, 750000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (28, N'RUỘT AUDIEN KHÔNG SĂM', N'HO', 40, 800000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (29, N'ẮC QUY FORD', N'FO', 25, 1500000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (30, N'CÔN HANCOCK 25 INCHES', N'HC', 97, 1500000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (31, N'LỐP AUDIEN TRUNG', N'HC', 9, 600000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (32, N'CHE MUA PRADO', N'HA', 9, 1000000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (34, N'MÂM XE HD', N'HO', 6, 30000000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (1033, N'MÂN XE FD', N'FO', 12, 10000000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (2035, N'KÈN FLET', N'FO', 100, 2500000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (2038, N'MÁY TẢN NHIỆT XE', N'HO', 15, 3500000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (2039, N'ĐẦU DVD MINI LENKA', N'HC', 15, 1500000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (2040, N'ĐÈN PHA VUÔNG', N'ADE', 20, 2500000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (2041, N'ĐÈN PHA HONDA VOS', N'MZ', 20, 1600000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (2042, N'KÈN XE VON', N'HU', 25, 1500000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (2043, N'KÈN XE VLOW', N'HA', 25, 1500000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (2044, N'ÁC QUY HONDA RAN', N'HO', 25, 1700000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (2045, N'ÁC QUY RINRO', N'RI', 30, 1500000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (2046, N'QUẠT TẢN NHIỆT', N'HUN', 15, 25000000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (2047, N'QUẠT TẢN NHIỆT MUS', N'MSB', 15, 3500000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (2048, N'KÍNH CHIẾU HẬU XỊN', N'HUN', 20, 1500000, N'0')
INSERT [dbo].[LinhKien] ([MALK], [TENLK], [MAHANG], [SOLUONG], [DONGIA], [TRANGTHAI]) VALUES (2049, N'KÍNH HẬU XỊN MIT', N'MSB', 15, 25000000, N'0')
SET IDENTITY_INSERT [dbo].[LinhKien] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MANV], [TENNV], [USERNAME], [GIOITINH], [CHUCVU], [SDT], [NGAYSINH], [DIACHI], [EMAIL], [TRANGTHAI]) VALUES (14, N'NGUYỄN THÁI BẢO', N'bao156', N'Nam', N'Quản lí', N'0836877964     ', N'01/01/1999', N'167 KHÓM TÂN ĐÔNG B', N'nguyenthaibao157@gmail.com', N'0')
INSERT [dbo].[NhanVien] ([MANV], [TENNV], [USERNAME], [GIOITINH], [CHUCVU], [SDT], [NGAYSINH], [DIACHI], [EMAIL], [TRANGTHAI]) VALUES (22, N'NGUYỄN THỂ CƯỜNG', N'cuongdam123', N'Nam', N'Thu ngân', N'0943665494     ', N'05/06/1999', N'102 QUẬN BÌNH THẠNH, TPHCM', N'cuongdam123@gmail.com', N'1')
INSERT [dbo].[NhanVien] ([MANV], [TENNV], [USERNAME], [GIOITINH], [CHUCVU], [SDT], [NGAYSINH], [DIACHI], [EMAIL], [TRANGTHAI]) VALUES (29, N'VÕ VĂN QUỐC', N'vinh255', N'Nam', N'Quản kho', N'0943665494     ', N'11/02/1999', N'125 NGÔ GIA TỰ, GÒ VẤP', N'quocvinh@gmail.com', N'1')
INSERT [dbo].[NhanVien] ([MANV], [TENNV], [USERNAME], [GIOITINH], [CHUCVU], [SDT], [NGAYSINH], [DIACHI], [EMAIL], [TRANGTHAI]) VALUES (1032, N'NGUYỄN THỂ HÀO', N'haocontinue123', N'Nữ', N'Quản lí', N'0943664999     ', N'01/02/1999', N'111 NGUYỄN HUÊ, KHÓM TÂN A', N'hao123@gmail.com', N'0')
INSERT [dbo].[NhanVien] ([MANV], [TENNV], [USERNAME], [GIOITINH], [CHUCVU], [SDT], [NGAYSINH], [DIACHI], [EMAIL], [TRANGTHAI]) VALUES (1036, N'HÀ THỊ LAN ANH', N'Lananh214', N'Nữ', N'Thu ngân', N'01236877963    ', N'18/02/1999', N'112 HOÀNG HOA THÁM', N'lananh@gmail.com', N'0')
INSERT [dbo].[NhanVien] ([MANV], [TENNV], [USERNAME], [GIOITINH], [CHUCVU], [SDT], [NGAYSINH], [DIACHI], [EMAIL], [TRANGTHAI]) VALUES (1037, N'THÁI VĂN B', N'banb156', N'Nam', N'Thu ngân', N'01236877896    ', N'11/11/1999', N'167 KHÓM TÂN ĐÔNG A, THANH BÌNH', N'vanb@gmail.com', N'0')
INSERT [dbo].[NhanVien] ([MANV], [TENNV], [USERNAME], [GIOITINH], [CHUCVU], [SDT], [NGAYSINH], [DIACHI], [EMAIL], [TRANGTHAI]) VALUES (1046, N'HOÀI ĐĂNG', N'dang157', N'Nam', N'Quản lí', N'0936859672     ', N'01/02/1999', N'162 NGUYỄN BỈ', N'dang@gmail.com', N'0')
INSERT [dbo].[NhanVien] ([MANV], [TENNV], [USERNAME], [GIOITINH], [CHUCVU], [SDT], [NGAYSINH], [DIACHI], [EMAIL], [TRANGTHAI]) VALUES (2048, N'LÊ VĂN TÁM', N'tam1572', N'Nam', N'Quản kho', N'0968596582     ', N'05/02/1999', N'112 NGUYỄN VĂN LA, QUẬN 2', N'nguyenla@gmail.com', N'0')
INSERT [dbo].[NhanVien] ([MANV], [TENNV], [USERNAME], [GIOITINH], [CHUCVU], [SDT], [NGAYSINH], [DIACHI], [EMAIL], [TRANGTHAI]) VALUES (2049, N'TRỊNH ĐỨC HUY', N'huybe123', N'Nam', N'Quản lí', N'0943256858     ', N'10/02/1999', N'115 AN SƯƠNG, GÒ VẤP', N'huybe12@gmail.com', N'0')
INSERT [dbo].[NhanVien] ([MANV], [TENNV], [USERNAME], [GIOITINH], [CHUCVU], [SDT], [NGAYSINH], [DIACHI], [EMAIL], [TRANGTHAI]) VALUES (2051, N'NGUYỄN TIẾN DŨNG', N'dung156', N'Nam', N'Thu ngân', N'0123586859     ', N'11/02/1999', N'112 NGUYỄN VĂN CHỔI, QUẬN 7', N'vanchoi157@gmail.com', N'0')
INSERT [dbo].[NhanVien] ([MANV], [TENNV], [USERNAME], [GIOITINH], [CHUCVU], [SDT], [NGAYSINH], [DIACHI], [EMAIL], [TRANGTHAI]) VALUES (2052, N'LÊ ĐỨC DUY', N'duy156', N'Nam', N'Quản kho', N'0936654752     ', N'01/02/1999', N'112 NGUYỄN QUÀ, QUẬN 8', N'duy156@gmail.com', N'0')
INSERT [dbo].[NhanVien] ([MANV], [TENNV], [USERNAME], [GIOITINH], [CHUCVU], [SDT], [NGAYSINH], [DIACHI], [EMAIL], [TRANGTHAI]) VALUES (3049, N'HUỲNH MỸ NGỌC', N'ngoc156', N'Nữ', N'Thu ngân', N'0835868672     ', N'30/04/1999', N'112 NGUYỄN XÍ, QUẬN BÌNH THẠNH', N'ngochuynh@gmail.com', N'0')
INSERT [dbo].[NhanVien] ([MANV], [TENNV], [USERNAME], [GIOITINH], [CHUCVU], [SDT], [NGAYSINH], [DIACHI], [EMAIL], [TRANGTHAI]) VALUES (3050, N'NGUYỄN VĂN TÚY', N'tuykute115', N'Nam', N'Thu ngân', N'05685689585    ', N'01/02/1999', N'112 NGUYỄN VĂN CÂU, QUẬN 5', N'tuykutu@gmail.com', N'0')
INSERT [dbo].[NhanVien] ([MANV], [TENNV], [USERNAME], [GIOITINH], [CHUCVU], [SDT], [NGAYSINH], [DIACHI], [EMAIL], [TRANGTHAI]) VALUES (3052, N'LÊ THANH HOA', N'hao185', N'Nam', N'Quản lí', N'0968685874     ', N'11/03/1999', N'115 NGUYỄN AN PHÚ, QUẬN 7', N'thanhhoa2@gmail.com', N'0')
INSERT [dbo].[NhanVien] ([MANV], [TENNV], [USERNAME], [GIOITINH], [CHUCVU], [SDT], [NGAYSINH], [DIACHI], [EMAIL], [TRANGTHAI]) VALUES (3056, N'LÊ VĂN HUỲNH', N'huynh154', N'Nam', N'Thu ngân', N'0328267676     ', N'01/02/1999', N'112 NGUYỄN ZIN, QUẬN 7', N'minhhuynh@gmail.com', N'0')
INSERT [dbo].[NhanVien] ([MANV], [TENNV], [USERNAME], [GIOITINH], [CHUCVU], [SDT], [NGAYSINH], [DIACHI], [EMAIL], [TRANGTHAI]) VALUES (3057, N'HỒNG CHI MỘNG', N'mongchi15', N'Nam', N'Thu ngân', N'0934875477     ', N'13/02/1997', N'10 NGUYỄN VĂN CỪ, QUẬN 7', N'mongchi@gmail.com', N'0')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[PhieuSuaXe] ON 

INSERT [dbo].[PhieuSuaXe] ([MAPHIEU], [MAXE], [MAKH], [NGAY], [MANV], [TONGTIEN]) VALUES (1024, 5066, 4041, N'06-06-2020', 14, 899500)
INSERT [dbo].[PhieuSuaXe] ([MAPHIEU], [MAXE], [MAKH], [NGAY], [MANV], [TONGTIEN]) VALUES (1025, 5066, 4041, N'06-06-2020', 1036, 2200000)
INSERT [dbo].[PhieuSuaXe] ([MAPHIEU], [MAXE], [MAKH], [NGAY], [MANV], [TONGTIEN]) VALUES (1029, 5068, 4041, N'06-06-2020', 14, 3000000)
INSERT [dbo].[PhieuSuaXe] ([MAPHIEU], [MAXE], [MAKH], [NGAY], [MANV], [TONGTIEN]) VALUES (1030, 5069, 4044, N'08-06-2020', 14, 1950000)
INSERT [dbo].[PhieuSuaXe] ([MAPHIEU], [MAXE], [MAKH], [NGAY], [MANV], [TONGTIEN]) VALUES (1031, 5056, 4039, N'08-06-2020', 14, 30500000)
INSERT [dbo].[PhieuSuaXe] ([MAPHIEU], [MAXE], [MAKH], [NGAY], [MANV], [TONGTIEN]) VALUES (2030, 5069, 4044, N'10-06-2020', 14, 2300000)
INSERT [dbo].[PhieuSuaXe] ([MAPHIEU], [MAXE], [MAKH], [NGAY], [MANV], [TONGTIEN]) VALUES (2031, 5066, 4042, N'10-06-2020', 14, 10150000)
INSERT [dbo].[PhieuSuaXe] ([MAPHIEU], [MAXE], [MAKH], [NGAY], [MANV], [TONGTIEN]) VALUES (2032, 6069, 4044, N'10-06-2020', 22, 40000)
INSERT [dbo].[PhieuSuaXe] ([MAPHIEU], [MAXE], [MAKH], [NGAY], [MANV], [TONGTIEN]) VALUES (2033, 5065, 4040, N'10-06-2020', 22, 10150000)
INSERT [dbo].[PhieuSuaXe] ([MAPHIEU], [MAXE], [MAKH], [NGAY], [MANV], [TONGTIEN]) VALUES (2034, 5064, 4039, N'10-06-2020', 22, 1500000)
INSERT [dbo].[PhieuSuaXe] ([MAPHIEU], [MAXE], [MAKH], [NGAY], [MANV], [TONGTIEN]) VALUES (3030, 5056, 4039, N'20-06-2020', 2051, 3300000)
INSERT [dbo].[PhieuSuaXe] ([MAPHIEU], [MAXE], [MAKH], [NGAY], [MANV], [TONGTIEN]) VALUES (3031, 5065, 4040, N'21-06-2020', 2051, 16050000)
INSERT [dbo].[PhieuSuaXe] ([MAPHIEU], [MAXE], [MAKH], [NGAY], [MANV], [TONGTIEN]) VALUES (3032, 7069, 4040, N'21-06-2020', 14, 1900000)
INSERT [dbo].[PhieuSuaXe] ([MAPHIEU], [MAXE], [MAKH], [NGAY], [MANV], [TONGTIEN]) VALUES (3033, 7070, 6045, N'21-06-2020', 2051, 1800000)
INSERT [dbo].[PhieuSuaXe] ([MAPHIEU], [MAXE], [MAKH], [NGAY], [MANV], [TONGTIEN]) VALUES (3034, 7071, 6046, N'21-06-2020', 2051, 10300000)
INSERT [dbo].[PhieuSuaXe] ([MAPHIEU], [MAXE], [MAKH], [NGAY], [MANV], [TONGTIEN]) VALUES (3035, 7072, 6047, N'21-06-2020', 2051, 1799500)
INSERT [dbo].[PhieuSuaXe] ([MAPHIEU], [MAXE], [MAKH], [NGAY], [MANV], [TONGTIEN]) VALUES (3036, 7073, 4040, N'21-06-2020', 3049, 1450000)
INSERT [dbo].[PhieuSuaXe] ([MAPHIEU], [MAXE], [MAKH], [NGAY], [MANV], [TONGTIEN]) VALUES (3037, 7074, 6043, N'21-06-2020', 3049, 3200000)
INSERT [dbo].[PhieuSuaXe] ([MAPHIEU], [MAXE], [MAKH], [NGAY], [MANV], [TONGTIEN]) VALUES (3038, 7075, 6051, N'22-06-2020', 3049, 1800000)
INSERT [dbo].[PhieuSuaXe] ([MAPHIEU], [MAXE], [MAKH], [NGAY], [MANV], [TONGTIEN]) VALUES (3039, 7076, 6052, N'22-06-2020', 3049, 1500000)
INSERT [dbo].[PhieuSuaXe] ([MAPHIEU], [MAXE], [MAKH], [NGAY], [MANV], [TONGTIEN]) VALUES (3040, 7077, 6053, N'22-06-2020', 3049, 4100000)
SET IDENTITY_INSERT [dbo].[PhieuSuaXe] OFF
SET IDENTITY_INSERT [dbo].[XeKhach] ON 

INSERT [dbo].[XeKhach] ([MAXE], [HIEUXE], [BIENSO], [MAKH]) VALUES (5056, N'LENLET', N'66B-1135', 4039)
INSERT [dbo].[XeKhach] ([MAXE], [HIEUXE], [BIENSO], [MAKH]) VALUES (5064, N'ROLL ROYXE', N'22X-3478', 4039)
INSERT [dbo].[XeKhach] ([MAXE], [HIEUXE], [BIENSO], [MAKH]) VALUES (5065, N'FERRARI LEN III', N'22F-3147', 4040)
INSERT [dbo].[XeKhach] ([MAXE], [HIEUXE], [BIENSO], [MAKH]) VALUES (5066, N'LAMBORINI VENT2', N'22C-3257', 4042)
INSERT [dbo].[XeKhach] ([MAXE], [HIEUXE], [BIENSO], [MAKH]) VALUES (5068, N'LENLET', N'22X-1475', 4042)
INSERT [dbo].[XeKhach] ([MAXE], [HIEUXE], [BIENSO], [MAKH]) VALUES (5069, N'VANET NET', N'22F-1467', 4044)
INSERT [dbo].[XeKhach] ([MAXE], [HIEUXE], [BIENSO], [MAKH]) VALUES (6069, N'VERN RCIEC', N'22H-4758', 4044)
INSERT [dbo].[XeKhach] ([MAXE], [HIEUXE], [BIENSO], [MAKH]) VALUES (7069, N'VINFAFAST NU2', N'44F-4857', 4040)
INSERT [dbo].[XeKhach] ([MAXE], [HIEUXE], [BIENSO], [MAKH]) VALUES (7070, N'LAMBORINI V2', N'48F-4857', 6045)
INSERT [dbo].[XeKhach] ([MAXE], [HIEUXE], [BIENSO], [MAKH]) VALUES (7071, N'ROLL ROYCE', N'48F-6857', 6046)
INSERT [dbo].[XeKhach] ([MAXE], [HIEUXE], [BIENSO], [MAKH]) VALUES (7072, N'VOIN CUNE RADIO', N'48F-4856', 6047)
INSERT [dbo].[XeKhach] ([MAXE], [HIEUXE], [BIENSO], [MAKH]) VALUES (7073, N'VENNUS NUN', N'48F-7485', 4040)
INSERT [dbo].[XeKhach] ([MAXE], [HIEUXE], [BIENSO], [MAKH]) VALUES (7074, N'VINCENT VIN', N'48F-4965', 6043)
INSERT [dbo].[XeKhach] ([MAXE], [HIEUXE], [BIENSO], [MAKH]) VALUES (7075, N'LAMBORINI VOIN2', N'48F-4874', 6051)
INSERT [dbo].[XeKhach] ([MAXE], [HIEUXE], [BIENSO], [MAKH]) VALUES (7076, N'VASTINE NUSE', N'35F-4762', 6052)
INSERT [dbo].[XeKhach] ([MAXE], [HIEUXE], [BIENSO], [MAKH]) VALUES (7077, N'VINCENT CENT', N'44F-6854', 6053)
SET IDENTITY_INSERT [dbo].[XeKhach] OFF
ALTER TABLE [dbo].[ChiTietDichVu]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDichVu_DichVu] FOREIGN KEY([MADV])
REFERENCES [dbo].[DichVu] ([MADV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDichVu] CHECK CONSTRAINT [FK_ChiTietDichVu_DichVu]
GO
ALTER TABLE [dbo].[ChiTietDichVu]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDichVu_XeKhach] FOREIGN KEY([MAXE])
REFERENCES [dbo].[XeKhach] ([MAXE])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDichVu] CHECK CONSTRAINT [FK_ChiTietDichVu_XeKhach]
GO
ALTER TABLE [dbo].[ChiTietLinhKien]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuSua_LinhKien] FOREIGN KEY([MALK])
REFERENCES [dbo].[LinhKien] ([MALK])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietLinhKien] CHECK CONSTRAINT [FK_ChiTietPhieuSua_LinhKien]
GO
ALTER TABLE [dbo].[ChiTietLinhKien]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuSua_XeKhach] FOREIGN KEY([MAXE])
REFERENCES [dbo].[XeKhach] ([MAXE])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietLinhKien] CHECK CONSTRAINT [FK_ChiTietPhieuSua_XeKhach]
GO
ALTER TABLE [dbo].[LinhKien]  WITH CHECK ADD  CONSTRAINT [FK_LinhKien_HangXe] FOREIGN KEY([MAHANG])
REFERENCES [dbo].[HangXe] ([MAHANG])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LinhKien] CHECK CONSTRAINT [FK_LinhKien_HangXe]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_Account] FOREIGN KEY([USERNAME])
REFERENCES [dbo].[Account] ([USERNAME])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_Account]
GO
ALTER TABLE [dbo].[PhieuSuaXe]  WITH CHECK ADD  CONSTRAINT [FK_PhieuSuaXe_NhanVien1] FOREIGN KEY([MANV])
REFERENCES [dbo].[NhanVien] ([MANV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuSuaXe] CHECK CONSTRAINT [FK_PhieuSuaXe_NhanVien1]
GO
ALTER TABLE [dbo].[PhieuSuaXe]  WITH CHECK ADD  CONSTRAINT [FK_PhieuSuaXe_XeKhach] FOREIGN KEY([MAXE])
REFERENCES [dbo].[XeKhach] ([MAXE])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuSuaXe] CHECK CONSTRAINT [FK_PhieuSuaXe_XeKhach]
GO
ALTER TABLE [dbo].[XeKhach]  WITH CHECK ADD  CONSTRAINT [FK_XeKhach_KhachHang] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KhachHang] ([MAKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[XeKhach] CHECK CONSTRAINT [FK_XeKhach_KhachHang]
GO
