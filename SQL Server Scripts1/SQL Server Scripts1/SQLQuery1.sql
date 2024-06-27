
CREATE TABLE tecnicos (
	id INT NOT NULL IDENTITY(1,1),
	nombre VARCHAR(50) NOT NULL,
	codigo VARCHAR(50) NOT NULL,
	sueldo BIGINT NOT NULL,
	master BIT  NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE sucursales (
	id INT NOT NULL IDENTITY(1,1),
	nombre VARCHAR(50) NOT NULL,
	codigo VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE tecsucu (
	id INT NOT NULL IDENTITY(1,1),
	tecnico INT NOT NULL,
	sucursal INT NOT NULL,	
	PRIMARY KEY (id),
	CONSTRAINT FK_tecnico FOREIGN KEY (tecnico) REFERENCES tecnicos(id),
	CONSTRAINT FK_sucursal FOREIGN KEY (sucursal) REFERENCES sucursales(id)
);

CREATE TABLE tecelement (
	id INT NOT NULL IDENTITY(1,1),
	tecnico INT NOT NULL,
	element INT NOT NULL,
	cantidad BIGINT NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT FK_tecnico2 FOREIGN KEY (tecnico) REFERENCES tecnicos(id),
	CONSTRAINT FK_element FOREIGN KEY (element) REFERENCES element(id)
);

CREATE TABLE element (
	id INT NOT NULL IDENTITY(1,1),
	nombre VARCHAR(50) NOT NULL,
	codigo VARCHAR(50) NOT NULL,
	cantidad BIGINT NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO tecnicos VALUES ('Pepito Perez' ,'1098RAX' ,20000000 ,1);
INSERT INTO tecnicos VALUES ('Juanito Alcachofa' ,'1098DAT' ,10000000 ,0);
INSERT INTO element VALUES ('Elemento 1' ,'ELM001',100);
INSERT INTO element VALUES ('Elemento 2' ,'ELM002',70);
INSERT INTO element VALUES ('Elemento 3' ,'ELM003',100);
INSERT INTO element VALUES ('Elemento 4' ,'ELM004',50);
INSERT INTO element VALUES ('Elemento 5' ,'ELM005',50);
INSERT INTO element VALUES ('Elemento 6' ,'ELM006',60);
INSERT INTO tecelement VALUES (2 ,1 , 10);
INSERT INTO sucursales VALUES ('Principal','PRIN001');
INSERT INTO tecsucu VALUES (2 ,1);