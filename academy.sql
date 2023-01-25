DROP TABLE IF EXISTS "Departments";

CREATE TABLE "Departments" (
	"id"	INTEGER NOT NULL UNIQUE,
	"Name"	TEXT NOT NULL UNIQUE,
	"Financing"	REAL NOT NULL DEFAULT 0,
	PRIMARY KEY("id" AUTOINCREMENT)
);

DROP TABLE IF EXISTS "Faculties";

CREATE TABLE "Faculties" (
	"id"	INTEGER NOT NULL UNIQUE,
	"Name"	TEXT NOT NULL UNIQUE,
	"Dean"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);

DROP TABLE IF EXISTS "Groups";

CREATE TABLE "Groups" (
	"id"	INTEGER NOT NULL UNIQUE,
	"Name"	TEXT NOT NULL UNIQUE,
	"Year"	INTEGER NOT NULL,
	"Rating"	INTEGER NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);

DROP TABLE IF EXISTS "Teachers";

CREATE TABLE "Teachers" (
	"id"	INTEGER NOT NULL UNIQUE,
	"Name"	TEXT NOT NULL,
	"Surname"	TEXT NOT NULL,
	"Position"	TEXT NOT NULL,
	"Salary"	REAL NOT NULL,
	"EmploymentDate"	TEXT NOT NULL,
	"Premium"	REAL NOT NULL DEFAULT 0,
	"IsAssistant"	INTEGER NOT NULL DEFAULT 0,
	"IsProfessor"	INTEGER NOT NULL DEFAULT 0,
	PRIMARY KEY("id" AUTOINCREMENT)
);

INSERT INTO "Departments" (Name, Financing) VALUES ("Хімічної інженерії", 34233);
INSERT INTO "Departments" (Name, Financing) VALUES ("Комп'ютерних науки", 13241);
INSERT INTO "Departments" (Name, Financing) VALUES ("Інженерії", 14354);
INSERT INTO "Departments" (Name, Financing) VALUES ("Промислової інженерії", 56534);
INSERT INTO "Departments" (Name, Financing) VALUES ("Математики", 23453);
INSERT INTO "Departments" (Name, Financing) VALUES ("Медицини", 11534);
INSERT INTO "Departments" (Name, Financing) VALUES ("Физические науки", 23455);
INSERT INTO "Departments" (Name, Financing) VALUES ("Техника и технологии", 32435);

INSERT INTO "Faculties" (Name, Dean) VALUES ( "Клінічна медицина", "Ефимов Святослав");
INSERT INTO "Faculties" (Name, Dean) VALUES ( "Комп'ютерних науки", "Николаев Матвей");
INSERT INTO "Faculties" (Name, Dean) VALUES ( "Гуманітарні та соціальні науки", "Лукьянов Константин");
INSERT INTO "Faculties" (Name, Dean) VALUES ( "Фізичні науки", "Иванов Илья");
INSERT INTO "Faculties" (Name, Dean) VALUES ( "Біологічні науки", "Гуляев Андрей");
INSERT INTO "Faculties" (Name, Dean) VALUES ( "Физические науки", "Гордей Федецкий");
INSERT INTO "Faculties" (Name, Dean) VALUES ( "Промислової інженерії", "Лукьянов Константин");

INSERT INTO "Groups" (Name, Year, Rating) VALUES ("Компьютерных наук", 3, 1);
INSERT INTO "Groups" (Name, Year, Rating) VALUES ("Инженерний", 2, 9);
INSERT INTO "Groups" (Name, Year, Rating) VALUES ("Хімічної інженерії", 3, 2);
INSERT INTO "Groups" (Name, Year, Rating) VALUES ("Медицини", 5, 5);
INSERT INTO "Groups" (Name, Year, Rating) VALUES ("Фізичні науки", 4, 3);
INSERT INTO "Groups" (Name, Year, Rating) VALUES ("Техника и технологии", 4, 6);

INSERT INTO "Teachers" VALUES (1, "Платон", "Лопатин", "Профессор", 24324, "2013-10-13", 1423, 0, 1);
INSERT INTO "Teachers" VALUES (2, "Адам", "  Жданов", "Ассистент", 32123, "2027-09-14", 2345, 1, 0);
INSERT INTO "Teachers" VALUES (3, "Фёдор", "Степанов", "Ассистент", 41323, "2013-03-23", 2452, 1, 0);
INSERT INTO "Teachers" VALUES (4, "Степан", "Иванов", "Ассистент", 32421, "2017-05-20", 5423, 1, 0);
INSERT INTO "Teachers" VALUES (5, "Михаил", "Савельев", "Профессор", 43213, "2013-09-21", 1245, 0, 1);
INSERT INTO "Teachers" VALUES (6, "Гордей", "Федецкий", "Ассистент", 13521, "2017-07-01", 2453, 1, 1);
INSERT INTO "Teachers" VALUES (7, "Иван", "Попов", "Профессор", 14630, "2013-03-17", 2421, 0, 1);
INSERT INTO "Teachers" VALUES (8, "Яков", "Алексеев", "Ассистент", 4000, "2017-05-06", 1245, 1, 0);
INSERT INTO "Teachers" VALUES (9, "Евгений", "Коноплянка", "Профессор", 14000, "2013-02-03", 1241, 0, 1);
INSERT INTO "Teachers" VALUES (10, "Святослав", "Смирнов", "Профессор", 9500, "2013-10-30", 653, 0, 1);
INSERT INTO "Teachers" VALUES (11, "Никита", "Селезнев", "Профессор", 13500, "2012-11-02", 2412, 0, 1);
INSERT INTO "Teachers" VALUES (12, "Елисей", "Дьяконов", "Ассистент", 3000, "2014-07-11", 2144, 1, 0);


-- №1
SELECT * 
FROM "Departments" 
ORDER BY id DESC;

SELECT * 
FROM "Departments" 
ORDER BY "Name"; 

-- №2
SELECT Groups.Name, Groups.Rating 
FROM "Groups";

SELECT Groups.Name, Groups.Rating 
FROM "Groups" 
ORDER BY Rating DESC;

SELECT Groups.Name, Groups.Rating 
FROM "Groups" 
ORDER BY "Rating"
LIMIT 3;

-- №5
SELECT Teachers.Surname
FROM "Teachers" 
WHERE IsProfessor == 1 AND Salary >1050;

-- №6
SELECT Departments.Name
FROM "Departments" 
WHERE Financing >= 11600
AND Financing <=25000 
ORDER BY "Financing";

-- №7
SELECT Faculties.Name
FROM "Faculties" 
WHERE Name != "Комп'ютерних науки";