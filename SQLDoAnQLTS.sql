--------------------------------------------------CREATE TABLE-------------------------------------------------
---1-----------------TABLE NHAN VIEN--------------------
create table NhanVien
(
	MaNV varchar(20) not null,
	TenNV nvarchar(50) not null,
	ChucVu nvarchar(30),
	MaPB varchar(20) not null,
	DiaChi nvarchar(50),
	NgaySinh datetime,
	SDT varchar(20),
	CMND_CCCD varchar(20) not null,
	Luong money,
	TinhTrang nvarchar(20)
)

---2-----------------TABLE PHONG BAN--------------------
create table PhongBan
(
	MaPB varchar(20) not null,
	TenPB nvarchar(30),
	DiaChi nvarchar(50),
	SDT varchar(20),
	MaNVTP varchar(20) not null --(MaNVTP = MaNV giu chuc vu truong phong)--
)

---3-----------------TABLE LOAI TAI SAN--------------------
create table LoaiTS
(
	MaLoaiTS varchar(20) not null,
	TenLoaiTS nvarchar(30),
	NhaSX nvarchar(30)
)

---4-----------------TABLE DANH MUC TAI SAN--------------------
create table DanhMucTS
(
	MaDMTS varchar(20) not null,
	TenDMTS nvarchar(30),
	TinhTrang nvarchar(30),
	MaLoai varchar(20) not null
)

---5-----------------TABLE TAI SAN CHI TIET--------------------
create table TaiSanChiTiet
(
	MaTS varchar(20) not null,
	TenTS nvarchar(50),
	MaDMTS varchar(20) not null,
	TinhTrang nvarchar(30),
	DinhGia money,
	DVDinhGia nvarchar(20),
	SoLuong int,
	NgaySX datetime,
	HSD datetime,
	TrangThai nvarchar(30),
	NoiPhanBo varchar(20) not null --(NoiPhanBo = MaPB)--
)

---6-----------------TABLE DOT--------------------
create table Dot
(
	MaDot varchar(20) not null,
	ThoiGian nvarchar(30)
)

---7-----------------TABLE NHA CUNG CAP--------------------
create table NhaCC
(
	MaNCC varchar(20) not null,
	TenNCC nvarchar(30),
	DiaChi  nvarchar(30),
	SDT varchar(20)
)

---8-----------------TABLE PHIEU DE XUAT BAO DUONG TAI SAN--------------------
create table PhieuDeXuatBaoDuongTS
(
	MaPDXBD varchar(20) not null,
	MaPB varchar(20) not null,
	MaTS varchar(20) not null,
	NgayLap datetime,
	TinhTrang nvarchar(20),
	NoiDung nvarchar(100),
	GhiChu nvarchar(50)
)

---9-----------------TABLE PHIEU BAO DUONG TAI SAN--------------------
create table PhieuBaoDuongTS
(
	MaPBD varchar(20) not null,
	MaPDXBD varchar(20) not null,
	MaTS varchar(20) not null,
	MaNV varchar(20) not null,
	NgayLap datetime,
	TongChiPhi float,
	DVDinhGia nvarchar(20),
	TinhTrang nvarchar(20),
	GhiChu nvarchar(50)
)

---10-----------------TABLE PHIEU DE XUAT THANH LY TAI SAN--------------------
create table PhieuDeXuatThanhLyTS
(
	MaPDXTL varchar(20) not null,
	MaPB varchar(20) not null,
	MaTS varchar(20) not null,
	NgayLap datetime,
	TinhTrang nvarchar(20),
	NoiDung nvarchar(100),
	GhiChu nvarchar(50)
)

---11-----------------TABLE PHIEU THANH LY TAI SAN--------------------
create table PhieuThanhLyTS
(
	MaPTL varchar(20) not null,
	MaTS varchar(20) not null,
	MaNV varchar(20) not null,
	NgayLap datetime, 
	TongKhoanThu float,
	DVDinhGia nvarchar(20),
	TinhTrang nvarchar(50)
)

---12-----------------TABLE PHIEU DE XUAT MUA SAM TAI SAN--------------------
create table PhieuDeXuatMuaSamTS
(
	MaPDXMS varchar(20) not null,
	MaPB varchar(20) not null,
	NgayLap datetime,
	NoiDung nvarchar(100),
	TinhTrang nvarchar(30),
	GhiChu nvarchar(50)
)

