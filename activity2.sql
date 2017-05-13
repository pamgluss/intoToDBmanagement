CREATE TABLE CUSTOMERS(
    Fname CHAR(30),
    Lname CHAR(30),
    CAddress CHAR(100),
    Account INT,
	PRIMARY KEY(Fname, Lname)	
);

CREATE TABLE PRODUCTS(
    Prodname CHAR(30)	PRIMARY KEY,
    Category CHAR(30)
);

CREATE TABLE SUPPLIERS(
    Sname CHAR(30)	PRIMARY KEY,
    Saddress CHAR(100),
    Chain CHAR(30)
);

CREATE TABLE orders(
    CFname CHAR(30),
    CLname CHAR(30),
    Sname CHAR(30) REFERENCES SUPPLIERS(Sname),
    Prodname CHAR(30) REFERENCES PRODUCTS(Prodname),
    quantity INT,
    FOREIGN KEY (CFname, CLname)
    REFERENCES CUSTOMERS(Fname, Lname)
);

CREATE TABLE offers(
    Sname CHAR(30) REFERENCES SUPPLIERS(Sname),
    Prodname CHAR(30) REFERENCES PRODUCTS(Prodname),
    price INT
);