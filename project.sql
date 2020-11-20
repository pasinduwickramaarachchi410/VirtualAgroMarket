create database VirtualAgroMarket;


use VirtualAgroMarket;

create table Administrator(

adminID varchar(10) not null primary key,
fName varchar(30),
lName varchar(30),
district varchar(15),
divSecretariat varchar(15),
designation varchar(20),
userName varchar(20),
password varchar(30)
);

create table Farmer(

farmerID varchar(10) not null primary key,
fName varchar(30),
lName varchar(30),
gender char,
NIC varchar(15),
address varchar(60),
phoneNo int,
accountNo long,
bankName varchar(30),
branchName varchar(30)
);

create table Buyer (
   buyerID varchar(10) not null,
   fName varchar(30),
   lName varchar(30),
   gender char(1),
   NIC varchar(15),
   address varchar(30),
   phoneNo int(10),
   userName varchar(20),
   password varchar(10),
   email varchar(30),
   PRIMARY KEY (buyerId)
);

CREATE table Crop (
    cropID varchar(10),
    farmerID varchar(10),
    cropName varchar(20),
    cropType varchar(20),
    farmerAddr varchar(30),
    qty int(10),
    unitPrice double,
    harvestDate date,
    PRIMARY KEY (cropID),
    FOREIGN KEY (farmerID) REFERENCES Farmer(farmerID)
);

create table Orders(

orderID varchar(10) primary key,
buyerID varchar(10),
cropID varchar(10),
oderDate date,
totalAmount double,
foreign key(buyerID) references Buyer(buyerID)

);

create table Payments(

paymentID varchar(10) primary key,
orderID varchar(10),
paymentDate date,
paymentMethod varchar(20),
foreign key(orderID) references Orders(orderID)

);


insert into Administrator (adminID,fName,lName,district,divSecretariat,designation,userName,password) values
('A101','Rasika','Ratnayake','Badulla','Haliela','Agrarian Officer','RasikaRat','Rasika@Haliela'),
('A102','Priyanthi','Perera','Galle','Balapitiya','Agrarian Officer','pperera','Ppererabalapitiya'),
('A103','Jayantha','Wickramasinghe','Gampaha','Minuwangoda','Agrarian Officer','jayanthaW','jayanthaW'),
('A104','Nilani','Karunarathne','Kandy','Kundasale','Agrarian Officer','nilani','knilani123'),
('A105','Sujeewa','Bandara','Ampara','Ampara','Agrarian Officer','sujeewaB','sujeewaBandara');


insert into Farmer (farmerID,fName,lName,gender,NIC,address,phoneNo,accountNo,bankName,branchName) values
('F101','Bandula','Samaranayake','M','681655555V','No.2,Temple Road,Haliela','0713000866','00241178000','Bank Of Ceylon','Haliela'),
('F102','Somasiri','Gunathilake','M','627655521V','"Sumudu",Badulla Road,Haliela','0786540826','24110755088','Sampath Bank','Badulla'),
('F103','Shriyani','Amarasiri','F','735650554V','No.A/45,6th Mile Post,Haliela','0772000868','64300832176','NSB','Haliela'),
('F104','Gunapala','Bandara','M','702125545V','No.123,2nd Mile Post,Ketawala','0713780866','90241348','Bank Of Ceylon','Badulla'),
('F105','Damayanthi','Ratnayake','F','769655805V','Jayasiri,Welimada Road,Morethota','0700900762','94331287','Peoples Bank','Haliela'),
('F106','Sarath','De Zoysa','M','781008765V','No.321,Colombo Road,Ahungalla','0750999762','02331653','Peoples Bank','Ambalangoda'),
('F107','Piyal','Nishantha','M','8002105763V','"Piyal",Temple Road,Galwehera','0771002676','004252785468','Hatton National Bank','Galle'),
('F108','Sunethra','De Silva','F','627563400V','No.B/345,Main Street,Balapitiya','0712375099','6475329','Sampath Bank','Ambalangoda'),
('F109','Shiromi','De Silva','F','832218674V','"Piyakaru", Colombo Road, Ahungalla','0782375098','902413764','Bank of Ceylon','Ambalangoda'),
('F110','Ajith','Perera','M','8675334219V','No.765,Lower Street,Kandagoda','0717644399','00600644225','Peoples Bank','Balapitiya'),
('F111','Upul','Ratnayake','M','853425565V','No.C/2,Main Street,Minuwangoda','0717600988','10098875423','Peoples Bank','Minuwangoda'),
('F112','Kamala','Samaranayake','F','697634458V','"Kamala",Temple Road,Naiwala','0752294966','752216','NSB','Weyangoda'),
('F113','Rupasiri','Dissanayaka','M','704527119V','No.9,Lower Street,Deranagoda','0786544321','86537752','DFCC Bank','Minuwangoda'),
('F114','Sumithra','Wijebandara','F','842268585V','No.101,Naiwala,Weyangodaa','0773421556','6584488','Bank of Ceylon','Weyangoda'),
('F115','Sunil','Priyantha','M','895719662V','No.7/B,Lower Street,Minuwangoda','0786521134','88442017','Peoples Bank','Minuwangoda');


INSERT INTO Buyer (buyerID,fName, lName, gender, NIC, address, phoneNo, userName, password, email )
VALUES ('B101','Kamal', 'Bandara', 'm', '698547123V', 'No.22/A,quarry Road,Dehiwala', '0112264507', 'b6923', 'b111', 'bandara111@gmail.com'),
 ('B102','Nilanthi', 'Perera', 'f', '769584127V', 'No.87,Asoka Gardens,Kiribathgoda', '0112290384', 'p7627', 'b222', 'perera222@gmail.com'),
('B103','Chandima', 'Abeyrathna', 'f', '886947125V', 'No7/89,Gall Road,Panadura', '0382237493', 'a8825', 'b333', 'abey333@gmail.com'),
 ('B104','Nimal', 'Senarathna', 'm', '876397841V', '722,Kotte Road,Rajagiriya','0112878709', 's8741', 'c444', 'sena444@gmail.com'),
('B105','Chandana', 'Fernando', 'm', '904178269V', 'Kandy Road,Nittambuwa', '0332285339', 'f9069', 'd555', 'fernan555@gmail.com');

INSERT INTO crop (cropID, farmerID, cropName,cropType, qty, unitPrice, harvestDate)
Values('C101', 'F104', 'Big Onion', 'Vegetables', '50', '131.00','20201119'),
('C102', 'F107', 'Pumkin', 'Vegetables', '20', '30.00','20201120'),
('C103', 'F102', 'Pineapple', 'Fruits', '35', '75.00','20201121'),
('C104', 'F1011', 'Mango', 'Fruits', '30', '100.00','20201122'),
('C105', 'F105', 'Clove', 'Spices', '10', '900.00','20201123');


INSERT INTO Orders VALUES
('O101','B101','C105','2020-09-05','15000.00'),
('O102','B104','C103','2020-09-17','5000.00'),
('O103','B105','C101','2020-10-15','7000.00'),
('O104','B102','C102','2020-11-10','12000.00'),
('O105','B103','C104','2020-11-05','13500.00');

INSERT INTO Payments VALUES
('P101','O101','2020-11-05','Cash'),
('P102','O103','2020-10-05','Check'),
('P103','O104','2020-11-15','Cash'),
('P104','O102','2020-09-25','Cash'),
('P105','O105','2020-10-15','Check');
