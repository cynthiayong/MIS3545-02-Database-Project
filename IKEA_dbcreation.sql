create database IKEA_DATABASE
Go
/*Amy Zang, Cynthia Yong, and Xiang Li will design a database for IKEA to analysis how IKEA works in its business.
*/
USE IKEA_DATABASE
go

/*Create Customer Table*/
Create table Customer(
	CustomerID varchar(50) not null primary key,
	FirstName varchar(50) not null,
	LastName varchar(50) not null,
	Gender varchar (50) not null,
	Email varchar (100) not null,
	CustomerCountry varchar(50) not null,
	CustomerState varchar(50) not null,
	CustomerCity varchar(50) not null,
	PostalCode varchar(50) not null,
	CutomerAddressLine varchar(100) not null
	);

/*Insert data into Customer table*/
Insert into Customer (
	CustomerID, FirstName, LastName, Gender, Email, CustomerCountry, CustomerState, CustomerCity, PostalCode, CutomerAddressLine) Values
	('C000001','Mildred','Lewis','Female','mlewis0@vimeo.com','Canada','Québec','Matagami','N2M','32414 Pankratz Crossing'),
	('C000002','Earl','Lane','Male','elane1@bizjournals.com','Canada','Alberta','Coaldale','T1M','96597 Green Ridge Circle'),
	('C000003','Victor','Gardner','Male','vgardner2@google.co.jp','United States','Illinois','Chicago','60686','9136 Sundown Park'),
	('C000004','Wanda','Burke','Female','wburke3@a8.net','United States','Illinois','Chicago','60657','499 Pankratz Crossing'),
	('C000005','Julia','Bryant','Female','jbryant4@oaic.gov.au','United States','Maryland','Baltimore','21281','0887 Kinsman Alley'),
	('C000006','Maria','Wallace','Female','mwallace5@wordpress.com','United States','New York','New York City','10009','4 Muir Hill'),
	('C000007','Brandon','Bailey','Male','bbailey6@nifty.com','United States','Georgia','Atlanta','31119','14 Farwell Plaza'),
	('C000008','Harold','Jones','Male','hjones7@google.es','Canada','Newfoundland and Labrador','Grand Bank','E8K','4 Darwin Court'),
	('C000009','Gregory','Parker','Male','gparker8@yellowpages.com','Canada','Alberta','Stony Plain','T7Z','0818 Heath Trail'),
	('C000010','Adam','Howell','Male','ahowell9@patch.com','Canada','British Columbia','Prince Rupert','V8J','322 Cody Park'),
	('C000011','Arthur','Diaz','Male','adiaza@microsoft.com','United States','Missouri','Saint Louis','63143','05 Mccormick Junction'),
	('C000012','Brian','Morris','Male','bmorrisb@delicious.com','United States','California','San Jose','95113','56140 Laurel Way'),
	('C000013','Henry','Stevens','Male','hstevensc@surveymonkey.com','Canada','British Columbia','Metchosin','V9C','6916 East Park'),
	('C000014','Louise','Rogers','Female','lrogersd@plala.or.jp','United States','Texas','Spring','77386','3 Superior Junction'),
	('C000015','Howard','Arnold','Male','harnolde@imageshack.us','United States','Florida','Clearwater','34629','52 Westerfield Parkway'),
	('C000016','Paula','Gonzalez','Female','pgonzalezf@whitehouse.gov','Canada','Ontario','Owen Sound','N4K','1 Summerview Junction'),
	('C000017','Larry','Wheeler','Male','lwheelerg@abc.net.au','United States','Missouri','Lees Summit','64082','15 Mendota Street'),
	('C000018','Jonathan','Kelly','Male','jkellyh@infoseek.co.jp','United States','Texas','El Paso','88546','6 Ohio Trail'),
	('C000019','Maria','Bowman','Female','mbowmani@independent.co.uk','Canada','Saskatchewan','Kamsack','R2J','508 Shelley Avenue'),
	('C000020','Paula','Burton','Female','pburtonj@si.edu','United States','Washington','Seattle','98115','3385 Porter Court');

/*Create Product Table*/
Create table Product (
	ProductID varchar(50) primary key not null,
	ProductName varchar(100) not null,
	ProductCategoryID varchar(50) not null,
	ProductWidth_cm integer not NULL,
	ProductDepth_cm integer not NULL,
	ProductHeight_cm integer not null,
	RetailPrice_$ decimal(6,2) not null,
	RequiredAssembly varchar(10) not null
	);

