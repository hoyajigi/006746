CREATE TABLE types (typeId varchar(36) NOT NULL,name varchar(45) NOT NULL,description varchar(255) DEFAULT NULL,extension varchar(10) DEFAULT NULL,PRIMARY KEY (typeId));
CREATE TABLE documents (documentId varchar(36) NOT NULL,name varchar(255) NOT NULL,location varchar(600) NOT NULL,description varchar(600),typeId varchar(36) NOT NULL,created datetime NOT NULL,modified datetime NOT NULL,PRIMARY KEY (documentId),CONSTRAINT documentType FOREIGN KEY (typeId) REFERENCES types (typeId));