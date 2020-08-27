CREATE TABLE "Employees" (
FullName TEXT NOT NULL,
Salary INT,
JobPosition TEXT,
PhoneExtension TEXT,
IsPartTime  BOOL,
);


INSERT INTO "Employees"("fullname","salary","jobposition","phoneextension","isparttime") 
 Values('George Washington',5000,'CEO','1234',False);

INSERT INTO "Employees"("fullname","salary","jobposition","phoneextension","isparttime") 
 VALUES('Bugs Bunny',450,'Cook','2345', False); 

 INSERT INTO "Employees"("fullname","salary","jobposition","phoneextension","isparttime")   
  VALUES('Daffy Duck',400,'Janitor','3456',True);

INSERT INTO "Employees"("fullname","salary","jobposition","phoneextension","isparttime")  
 VALUES('Lazy Larry',500000,'Professional Slacker','4567',True);

INSERT INTO "Employees"("fullname","salary","jobposition","phoneextension","isparttime")  
 VALUES('Seth Rogan',500,'Junior Developer','5678',True); 

INSERT INTO "Employees"("fullname","salary","jobposition","phoneextension","isparttime")  
 VALUES('James Franco',600,'Junior Developer','6789',False);

 1.SELECT * FROM "Employees";

2.SELECT fullname,phoneextension  FROM "Employees" WHERE  isparttime = False; 

3. INSERT INTO "Employees"("fullname","salary","jobposition","phoneextension","isparttime")  
 Values('Porky Pig',450,'Software Developer','7890',True);

4.UPDATE "Employees" 
 SET salary = 500 
 WHERE jobposition = 'Cook'; 

 5.DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';

 6.ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);

SQL-JOIN HOMEWORK:
 
CREATE TABLE "Departments" (
 "Id" SERIAL PRIMARY KEY,
 "DepartmentName" TEXT,
 "Building" TEXT
 );

 CREATE TABLE "Products" (
 "Id" SERIAL PRIMARY KEY,
 "Price" FLOAT,
 "Name" TEXT,
 "Description" TEXT,
 "QuantityInStock" INT
 );

CREATE TABLE "Orders" (
 "Id" SERIAL PRIMARY KEY,
 "OrderNumber" TEXT,
 "DatePlaced" TIMESTAMP,
 "Email" TEXT
 );

 truncate table "Employees"

 ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INTEGER NULL REFERENCES "Departments" ("Id");

 CREATE TABLE "ProductOrders" (
 "OrderId" INTEGER NULL REFERENCES "Orders" ("Id"),
 "ProductId" INTEGER NULL REFERENCES "Products" ("Id"),
 "OrderQuantity" INT
 );

 INSERT INTO "Departments" ("DepartmentName","Building")
 VALUES ('Development','Main');
 INSERT INTO "Departments" ("DepartmentName","Building")
 VALUES ('Marketing','North');

 INSERT INTO "Employees" ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime","DepartmentId")
VALUES ('Tim Smith',40000,'Programmer','123',True,'1');

INSERT INTO "Employees" ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime","DepartmentId")
VALUES ('Barbara Ramsey',80000,'Manager','234',False,'1');

INSERT INTO "Employees" ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime","DepartmentId")
VALUES ('Tom Jones',32000,'Admin','456',True,'2');

INSERT INTO "Products" ("Price","Name","Description","QuantityInStock")
VALUES (12.45,'Widget','The Original Widget',100);

INSERT INTO "Products" ("Price","Name","Description","QuantityInStock")
VALUES (99.99,'Flowbee','Perfect for haircuts', 3);

1.
INSERT INTO "Orders" ("OrderNumber","DatePlaced","Email")
VALUES ('X529','2020-01-01 16:55:00','person@exmaple.com');
2.
INSERT INTO "ProductOrders" ("OrderId","ProductId","OrderQuantity")
VALUES (1,1,3);
3.
INSERT INTO "ProductOrders" ("OrderId","ProductId","OrderQuantity")
VALUES (1, 2, 2);
4.
SELECT "FullName" FROM "Employees" WHERE "DepartmentId" = 1;
5.
SELECT "PhoneExtension" FROM "Employees" WHERE "DepartmentId" = 1;
6.
SELECT "OrderId" FROM "ProductOrders" WHERE "ProductId" = 2;
7.
DELETE FROM "ProductOrders" WHERE "ProductId" = 2;