/*Insert data into Product table*/
Insert into Product(
	ProductID, ProductName, ProductCategoryID, ProductWidth_cm, ProductDepth_cm, ProductHeight_cm, RetailPrice_$, RequiredAssembly) values
	('P00001','FRIHETEN','PC010','230','91','79','499.00','Yes'),
	('P00002','SKARSTA','PC001','160','80','120','269.00','Yes'),
	('P00003','RENBERGET','PC002','59','65','108','49.99','Yes'),
	('P00004','LINDSHULT','PC003','7','35','11','24.99','Yes'),
	('P00005','STOCKHOLM','PC005','160','40','81','449.00','Yes'),
	('P00006','BJURSTA','PC006','110','110','95','149.00','Yes'),
	('P00007','GRUNDTAL','PC007','60','3','0','39.99','No'),
	('P00008','MALM','PC008','211','168','38','399.00','Yes'),
	('P00009','HULSIG','PC009','120','180','0','12.99','No'),
	('P00010','SEKTION','PC004','91','39','76','365.00','Yes');

/*Create Product category table*/
Create table ProductCategory (
	ProductCategoryID varchar(50) primary key not null,
	ProductCategoryName varchar(50) not null
	);

/*Insert data intor ProductCateogry table*/
Insert into ProductCategory(
	ProductCategoryID, ProductCategoryName) values
	('PC001','Computer Desks'),
	('PC002','Office Chairs'),
	('PC003','Kitchen integrated lighting'),
	('PC004','SEKTION Kitchen cabinets'),
	('PC005','Dining storage'), 
	('PC006','Bar tables'),
	('PC007','Bathroom mirrors'),
	('PC008','Beds'),
	('PC009','Rugs'),
	('PC010','Sofas & armchairs');

/*Create Payment table*/
Create table Payment (
	PaymentID varchar(50) primary key not null,
	P_OrderID varchar(50) not null,
	P_CustomerID varchar(50) not null,
	CreditCardType varchar(10) not null,
	SalesAmount_$ decimal(18,2) not null,
	PaymentDate date not null
	);

/*insert data into Payment table*/
Insert into Payment(
	PaymentID, P_OrderID, P_CustomerID, CreditCardType, SalesAmount_$, PaymentDate) values
	('PY00001','O000001','C000001','DISC','365.00','1/2/2016'),
	('PY00002','O000002','C000012','MASTER','447.00','1/4/2016'),
	('PY00003','O000003','C000001','DISC','538.00','2/17/2016'),
	('PY00004','O000004','C000012','MASTER','730.00','3/31/2016'),
	('PY00005','O000005','C000011','AMEX','49.98','4/2/2016'),
	('PY00006','O000006','C000015','AMEX','99.98','4/26/2016'),
	('PY00007','O000007','C000004','VISA','538.00','5/8/2016'),
	('PY00008','O000008','C000008','AMEX','807.00','5/21/2016'),
	('PY00009','O000009','C000016','MASTER','149.00','6/5/2016'),
	('PY00010','O000010','C000009','AMEX','898.00','6/10/2016'),
	('PY00011','O000011','C000007','MASTER','149.97','6/11/2016'),
	('PY00012','O000012','C000018','VISA','79.98','6/12/2016'),
	('PY00013','O000013','C000019','AMEX','449.00','6/24/2016'),
	('PY00014','O000014','C000016','MASTER','24.99','7/3/2016'),
	('PY00015','O000015','C000011','AMEX','538.00','7/16/2016'),
	('PY00016','O000016','C000005','VISA','798.00','7/31/2016'),
	('PY00017','O000017','C000017','AMEX','730.00','8/11/2016'),
	('PY00018','O000018','C000006','MASTER','149.97','8/22/2016'),
	('PY00019','O000019','C000002','AMEX','798.00','9/1/2016'),
	('PY00020','O000020','C000015','AMEX','49.98','9/5/2016'),
	('PY00021','O000021','C000013','AMEX','119.97','9/24/2016'),
	('PY00022','O000022','C000003','MASTER','499.00','10/6/2016'),
	('PY00023','O000023','C000016','DISC','365.00','10/18/2016'),
	('PY00024','O000024','C000010','VISA','39.99','11/13/2016'),
	('PY00025','O000025','C000015','AMEX','807.00','11/18/2016'),
	('PY00026','O000026','C000014','AMEX','79.98','11/19/2016'),
	('PY00027','O000027','C000016','DISC','499.00','12/8/2016'),
	('PY00028','O000028','C000020','VISA','447.00','12/13/2016'),
	('PY00029','O000029','C000007','MASTER','269.00','12/16/2016'),
	('PY00030','O000030','C000005','VISA','998.00','12/23/2016');

