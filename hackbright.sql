PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE Students (
first_name VARCHAR(30)
,
last_name VARCHAR(30),
github VARCHAR(30)
);
INSERT INTO "Students" VALUES('Jane','Hacker','jhacks');
INSERT INTO "Students" VALUES('Sarah','Developer','sdevelops');
CREATE TABLE Projects (
id INTEGER PRIMARY KEY AUTOINCREMENT,
title VARCHAR(30),
description TEXT,
max_grade INTEGER);
INSERT INTO "Projects" VALUES(1,'Blockly','Programmatic Logic Puzzle Game',10);
INSERT INTO "Projects" VALUES(2,'Markov','Tweets generated from Markov chains',50);
INSERT INTO "Projects" VALUES(5,'Melon Stuff','Things Mel Asked Us To Do',100);
INSERT INTO "Projects" VALUES(6,'Coffee-shop','Using Javascript',100);
INSERT INTO "Projects" VALUES(7,'Madlibs','Using Javascript, CSS, and Flask, a wesbite of funny fill-ins was built',20);
CREATE TABLE Grades (
student_github VARCHAR(30),
project_title VARCHAR(30),
grade INTEGER
);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('Projects',7);
COMMIT;
