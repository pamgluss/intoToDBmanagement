INSERT INTO CUSTOMERS(fname, lname, caddress, account)
VALUES
	('Davis',     'Sean',     '168 E. Lakeshore Dr, Santa Cruz, CA 95060', 	   4),
	('Scott',     'Tiger',    '73 Buckingham Ave, Santa Cruz, CA',  			   6),
	('Sidney',   'Palmer',    '2 SE. Central Street, Mountain View, PA 15301',     5),
	('Vandal',   'Gothe',     '831 Pearl Drive, Mountain View, PA 15301',  		   3),
	('Rip',      'Hunter',    '7910 Miller St., Mountain View, PA 15301', 		   2),
	('Laza',     'Quantica',  '221 James Street, Mountain View, PA 15301',  	   2);

INSERT INTO PRODUCTS(prodname, category)
VALUES
	('MacBook',  	  'PC'),
	('SimPC',  		  'PC'),
	('TinyMac', 	  'PC'),
	('MegaPC',  	  'PC'),
	('Ipad',  		  'Mobile'),
	('Oculus',  	  'VR'),
	('Iphone',  	  'Mobile'),
	('ShortCircut',   'Electricity'),
	('TinyCircut',    'Electricity');

INSERT INTO SUPPLIERS
VALUES
('Viet Trinh',  	 '9054 Orchard St, San Jose, CA 95732',  			   'Apple'),
('Derek Sphered',  	 '8235 West Pilgrim Ave., Council Bluffs, IA 51501',    'Google'),
('Derek Ng', 		  '8235 West Pilgrim Ave, Mountain View, PA 15102',  	 'Apple'),
('Lois Lane',  		 '573 4th Dr., Piscataway, NJ 08854',  				  'Pixel'),
('Lucy Lane',		  '73 Buckingham Ave, Mountain View, PA 15102',  	   'Oracle'),
('Luis Dean',  	  '573 4th Dr., Piscataway, NJ 08854',  				  'Oracle'),
('Davis Lumber',	  '586 Stonybrook Ave, Mountain View, PA 15102',  	   'Amazon');

INSERT INTO orders
VALUES
('Scott',    'Tiger',    'Viet Trinh',  	  'MacBook',	  1),
('Scott',    'Tiger',    'Viet Trinh',  	  'SimPC',  	  4),
('Scott',    'Tiger',    'Lois Lane',  		  'Iphone',  	  4),
('Scott',    'Tiger',    'Derek Sphered',	  'Ipad',  	  3),
('Davis',     'Sean',    'Derek Sphered',  	  'MegaPC',  	  5),
('Davis',     'Sean',    'Luis Dean',  		  'Iphone',  	  3),
('Davis',     'Sean',    'Derek Ng',  		  'TinyMac',    6),
('Sidney',   'Palmer',   'Davis Lumber',  	  'MegaPC',  	  5),
('Vandal',   'Gothe',    'Lois Lane',  		  'Iphone',  	  5),
('Vandal',   'Gothe',    'Derek Sphered',  	  'Oculus',  	  4),
('Rip',      'Hunter',   'Lois Lane',  		  'Iphone',  	  7),
('Rip',      'Hunter',   'Luis Dean',  		  'MegaPC',  	  2);

INSERT INTO offers
VALUES
('Viet Trinh',  	  'MacBook',  	  1500),
('Viet Trinh',  	  'SimPC',  		  500),
('Viet Trinh',  	  'TinyMac', 		  400),
('Derek Sphered',  	  'MegaPC',  		  500),
('Derek Sphered',  	  'Ipad',  		  400),
('Derek Sphered',  	  'Oculus',  		  1000),
('Derek Ng',  		  'MegaPC',  		  6000),
('Derek Ng',  		  'TinyMac',  	  600),
('Lois Lane', 		  'MegaPC',  		  1000),
('Lois Lane',  		  'Iphone',  		  700),
('Lucy Lane',  		  'MegaPC',  		  50),
('Luis Dean',  		  'MegaPC',  		  2000),
('Luis Dean',  		  'Iphone',  		  800),
('Davis Lumber',  	  'MegaPC',  		  500),
('Davis Lumber',  	  'ShortCircut',    50),
('Davis Lumber',  	  'TinyCircut',  	  450),
('Davis Lumber',  	  'MacBook',  	  2000);