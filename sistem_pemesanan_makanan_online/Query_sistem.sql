create table Restaurant (
RestaurantID varchar(5) primary key,
nama_restaurant varchar (100) not null,
alamat varchar (255) not null,
phone varchar (20) not null,
rating decimal(2,1)
)

create table Pelanggan (
ID_Pelanggan varchar(5) primary key,
nama varchar(30) not null,
email varchar (30) unique not null,
phone varchar (20) not null,
alamat varchar (100) not null
)

create table Pesanan (
ID_Pesanan varchar(5) primary key,
tanggal_pesanan datetime default getdate(),
total_pesanan decimal(10,3),
status_pemesanan varchar (30) not null check (status_pemesanan in ('pending', 'dalam proses', 'terkirim', 'dibatalkan')),
ID_Pelanggan varchar(5) ,
foreign key (ID_Pelanggan) references Pelanggan (ID_Pelanggan)
on delete cascade
on update cascade
)


create table Menu (
ID_Menu varchar(5) primary key,
nama_menu varchar(30) not null,
kategori varchar (30) not null,
harga decimal(10,3) not null,
RestaurantID varchar(5) ,
foreign key (RestaurantID) references Restaurant (RestaurantID)
on delete cascade
on update cascade
)

create table Detail_Pemesanan (
ID_Detail_Pemesanan varchar(5) primary key,
quantity int not null,
total_harga decimal (10,3) not null,
ID_Menu varchar(5),
ID_Pesanan varchar(5),
foreign key (ID_Menu) references Menu (ID_Menu),
foreign key (ID_Pesanan) references Pesanan (ID_Pesanan)
on delete cascade
on update cascade
)