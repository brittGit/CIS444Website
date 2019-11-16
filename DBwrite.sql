CREATE TABLE ROOM
(
  Building      VARCHAR(20) NOT NULL, 
  Number        INT NOT NULL,
  Floor         INT NOT NULL, 
  CONSTRAINT ROOMPK PRIMARY KEY (Building, Number, Floor)
);

CREATE TABLE PERSON
(
  ID_number     INT(9) NOT NULL,
  First_Name    VARCHAR(15) NOT NULL,
  Last_Name     VARCHAR(15) NOT NULL,
  CONSTRAINT PERSONPK PRIMARY KEY (ID_number)
);

CREATE TABLE PHONE
(
  ID_number     INT(9) NOT NULL,
  Phone_Number  VARCHAR(13) NOT NULL,
  Phone_Type    VARCHAR(5) NOT NULL,
  CONSTRAINT PHONEPK PRIMARY KEY (ID_number, Phone_Type)
);

CREATE TABLE EMAIL
(
  ID_number     INT(9) NOT NULL,
  Email_Address VARCHAR(40) NOT NULL,
  Email_Type    VARCHAR(5) NOT NULL,
  CONSTRAINT EMAILPK PRIMARY KEY (ID_number, Email_Type)
);

CREATE TABLE REPORT
(
  General_type  VARCHAR(50) NOT NULL,
  Specific_type VARCHAR(50) NOT NULL,
  Descr         VARCHAR(200) NOT NULL,
  Report_No     VARCHAR(20) NOT NULL,
  Status        VARCHAR(15) NOT NULL,
  Building      VARCHAR(20) NOT NULL,
  Room_Number   INT NOT NULL,
  Floor         INT NOT NULL,
  ID_number     INT(9) NOT NULL,
  CONSTRAINT REPORTPK PRIMARY KEY (Report_No, Building, Room_Number, Floor, ID_number)
);


ALTER TABLE PHONE 
ADD CONSTRAINT PHONEFK 
FOREIGN KEY (ID_number) REFERENCES PERSON(ID_number);


ALTER TABLE EMAIL 
ADD CONSTRAINT EMAILFK 
FOREIGN KEY (ID_number) REFERENCES PERSON(ID_number);

ALTER TABLE REPORT 
ADD CONSTRAINT REPORTFK1 
FOREIGN KEY (Building, Room_Number, Floor) REFERENCES ROOM(Building, Number, Floor);


ALTER TABLE REPORT 
ADD CONSTRAINT REPORTFK2
FOREIGN KEY (ID_number) REFERENCES PERSON(ID_number)