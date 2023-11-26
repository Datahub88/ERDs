drop database Ahsanz_PetStore;

create database Ahsanz_PetStore;
use Ahsanz_petstore;
/* Let's create an Employee Table */
create table Employee(
   eEmpID smallint(4) unsigned unique not null auto_increment,
   eFN varchar(25), 
   eLN varchar(25), 
   eStreet varchar(35),
   eCity varchar(30), 
   eState varchar(2),
   eZip varchar(5),
   ePhone varchar(10),
   eSalary decimal(8,2),
   PRIMARY KEY(eEmpID)
);
/* Let's create a Customer Table */
create table Customer(
   cID smallint(4) unsigned unique not null auto_increment,
   cFN varchar(25), 
   cLN varchar(25), 
   cStreet varchar(35),
   cCity varchar(30), 
   cState varchar(2),
   cZip varchar(5),
   cEmail varchar(50),
   PRIMARY KEY(cID)
); 
/* Let's create an Sale Table */
CREATE TABLE Sale(
   sID smallint(4) unsigned unique not null auto_increment,
   sDate Date,
   sClerkID smallint(4) unsigned not null,
   sCustID smallint(4) unsigned not null,
   sTotal decimal(8,2),
   PRIMARY KEY(sID)
);
/* Let's create an SalesItems Table */
CREATE TABLE SaleItems(
   sID smallint(4) unsigned unique not null,
   SaleItem smallint(4) unsigned unique not null,
   PRIMARY KEY(sID)
);
/* Let's create an Pets Table */
CREATE TABLE Pets(
   pID smallint(4) unsigned unique not null,
   pName varchar(25),
   pBreed varchar(25),
   pVac char(1),
   pFixed char(1),
   pDOB date,
   pPrice decimal(8,2),
   PRIMARY KEY(pID)
);
/* Let's create an Merchandise Table */
CREATE TABLE Merchandise (
   mID smallint(4) unsigned unique not null,
   mBrand varchar(30),
   mDesc varchar(50),
   mPrice decimal(8,2),
   PRIMARY KEY(mID)
);
