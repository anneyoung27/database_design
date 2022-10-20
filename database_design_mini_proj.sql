-- Task 4 & 5 - Creating Database Table and Populate a Database
CREATE DATABASE myDB;

USE myDB;

CREATE TABLE Artist(
	artistID CHAR(5) CHECK(artistID LIKE 'AR[0-9][0-9][0-9]'),
	artistName VARCHAR(20) NOT NULL,
	DOB DATE NOT NULL,
	artistTitle VARCHAR(50) NOT NULL,
	PRIMARY KEY(artistID));

CREATE TABLE [Work](
	workID CHAR(5) CHECK(workID LIKE 'WK[0-9][0-9][0-9]'),
	workName VARCHAR(20) NOT NULL,
	workLink VARCHAR(50) NOT NULL,
	workDescription VARCHAR(100),
	artistID CHAR(5),
	PRIMARY KEY(workID),
	FOREIGN KEY (artistID) REFERENCES Artist(artistID) ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE Reviewer(
	reviewerID CHAR(5) CHECK(reviewerID LIKE 'RR[0-9][0-9][0-9]'),
	DOB DATE NOT NULL,
	reviewerTitle VARCHAR(50) NOT NULL,
	reviewerName VARCHAR(20) NOT NULL,
	PRIMARY KEY(reviewerID));

CREATE TABLE Review(
	reviewID CHAR(5) CHECK(reviewID LIKE 'RW[0-9][0-9][0-9]'),
	reviewComment VARCHAR(255) NOT NULL,
	reviewRating INT CHECK(reviewRating IN(1,2,3,4,5)) NOT NULL,
	reviewerID CHAR(5),
	workID CHAR(5),
	FOREIGN KEY (reviewerID) REFERENCES Reviewer(reviewerID) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (workID) REFERENCES [Work](workID) ON UPDATE CASCADE ON DELETE CASCADE);

-- Data Insertion
/* Inserting Artists*/
INSERT INTO Artist VALUES ('AR005','John Jameson','1998-02-02','Guitarist');
INSERT INTO Artist VALUES ('AR010','Elton Green','1990-03-03','Pianist');
INSERT INTO Artist VALUES ('AR003','Leonardo Richardson','1975-04-09','Painter')

/* Inserting Reviewers*/
INSERT INTO Reviewer VALUES ('RR002','1996-03-07','Critic','Marcus Delfoe')
INSERT INTO Reviewer VALUES ('RR004','1989-06-09','Critic','Henry Almanc')
INSERT INTO Reviewer VALUES ('RR006','1974-01-10','Editor','Frank Wenshov')

/* Inserting Artist's Works*/
INSERT INTO [Work] VALUES ('WK009','Guitar Solo','https://theLink.com', 'A guitar solo in D minor scale','AR005') /* The last attribute is the id of the artist in this case James Jameson */
INSERT INTO [Work] VALUES ('WK007','Fur Elise','https://theLink.com', 'Cover of Fur Elise by Beethoven','AR010')
INSERT INTO [Work] VALUES ('WK015','My Life','https://theLink.com', 'A painting that depicts my life','AR003')
INSERT INTO [Work] VALUES ('WK011','Guitar Solo 2','https://theLink.com', 'A guitar solo in C major scale','AR005')

/* Inserting Reviews*/
INSERT INTO Review VALUES ('RW001','Very Good',5,'RR002','WK009')
INSERT INTO Review VALUES ('RW002','So so',3,'RR004','WK007')
INSERT INTO Review VALUES ('RW003','Good',4,'RR004','WK015')
INSERT INTO Review VALUES ('RW004','Terrible',1,'RR006','WK011')