---13-----------------TABLE CHI TIET PHIEU DE XUAT MUA SAM TAI SAN--------------------
create table ChiTietPDXMS
(
	MaPDXMS varchar(20) not null,
	MaDMTS nvarchar(20) not null,
	SoLuongPDXMS int,
	SoLuongDMTS int,
	DVT nvarchar(20),
	GhiChu nvarchar(50)
)

---14-----------------TABLE PHIEU DAT TAI SAN--------------------
create table PhieuDatTS
(
	MaPD varchar(20) not null,
	MaPB varchar(20) not null,
	MaDot varchar(20) not null,
	MaNCC varchar(20) not null,
	NgayLapPD datetime,
	TinhTrang nvarchar(30),
	GhiChu nvarchar(50)
)

---15-----------------TABLE CHI TIET PHIEU DAT TAI SAN--------------------
create table ChiTietPDTS
(
	MaPD varchar(20) not null,
	MaDMTS varchar(20) not null,
	SoLuongDat int,
	DonGia float,
	DVT nvarchar(20),
	TongDonGia float,
	GhiChu nvarchar(50)
)

---16-----------------TABLE PHIEU NHAP TAI SAN--------------------
create table PhieuNhapTS
(
	MaPN varchar(20) not null,
	MaDot varchar(20) not null,
	MaNCC varchar(20) not null,
	NgayLap datetime, 
	TinhTrang nvarchar(20),
	GhiChu nvarchar(50)
)

---17-----------------TABLE CHI TIET PHIEU NHAP TAI SAN--------------------
create table ChiTietPNTS
(
	MaPN varchar(20) not null,
	MaDMTS varchar(20) not null,
	ThoiGianNhap datetime,
	SoLuongNhap int,
	DonGia float,
	DVT nvarchar(20),
	TongDonGia float,
	GhiChu nvarchar(50)
)

---18-----------------TABLE PHIEU PHAN BO TAI SAN--------------------
---19-----------------TABLE CHI TIET PHIEU PHAN BO TAI SAN--------------------
---20-----------------TABLE CHI TIET PHIEU PHAN BO TAI SAN--------------------
---21-----------------TABLE CHI TIET PHIEU PHAN BO TAI SAN--------------------
---22-----------------TABLE CHI TIET PHIEU PHAN BO TAI SAN--------------------


--------------------------------------------------PRIMARY & FOREIGN KEY--------------------------------------------------
---1-------TABLE NHAN VIEN----------
alter table NhanVien add constraint PK_NV primary key (MaNV)
alter table NhanVien add constraint FK_NV_PB foreign key (MaPB) references PhongBan(MaPB)

---2-------TABLE PHONG BAN----------
alter table PhongBan add constraint PK_PB primary key (MaPB)
alter table PhongBan add constraint FK_PB_NV foreign key (MaNVTP) references NhanVien(MaNV)

---3-------TABLE LOAI TAI SAN----------
alter table LoaiTS add constraint PK_LoaiTS primary key (MaLoaiTS)

---4-------TABLE DANH MUC TAI SANT----------
alter table DanhMucTS add constraint PK_DMTS primary key (MaDMTS)
alter table DanhMucTS add constraint FK_DMTS_LoaiTS foreign key (MaLoai) references LoaiTS(MaLoai)

---5-------TABLE TAI SAN CHI TIET----------
alter table TaiSanChiTiet add constraint PK_TSCT primary key (MaTS)
alter table TaiSanChiTiet add constraint FK_TSCT_DMTS foreign key (MaDMTS) references DanhMucTS(MaDMTS)
alter table TaiSanChiTiet add constraint FK_TSCT_PB foreign key (NoiPhanBo) references PhongBan(MaPB)

---6-------TABLE DOT----------
alter table Dot add constraint PK_Dot primary key (MaDot)

---7-------TABLE NHA CUNG CAP----------
alter table  NhaCC add constraint PK_NCC primary key (MaNCC)

---8-------TABLE PHIEU DE XUAT BAO DUONG TAI SAN---------
alter table PhieuDeXuatBaoDuongTS add constraint PK_DXBD primary key (MaPDXBD)
alter table PhieuDeXuatBaoDuongTS add constraint FK_DXBD_PB foreign key (MaPB) references PhongBan(MaPB)
alter table PhieuDeXuatBaoDuongTS add constraint FK_DXBD_TSCT foreign key (MaTS) references TaiSanChiTiet(MaTS)

