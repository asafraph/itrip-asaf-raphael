create database vacations;
use vacations;

create table users(
id varchar(255),
Fname varchar(20) not null,
Lname varchar(20) not null,
username varchar(255) not null,
password text not null,
category varchar(10) default "user",
primary key (id)
);

create table vacations(
id varchar(255),
city varchar(40) not null,
country varchar(40) not null,
image text not null,
departureDate date not null,
returnDate date not null,
price int not null,
followUsers int default 0,
description varchar(255) not null,
primary key (id)
);

insert into users(id, Fname, Lname, username, password, category)
values ("c529bcfa-0d3a-48ae-88dc-d2eceee800b9", "Asaf", "Raphael", "asafraph", "Txhrptk1", "admin");

insert into users(id, Fname, Lname, username, password, category)
values ("dc5d276d-126e-402f-963b-b4ccccefe571", "Dor", "Raphael", "dorraph", "123", "user");

insert into users(id, Fname, Lname, username, password, category)
values ("6c0b11e3-7f38-4b7e-94f9-2b4fd3017c50", "Itay", "Raphael", "itayraph", "123", "user");

insert into users(id, Fname, Lname, username, password, category)
values ("126872ca-0692-4d4e-89c5-1f579e0d4022", "Miriam", "Raphael", "miriamraph", "123", "user");

insert into users(id, Fname, Lname, username, password, category)
values ("52b80abe-f15a-4477-b7e5-cab689a87962", "Lital", "Aspir", "litalasp", "123", "user");

insert into vacations(id, city, country, image, departureDate, returnDate, price, followusers, description)
values ("8b08ff06-b72a-4c18-80d9-0c3d2c5a74b5", "Barcelona", "Spain", "", "2020-12-15", "2020-12-20", 650, 0, "5 nights at Hilton Barcelona hotel");

insert into vacations(id, city, country, image, departureDate, returnDate, price, followusers, description)
values ("7db7942c-f4f8-471f-8c63-00fd53ac529d", "Jerusalem, Tel-Aviv, Eilat", "Israel", "", "2020-12-23", "2020-12-30", 820, 0, "7 nights in Holyland");

insert into vacations(id, city, country, image, departureDate, returnDate, price, followusers, description)
values ("c6a46ddf-e89b-4c95-9020-be3bdc872e0b", "Rio de Janeiro", "Brazil", "", "2021-01-24", "2021-02-20", 2650, 0, "dreams come true in Rio`s Carnaval");

insert into vacations(id, city, country, image, departureDate, returnDate, price, followusers, description)
values ("8f08571e-b336-4df4-be28-cadf2832a6ae", "Milano, Venice, Bergamo", "Italy", "", "2021-02-14", "2021-02-22", 990, 0, "8 nights in north Italy");

insert into vacations(id, city, country, image, departureDate, returnDate, price, followusers, description)
values ("d1373297-57ce-4d4d-b8f7-fa5836fc0030", "Phuket, Copangan, Ko Phi Phi", "Thailand", "", "2021-01-02", "2020-02-02", 2350, 0, "a month in Thailand");

create table follow(
id int auto_increment,
user_id varchar(255),
vacation_id varchar(255),
primary key (id), 
foreign key(user_id) references users(id),
foreign key(vacation_id) references vacations(id)
)