use Quanlydiemthi;
create table MonHoc(
MaMH varchar(20) primary key,
TenMh varchar(50));
create table BangDiem(
MaHs varchar(20),
MaMh varchar(20),
DiemThi int,
NgayKT datetime,
primary key(MaHs,MaMh),
foreign key(MaHs) references Hocsinh(MaHs),
foreign key(MaMh) references MonHoc(MaMh));
create table GiaoVien(
MaGv varchar(20) primary key,
TenGv varchar(20),
SDT varchar(10));
alter table MonHoc add MaGv varchar(20);
alter table MonHoc add constraint FK_MaGV FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV);

