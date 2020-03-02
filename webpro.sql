create database jobportaljsp;

use jobportaljsp;

create table siteuser
(
firstname varchar(30),
lastname varchar(30),
emailid varchar(50) primary key,
password varchar(30),
gender varchar(10),
contactno varchar(10)
);
insert into siteuser(firstname,lastname,emailid,password,gender,contactno) values('abc','xyz','abc@gmail.com','password','male','8602768216');

create table admin
(
adminname varchar(50) primary key,
password varchar(35)
);
insert into admin values('admin','admin');


create table recruiter
(
companyname varchar(50),
firstname varchar(30),
lastname varchar(30),
emailid varchar(50) primary key,
password varchar(10),
gender varchar(10),
contactno varchar(10),
status varchar(10)
);


create table job
(
id int(5) primary key auto_increment,
company varchar(50),
jobtitle varchar(50),
postdate varchar(30),
lastdate varchar(30),
jobdesc varchar(400),
location varchar(40)
);


create table apply
(
id int(5) primary key auto_increment,
userid varchar(30),
jobid varchar(30),
applydate varchar(30)
);