---9-------TABLE PHIEU BAO DUONG TAI SAN----------
alter table PhieuBaoDuongTS add constraint PK_PBD primary key (MaPBD)
alter table PhieuBaoDuongTS add constraint FK_PBD_PDXBD foreign key (MaPDXBD) references PhieuDeXuatBaoDuongTS(MaPDXBD)
alter table PhieuBaoDuongTS add constraint FK_PBD_TSCT foreign key (MaTS) references TaiSanChiTiet(MaTS)
alter table PhieuBaoDuongTS add constraint FK_PBD_NV foreign key (MaNV) references NhanVien(MaNV)

---10-------TABLE PHIEU DE XUAT THANH LY TAI SAN----------
alter table PhieuDeXuatThanhLyTS add constraint PK_DXTL primary key (MaPDXTL)
alter table PhieuDeXuatThanhLyTS add constraint FK_DXTL_PB foreign key (MaPB) references PhongBan(MaPB)
alter table PhieuDeXuatThanhLyTS add constraint FK_DXTL_TSCT foreign key (MaTS) references TaiSanChiTiet(MaTS)

---11-------TABLE PHIEU THANH LY TAI SAN----------
alter table PhieuThanhLyTS add constraint PK_PTL primary key (MaPBD)
alter table PhieuThanhLyTS add constraint FK_PTL_PDXTL foreign key (MaPDXBD) references PhieuDeXuatBaoDuongTS(MaPDXBD)
alter table PhieuThanhLyTS add constraint FK_PTL_TSCT foreign key (MaTS) references TaiSanChiTiet(MaTS)
alter table PhieuThanhLyTS add constraint FK_PTL_NV foreign key (MaNV) references NhanVien(MaNV)

---12-------TABLE PHIEU DE XUAT MUA SAM TAI SAN----------


---13-------TABLE CHI TIET PHIEU DE XUAT MUA SAM TAI SAN----------


---14-------TABLE PHIEU DAT TAI SAN----------
---15-------TABLE CHI TIET PHIEU DAT TAI SAN----------
---16-------TABLE PHIEU NHAP TAI SAN----------
---17-------TABLE CHI TIET PHIEU NHAP TAI SAN----------
---18-------TABLE PHIEU PHAN BO TAI SAN----------
---19-------TABLE CHI TIET PHIEU PHAN BO TAI SAN----------
---20-------TABLE PHIEU DIEU CHUYEN TAI SAN----------
---21-------TABLE PHIEU THU HOI TAI SAN----------
---22-------TABLE CHI TIET PHIEU THU HOI TAI SAN----------


--------------------------------------------------NHAP DU LIEU--------------------------------------------------
---1-------TABLE NHAN VIEN----------
---2-------TABLE PHONG BAN----------
---3-------TABLE LOAI TAI SAN----------
---4-------TABLE DANH MUC TAI SANT----------
---5-------TABLE TAI SAN CHI TIET----------
---6-------TABLE DOT----------
---7-------TABLE NHA CUNG CAP----------
---8-------TABLE PHIEU DE XUAT BAO DUONG TAI SAN---------
---9-------TABLE PHIEU BAO DUONG TAI SAN----------
---10-------TABLE PHIEU DE XUAT THANH LY TAI SAN----------
---11-------TABLE PHIEU THANH LY TAI SAN----------
---12-------TABLE PHIEU DE XUAT MUA SAM TAI SAN----------
---13-------TABLE CHI TIET PHIEU DE XUAT MUA SAM TAI SAN----------
---14-------TABLE PHIEU DAT TAI SAN----------
---15-------TABLE CHI TIET PHIEU DAT TAI SAN----------
---16-------TABLE PHIEU NHAP TAI SAN----------
---17-------TABLE CHI TIET PHIEU NHAP TAI SAN----------
---18-------TABLE PHIEU PHAN BO TAI SAN----------
---19-------TABLE CHI TIET PHIEU PHAN BO TAI SAN----------
---20-------TABLE PHIEU DIEU CHUYEN TAI SAN----------
---21-------TABLE PHIEU THU HOI TAI SAN----------
---22-------TABLE CHI TIET PHIEU THU HOI TAI SAN----------