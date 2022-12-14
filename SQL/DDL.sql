create table AUTHOR(
	ID char(3) NOT NULL,
	Fname varchar(20) NOT NULL,
	Lname varchar(20) NOT NULL,
	primary key(ID)
);

create table WRITES(
	ISBN char(14) NOT NULL,		
	AuthorID char(3) NOT NULL,
	primary key(ISBN)	
);

create table Books(
	ISBN char(14) NOT NULL,
	BookName varchar(500) NOT NULL,
	Pages INT,
	Price numeric(4,2) NOT NULL,
	Quantity INT NOT NULL,
	PubName varChar(50) NOT NULL,
	primary key(ISBN)
);

create table genBook(
	ISBN char(14) NOT NULL,
	Genre varchar(30) NOT NULL,
	primary key(ISBN, Genre)
);

create table publishers(
	Name varchar(50) NOT NULL,
	Email varchar(100) NOT NULL,
	PhoneNumber char(10),
	BankAccount INT,
	primary key(Name)
);

create table billing(
	ID char(6) NOT NULL,
	Fname varchar(20),
	Lname varchar(30),
	CardNumber char(16) NOT NULL,
	SecurityNumber char(3) NOT NULL,
	ExpirationDate char(7) NOT NULL,
	primary key(ID)
);

create table Address(
	ID char(6) NOT NULL,
	Street varchar(100) NOT NULL,
	PostalCode char(6) NOT NULL,
	City varchar(50) NOT NULL,
	Country varchar(20) NOT NULL,
	primary key(ID)
);

create table users(
	ID char(3) NOT NULL,
	Username varchar(20) UNIQUE NOT NULL,
	Password varchar(30) NOT NULL,
	Email varchar(50) UNIQUE NOT NULL,
	BillingID char(6),
	AddressID char(6),
	Role varchar(12) NOT NULL,
	primary key(ID)
);

create table orders(
	OrderNum char(10) NOT NULL,
	UserID char(3) NOT NULL,
	BillingID char(6) NOT NULL,
	AddressID char(6) NOT NULL,
	TrackingNumber char(12) NOT NULL,
	DeliveryStatus varchar(10) NOT NULL,
	primary key(OrderNum)
);

create table ShoppingCart(
	ID char(5) NOT NULL,
	UserID char(3) NOT NULL,
	ISBN char(14) NOT NULL,
	Quantity INT NOT NULL,
	Sold bool NOT NULL,
	primary key(ID)
);

ALTER TABLE WRITES add foreign key (ISBN) references BOOKS(ISBN);
ALTER TABLE WRITES add foreign key (AuthorID) references AUTHOR(ID);
ALTER TABLE BOOKS add foreign key (PubName) references Publishers(Name);
ALTER TABLE GENBOOK add foreign key (ISBN) references BOOKS(ISBN);
ALTER TABLE USERS add foreign key (BillingID) references BILLING(ID);
ALTER TABLE USERS add foreign key (AddressID) references ADDRESS(ID);
ALTER TABLE ORDERS add foreign key (BillingID) references BILLING(ID);
ALTER TABLE ORDERS add foreign key (AddressID) references ADDRESS(ID);
ALTER TABLE SHOPPINGCART add foreign key (UserID) references USERS(ID);
ALTER TABLE SHOPPINGCART add foreign key (ISBN) references BOOKS(ISBN); 