CREATE TABLE Person(
   ID_person VARCHAR(50),
   Last_name VARCHAR(50),
   First_name VARCHAR(50),
   City VARCHAR(50),
   Budget INT,
   Term VARCHAR(50),
   PRIMARY KEY(ID_person)
);

CREATE TABLE Agency(
   ID_agency VARCHAR(50),
   Average_price INT,
   City VARCHAR(50),
   PRIMARY KEY(ID_agency)
);

CREATE TABLE Car(
   ID_voiture VARCHAR(50),
   Marque VARCHAR(50),
   Color VARCHAR(50),
   Years DATE,
   Availablity VARCHAR(50),
   Price INT,
   ID_person VARCHAR(50),
   ID_agency VARCHAR(50) NOT NULL,
   PRIMARY KEY(ID_voiture),
   FOREIGN KEY(ID_person) REFERENCES Person(ID_person),
   FOREIGN KEY(ID_agency) REFERENCES Agency(ID_agency)
);

CREATE TABLE ASSOCIATE(
   ID_person VARCHAR(50),
   ID_agency VARCHAR(50),
   PRIMARY KEY(ID_person, ID_agency),
   FOREIGN KEY(ID_person) REFERENCES Person(ID_person),
   FOREIGN KEY(ID_agency) REFERENCES Agency(ID_agency)
);
