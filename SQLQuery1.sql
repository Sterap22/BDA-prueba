create database bdaPrueba
use bdaPrueba

create table usuarioInfo(
id int identity(1,1) primary key,
nombre varchar(20),
apellido varchar(20),
correo varchar(max),
clave varchar(max),
fechaCreacion datetime,
vigente bit
);

create table city(
code int identity(1,1) primary key,
descriptionC varchar(20)
);

create table seller(
code int identity(1,1) primary key,
names varchar(20),
last_name varchar(20),
document varchar(max),
city_id int,
vigente bit
FOREIGN KEY (city_id) REFERENCES city(code),
);

create table actions(
id int identity(1,1) primary key,
descriptionA varchar(20)
);

create table history(
id int identity(1,1) primary key,
code_seller int,
code_use int,
code_action int,
FOREIGN KEY (code_seller) REFERENCES seller(code),
FOREIGN KEY (code_use) REFERENCES usuarioInfo(id),
FOREIGN KEY (code_action) REFERENCES actions(id),
);
------insert ciudad
INSERT INTO [dbo].[city]
           ([descriptionC])
     VALUES
           ('Bogota'),('Cali')
-----Inser usuario
GO

INSERT INTO [dbo].[seller]
           ([names]
           ,[last_name]
           ,[document]
           ,[city_id]
           ,[vigente])
     VALUES
           ('Juan','Polanco','111111111',1,1),('Jessica','Reyes','222222222',2,1),
		   ('Maria','Paz','222222222',1,1),('Luna','Monrroy','111111111',1,1)
GO