/*Create OrderTable*/
	create table OrderTable (
	OrderID  varchar(50) primary key not null,
	O_CustomerID varchar(50) not null,
	ProductID varchar(50) not null,
	ShipmentID varchar(50) not null,
	VendorID varchar(50) not null,
	SalesQuantity integer not null,
	SalesPrice_$ decimal(18,2) not null,
	SalesDate date not null,
	ShipmentDate date not null
	);

/*input data into OrderTable*/
	insert into OrderTable (
	OrderID, O_CustomerID, ProductID, ShipmentID, VendorID, SalesQuantity, SalesPrice_$, SalesDate, ShipmentDate) values
	('O000001','C000001','P00010','S00001','V00013','1','365.00','1/2/2016','1/12/2016'),
	('O000002','C000012','P00006','S00002','V00013','3','447.00','1/4/2016','1/14/2016'),
	('O000003','C000001','P00002','S00003','V00005','2','538.00','2/17/2016','2/27/2016'),
	('O000004','C000012','P00010','S00004','V00011','2','730.00','3/31/2016','4/10/2016'),
	('O000005','C000011','P00004','S00005','V00009','2','49.98','4/2/2016','4/12/2016'),
	('O000006','C000015','P00003','S00006','V00006','2','99.98','4/26/2016','5/6/2016'),
	('O000007','C000004','P00002','S00007','V00006','2','538.00','5/8/2016','5/18/2016'),
	('O000008','C000008','P00002','S00008','V00005','3','807.00','5/21/2016','5/31/2016'),
	('O000009','C000016','P00006','S00009','V00010','1','149.00','6/5/2016','6/15/2016'),
	('O000010','C000009','P00005','S00010','V00015','2','898.00','6/10/2016','6/20/2016'),
	('O000011','C000007','P00003','S00011','V00013','3','149.97','6/11/2016','6/21/2016'),
	('O000012','C000018','P00007','S00012','V00014','2','79.98','6/12/2016','6/22/2016'),
	('O000013','C000019','P00005','S00013','V00012','1','449.00','6/24/2016','7/4/2016'),
	('O000014','C000016','P00004','S00014','V00013','1','24.99','7/3/2016','7/13/2016'),
	('O000015','C000011','P00002','S00015','V00003','2','538.00','7/16/2016','7/26/2016'),
	('O000016','C000005','P00008','S00016','V00014','2','798.00','7/31/2016','8/10/2016'),
	('O000017','C000017','P00010','S00017','V00002','2','730.00','8/11/2016','8/21/2016'),
	('O000018','C000006','P00003','S00018','V00005','3','149.97','8/22/2016','9/1/2016'),
	('O000019','C000002','P00008','S00019','V00015','2','798.00','9/1/2016','9/11/2016'),
	('O000020','C000015','P00004','S00020','V00004','2','49.98','9/5/2016','9/15/2016'),
	('O000021','C000013','P00007','S00021','V00011','3','119.97','9/24/2016','10/4/2016'),
	('O000022','C000003','P00001','S00022','V00005','1','499.00','10/6/2016','10/16/2016'),
	('O000023','C000016','P00010','S00023','V00010','1','365.00','10/18/2016','10/28/2016'),
	('O000024','C000010','P00007','S00024','V00001','1','39.99','11/13/2016','11/23/2016'),
	('O000025','C000015','P00002','S00025','V00005','3','807.00','11/18/2016','11/28/2016'),
	('O000026','C000014','P00007','S00026','V00008','2','79.98','11/19/2016','11/29/2016'),
	('O000027','C000016','P00001','S00027','V00007','1','499.00','12/8/2016','12/18/2016'),
	('O000028','C000020','P00006','S00028','V00011','3','447.00','12/13/2016','12/23/2016'),
	('O000029','C000007','P00002','S00029','V00004','1','269.00','12/16/2016','12/26/2016'),
	('O000030','C000005','P00001','S00030','V00006','2','998.00','12/23/2016','	1/2/2017');

