--crea base de datos VEHICULOS
create database VEHICULOS

create table Usuarios(
idUsuario int identity(100,5), --consecutivo usuario
Usuario varchar(50) UNIQUE,
Clave varchar(30),
Nombre varchar(50),
Apellido varchar(50),
CONSTRAINT PK_idUsuario PRIMARY KEY (idUsuario))

create table Placas(
idPlaca int identity(1000,5), --consecutivo placa
NumPlaca varchar(6) UNIQUE,
IdUsuario int,
Monto money Default 0,
CONSTRAINT PK_idPlaca PRIMARY KEY (idPlaca),
CONSTRAINT FK_IdUsuario FOREIGN KEY (IdUsuario) REFERENCES Usuarios (idUsuario))

--PROCEDIMIENTOS ALMACENADOS USUARIOS
create procedure agregarUsuarios0
	@Usuario varchar(50),
	@Clave varchar (30),
	@Nombre varchar (50),
	@Apellido varchar (50)
	 as
	  begin
	   insert into Usuarios (Usuario, Clave, Nombre, Apellido) values (@Usuario, @clave, @Nombre, @Apellido)
	  end

	  execute agregarUsuarios0 'aa@uh.cr', 'aaaa', 'aa', 'a1'
	  execute agregarUsuarios0 'bb@uh.cr', 'bbbb', 'bb', 'b1'
	  execute agregarUsuarios0 'cc@uh.cr', 'cccc', 'cc', 'c1'

	  SELECT * FROM Usuarios

create procedure borrarUsuarios0
@idUsuario int
		as
		begin
			delete Usuarios where idUsuario = @idUsuario
		end

exec borrarUsuarios0 100

create procedure actualizarUsuarios0
	@Usuario varchar(50),
	@Clave  varchar (30),
	@Nombre varchar (50),
	@Apellido varchar (50)
	 as
	  begin
	  UPDATE Usuarios SET Clave = @Clave,
						  Nombre = @Nombre,
						  Apellido = @Apellido
						  WHERE Usuario = @Usuario
	  end

execute actualizarUsuarios0 "aa@uh.cr", "XXXX", "XX", "X1"


--PROCEDIMIENTOS ALMACENADOS PLACAS
create procedure agregarPlacas0
	@NumPlaca varchar(6),
	@IdUsuario int,
	@Monto money
	 as
	  begin
	   insert into Placas (NumPlaca, IdUsuario, Monto) values (@NumPlaca, @IdUsuario, @Monto)
	  end

	  execute agregarPlacas0 'AAA111', 100, 100000
	  execute agregarPlacas0 'BBB222', 105, 200000
	  execute agregarPlacas0 'CCC333', 110, 100000
	  execute agregarPlacas0 'DDD444', 110, 300000
	  execute agregarPlacas0 'EEE555', 115, 400000

	  SELECT * FROM Placas

create procedure borrarPlacas0
@idPlaca int
		as
		begin
			delete Placas where idPlaca = @idPlaca
		end

exec borrarPlacas0 1000

create procedure actualizarPlacas0 --Actualiza NumPlaca, IdUsuario y Monto
	@idPlaca int,
	@NumPlaca  varchar (30),
	@IdUsuario int,
	@Monto money
	 as
	  begin
	  UPDATE Placas SET NumPlaca = @NumPlaca,
						  IdUsuario = @IdUsuario,
						  Monto = @Monto
						  WHERE idPlaca = @idPlaca
	  end

execute actualizarPlacas0 1010, "XXXYYY", 115, 700000

--PROCEDIMIENTO ALMACENADO MONTO PLACA

create procedure ConsultarMontoPlaca0
@NumPlaca varchar (6)
	as
		begin
		 SELECT u.nombre, u.apellido, u.idUsuario, p.NumPlaca, p.monto, p.monto*0.13 as IVA, p.Monto*1.13 as TOTAL from Usuarios u inner join Placas p on u.idUsuario = p.IdUsuario WHERE p.NumPlaca = @NumPlaca
		end

		execute ConsultarMontoPlaca0 'CCC333'



SELECT u.nombre, u.apellido, u.idUsuario, p.NumPlaca, p.monto, p.monto*0.13 as IVA, p.Monto*1.13 as TOTAL from Usuarios u inner join Placas p on u.idUsuario = p.IdUsuario WHERE p.NumPlaca = 'XXXYYY'
SELECT u.nombre, u.apellido, u.idUsuario, p.NumPlaca, p.monto from Usuarios u inner join Placas p on u.idUsuario = p.IdUsuario WHERE p.NumPlaca = 'XXXYYY'
