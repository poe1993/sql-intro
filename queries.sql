CREATE TABLE "Employees" (
CompanyDatabase(# FullName TEXT NOT NULL,
CompanyDatabase(# Salary INT,
CompanyDatabase(# JobPosition TEXT,
CompanyDatabase(# PhoneExtension PHONE NUMBER,
CompanyDatabase(# IsPartTime BOOL,
CompanyDatabase(# );


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
 