/*Create Shipment table*/
	Create table Shipment (
	ShipmentID varchar(50) primary key not null,
	S_OrderID  varchar(50) not null,
	S_CustomerID varchar(50) not null,
	VendorID varchar(50) not null,
	ShipmentCounty varchar(50) not null,
	ShipmentState varchar(50) not null,
	ShipmentCity varchar(50) not null,
	PostalCode varchar(50) not null,
	ShipmentAddressLine varchar(50) not null,
	ScheduledShippingDate date not null
	);

/*input data into Shipment table*/
	insert into Shipment (
	ShipmentID, S_OrderID, S_CustomerID, VendorID, ShipmentCounty, ShipmentState, ShipmentCity, PostalCode, ShipmentAddressLine, ScheduledShippingDate) values
	('S00001','O000001','C000001','V00013','Canada','Québec','Matagami','N2M','32414 Pankratz Crossing','1/12/2016'),
	('S00002','O000002','C000012','V00013','United States','California','San Jose','95113','56140 Laurel Way','1/14/2016'),
	('S00003','O000003','C000001','V00005','Canada','Québec','Matagami','N2M','32414 Pankratz Crossing','2/27/2016'),
	('S00004','O000004','C000012','V00011','United States','California','San Jose','95114','56140 Laurel Way','4/10/2016'),
	('S00005','O000005','C000011','V00009','United States','Missouri','Saint Louis','63143','05 Mccormick Junction','4/12/2016'),
	('S00006','O000006','C000015','V00006','United States','Florida','Clearwater','34629','52 Westerfield Parkway','5/6/2016'),
	('S00007','O000007','C000004','V00006','United States','Illinois','Chicago','60657','499 Pankratz Crossing','5/18/2016'),
	('S00008','O000008','C000008','V00005','Canada','Newfoundland and Labrador','Grand Bank','E8K','4 Darwin Court','5/31/2016'),
	('S00009','O000009','C000016','V00010','Canada','Ontario','Owen Sound','N4K','1 Summerview Junction','6/15/2016'),
	('S00010','O000010','C000009','V00015','Canada','Alberta','Stony Plain','T7Z','0818 Heath Trail','6/20/2016'),
	('S00011','O000011','C000007','V00013','United States','Georgia','Atlanta','31119','14 Farwell Plaza','6/21/2016'),
	('S00012','O000012','C000018','V00014','United States','Texas','El Paso','88546','6 Ohio Trail','6/22/2016'),
	('S00013','O000013','C000019','V00012','Canada','Saskatchewan','Kamsack','R2J','508 Shelley Avenue','7/4/2016'),
	('S00014','O000014','C000016','V00013','Canada','Ontario','Owen Sound','N4K','1 Summerview Junction','7/13/2016'),
	('S00015','O000015','C000011','V00003','United States','Missouri','Saint Louis','63144','6 Mccormick Junction','7/26/2016'),
	('S00016','O000016','C000005','V00014','United States','Maryland','Baltimore','21281','0887 Kinsman Alley','8/10/2016'),
	('S00017','O000017','C000017','V00002','United States','Missouri','Lees Summit','64082','15 Mendota Street','8/21/2016'),
	('S00018','O000018','C000006','V00005','United States','New York','New York City','10009','4 Muir Hill','9/1/2016'),
	('S00019','O000019','C000002','V00015','Canada','Alberta','Coaldale','T1M','96597 Green Ridge Circle','9/11/2016'),
	('S00020','O000020','C000015','V00004','United States','Florida','Clearwater','34630','52 Westerfield Parkway','9/15/2016'),
	('S00021','O000021','C000013','V00011','Canada','British Columbia','Metchosin','V9C','6916 East Park','10/4/2016'),
	('S00022','O000022','C000003','V00005','United States','Illinois','Chicago','60686','9136 Sundown Park','10/16/2016'),
	('S00023','O000023','C000016','V00010','Canada','Ontario','Owen Sound','N4K','1 Summerview Junction','10/28/2016'),
	('S00024','O000024','C000010','V00001','Canada','British Columbia','Prince Rupert','V8J','322 Cody Park','11/23/2016'),
	('S00025','O000025','C000015','V00005','United States','Florida','Clearwater','34631','52 Westerfield Parkway','11/28/2016'),
	('S00026','O000026','C000014','V00008','United States','Texas','Spring','77386','3 Superior Junction','11/29/2016'),
	('S00027','O000027','C000016','V00007','Canada','Ontario','Owen Sound','N4K','1 Summerview Junction','12/18/2016'),
	('S00028','O000028','C000020','V00011','United States','Washington','Seattle','98115','3385 Porter Court','12/23/2016'),
	('S00029','O000029','C000007','V00004','United States','Georgia','Atlanta','31120','14 Farwell Plaza','12/26/2016'),
	('S00030','O000030','C000005','V00006','United States','Maryland','Baltimore','21282','888 Kinsman Alley','1/2/2017');


