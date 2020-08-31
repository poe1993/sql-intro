
ERD THURSDAY HOMEWORK

CREATE TABLE "Album" (
"Id" SERIAL PRIMARY KEY,
"Title" TEXT NOT NULL,
"IsExplicit" BOOL,
"ReleaseDate" DATE,
);

CREATE TABLE "Bands" (
"Id" SERIAL PRIMARY KEY,
"Name" TEXT NOT NULL,
"CountryOfOrigin" TEXT NOT NULL,
"NumberofMembers" INT,
"Website" TEXT,
"Style" Text,
"IsSigned" BOOL,
"ContactName" TEXT,
"ContactPhoneNumber" TEXT
);

INSERT INTO "Album" ("Title", "IsExplicit", "ReleaseDate")  
 VALUES('Near Dark', False,'2014-08-23');




ALTER TABLE "Album" ADD COLUMN "BandId" INTEGER NULL REFERENCES "Bands"("Id");


1. INSERT INTO "Bands" ("Name", "CountryOfOrigin","NumberofMembers", "Website", "Style", "IsSigned", "ContactName", "ContactPhoneNum
ber")
VALUES('Dance With the Dead' ,'USA', 2, 'https://dancewiththedead.bandcamp.com'
,'Synthwave', False, 'Eric Poe', '813-943-8123');
2. SELECT * FROM "Bands"
3.INSERT INTO "Album" ("Title", "IsExplicit", "ReleaseDate")  
 VALUES('Near Dark', False,'2014-08-23');
  UPDATE "Album"
  SET "BandId" = 1
  WHERE "Title" = 'Near Dark';
4.UPDATE "Bands" SET "IsSigned" = false WHERE "Name" = 'Dance With the Dead';
5.UPDATE "Bands" SET "IsSigned" = true WHERE "Name" = 'Dance With the Dead';
6.SELECT "Albums"."Title"
FROM "Albums"
JOIN "Bands" ON "Albums"."BandId" = "Bands"."Id"
WHERE "Bands"."Name" = 'Dance With the Dead';
7.SELECT "Albums"."Title"
FROM "Albums"
ORDER BY "Albums"."ReleaseDate";
8.SELECT "Bands"."Name"
FROM "Bands"
WHERE "Bands"."IsSigned" = 'true';
9.SELECT "Bands"."Name"
FROM "Bands"
WHERE "Bands"."IsSigned" = 'false';