/*Create Vendor table*/
	Create table Vendor (
	VendorID varchar(50) primary key not null,
	VendorName varchar(50) not null,
	VendorCounty varchar(50) not null,
	VendorStates varchar(50) not null,
	VendorCity varchar(50) not null,
	VendorPostalCode varchar(50) not null,
	VendorAddress varchar(100) not null
	);

/*Inter data into Vendor table */
	insert into Vendor(
	VendorID, VendorName, VendorCounty, VendorStates, VendorCity, VendorPostalCode, VendorAddress) values
	('V00001','Ikea-Tempe','USA','Arizona','Tempe','85284','2110 IKEA Way'),
	('V00002','Ikea - Burbank','USA','California','Burbank','91502','600 N. San Fernando Blvd.'),
	('V00003','Ikea - Carson','USA','California','Carson','90746','20700 South Avalon Blvd.'),
	('V00004','Ikea - Costa Mesa','USA','California','Costa Mesa','92626','1475 South Coast Drive'),
	('V00005','Ikea - Covina','USA','California','Covina','91723','848 South Barranca Avenue'),
	('V00006','Ikea - East Palo Alto','USA','California','East Palo Alto','94303','1700 E.Bayshore Rd.'),
	('V00007','Ikea - Emeryville','USA','California','Emeryville','94608','4400 Shellmound St.'),
	('V00008','Ikea - San Diego','USA','California','San Diego','92108','2149 Fenton Parkway'),
	('V00009','Ikea - West Sacramento','USA','California','West Sacramento','95605','700 IKEA Court'),
	('V00010','Ikea-Centennial','USA','	Colorado','Centennial','80112','9800 E. IKEA Way'),
	('V00011','Ikea-New Haven','USA','Connecticut','New Haven','06511','450 Sargent Dr'),
	('V00012','Ikea-Atlanta','USA','Georgia','Atlanta','30363','441 16th Street'),
	('V00013','Ikea - Baltimore','USA','Maryland','Baltimore','21236','8352 Honeygo Blvd.'),
	('V00014','Ikea-College Park','USA','Maryland','College Park','20740','10100 Baltimore Ave.'),
	('V00015','Ikea-Stoughton','USA','Massachusetts','Stoughton','02072','1 IKEA Way');


/* Create the relationship between tables*/
Alter table Product 
	ADD CONSTRAINT FK_Product_ProductCategory
	FOREIGN KEY (ProductCategoryID) 
	References ProductCategory(ProductCategoryID);
Alter table Payment
	ADD CONSTRAINT FK_Payment_Order
	FOREIGN KEY (P_OrderID)
	References OrderTable(OrderID);
Alter table OrderTable
	ADD CONSTRAINT FK_Order_Customer
	FOREIGN KEY (O_CustomerID)
	references Customer(CustomerID);
Alter table OrderTable
	ADD CONSTRAINT FK_Order_Product
	FOREIGN KEY (ProductID)
	references Product(ProductID);
Alter table OrderTable
	ADD CONSTRAINT FK_Order_Shipment
	FOREIGN KEY (ShipmentID)
	references Shipment(ShipmentID);
Alter table Shipment
	ADD CONSTRAINT FK_Shipment_Customer
	FOREIGN KEY (S_CustomerID)
	references Customer(CustomerID);
Alter table Shipment
	ADD CONSTRAINT FK_Shipment_Order
	FOREIGN KEY (S_OrderID)
	references OrderTable(OrderID);
Alter table Shipment
	ADD CONSTRAINT FK_Shipment_Vendor
	FOREIGN KEY (VendorID)
	references Vendor(VendorID);