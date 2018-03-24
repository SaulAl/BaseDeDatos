INSERT INTO Arena 
(Direccion,nombreDeArena,idArena)
VALUES
('Monterrey N.L.', 'Arena MTY2', newid()),
('Monterrey N.L.', 'Arena MTY', newid()),
('Monterei N.L.', 'Arsasd MTY', newid()),
('San Nicolas N.L.', 'Arena SN', newid()),
('San Nico N.L.', 'Arena SNico', newid()),
('San Pedro N.L.', 'Arena SP', newid()),
('Guadalupe N.L.', 'Arena G', newid()),
('Allende N.L.', 'Arena ALL', newid()),
('Santiago N.L.', 'Arena STGO', newid()),
('Juarez N.L.', 'Arena Juazzzz', newid()),
('Juarez N.L.', 'Arena JZ2', newid()),
('Juarez3 N.L.', 'Arena JZ3', newid()),
('Juarez4 N.L.', 'Arena JZ4', newid()),
('Apodaca N.L.', 'Arena APO', newid()),
('Garcia N.L.', 'Arena GRC', newid()),
('Santa Catarina N.L.', 'Arena SC', newid())
GO 

UPDATE [dbo].[Arena]
	SET  nombreDeArena = 'Arena GDLP'
	WHERE Direccion = 'Guadalupe N.L.'
UPDATE [dbo].[Arena]
	SET  nombreDeArena = 'Arena SN2'
	WHERE Direccion = 'San Nico N.L.'
UPDATE [dbo].[Arena]
	SET  Direccion = 'San Nicolas N.L.'
	WHERE Direccion = 'San Nico N.L.'
UPDATE [dbo].[Arena]
	SET  nombreDeArena = 'Arena JZ'
	WHERE nombreDeArena = 'Arena Juazzzz'
UPDATE [dbo].[Arena]
	SET  nombreDeArena = 'Arena JZ1'
	WHERE nombreDeArena = 'Arena JZ'
GO
	
DELETE FROM [dbo].[Arena]
	WHERE Direccion = 'Juarez N.L.'
DELETE FROM [dbo].[Arena]
	WHERE nombreDeArena = 'Arena JZ3'
DELETE FROM [dbo].[Arena]
	WHERE nombreDeArena = 'Arena JZ4'
DELETE FROM [dbo].[Arena]
	WHERE Direccion = 'Monterei N.L.'
DELETE FROM [dbo].[Arena]
	WHERE Direccion = 'Allende N.L.'
GO




INSERT INTO Artistas
(idArtistas, Nombre)
VALUES
(newid(), 'Miranda!'),
(newid(), 'MIUSE'),
(newid(), 'SOE'),
(newid(), 'Richard Ashcroft'),
(newid(), 'Quin of the stone age'),
(newid(), 'El Gran Silencilo'),
(newid(), 'Band Of Jorses'),
(newid(), 'The Last Internationale'),
(newid(), 'Zona Ganjah'),
(newid(), 'División Minúscula'),
(newid(), 'Juanga'),
(newid(), 'Panteón Rococó'),
(newid(), 'Enjambre'),
(newid(), 'Comisario Pantera'),
(newid(), 'Paté de Fuá')
GO 

UPDATE [dbo].[Artistas]
	SET  Nombre = 'MUSE'
	WHERE Nombre = 'MIUSE'
UPDATE [dbo].[Artistas]
	SET  Nombre = 'Zoé'
	WHERE Nombre = 'SOE'
UPDATE [dbo].[Artistas]
	SET  Nombre = 'Queen of the stone age'
	WHERE Nombre = 'Quin of the stone age'
UPDATE [dbo].[Artistas]
	SET  Nombre = 'Band Of Horses'
	WHERE Nombre = 'Band Of Jorses'
UPDATE [dbo].[Artistas]
	SET  Nombre = 'Juan Gabriel'
	WHERE Nombre = 'Juanga'
GO

DELETE FROM [dbo].[Artistas]
	WHERE Nombre = 'Juan Gabriel'
DELETE FROM [dbo].[Artistas]
	WHERE Nombre = 'Panteón Rococó'
DELETE FROM [dbo].[Artistas]
	WHERE Nombre = 'The Last Internationale'
DELETE FROM [dbo].[Artistas]
	WHERE Nombre = 'Paté de Fuá'
DELETE FROM [dbo].[Artistas]
	WHERE Nombre = 'Comisario Pantera'
	
	
INSERT INTO Empleado
(matriculaDeEmpleado, Puesto, idEmpleado)
VALUES
('160000', 'Vendedor' , newid()),
('160001', 'Vendedor' , newid()),
('160002', 'Vendedor' , newid()),
('160003', 'Vendedor' , newid()),
('160004', 'Vendedor' , newid()),
('160005', 'Vendedor' , newid()),
('160006', 'Vendedor' , newid()),
('160007', 'Vendedor' , newid()),
('160008', 'Vendedor' , newid()),
('160009', 'Vendedor' , newid()),
('160010', 'Supervisor' , newid()),
('160011', 'Supervisor' , newid()),
('160012', 'Supervisor' , newid()),
('160013', 'Supervisor' , newid()),
('160014', 'Supervisor' , newid())
GO

DELETE FROM [dbo].[Empleado]
	WHERE Puesto = 'Supervisor'
GO

UPDATE [dbo].[Empleado]
	SET  Puesto = 'Supervisor'
	WHERE matriculaDeEmpleado = '160000'
UPDATE [dbo].[Empleado]
	SET  Puesto = 'Supervisor'
	WHERE matriculaDeEmpleado = '160001'
UPDATE [dbo].[Empleado]
	SET  Puesto = 'Supervisor'
	WHERE matriculaDeEmpleado = '160002'
UPDATE [dbo].[Empleado]
	SET  Puesto = 'Supervisor'
	WHERE matriculaDeEmpleado = '160003'
UPDATE [dbo].[Empleado]
	SET  Puesto = 'Supervisor'
	WHERE matriculaDeEmpleado = '160004'
GO


INSERT INTO Pago
(cantidad, tipoDePago, promocion, idPago)
VALUES
('0', '2', '800', newid()),
('0', '2', '800', newid()),
('0', '2', '0', newid()),
('0', '2', '0', newid()),
('20000', '2', '0', newid()),
('20000', '2', '0', newid()),
('20000', '2', '0', newid()),
('800', '2', '800', newid()),
('1400', '2', '0', newid()),
('1900', '1', '1900', newid()),
('800', '1', '0', newid()),
('800', '1', '0', newid()),
('800', '1', '0', newid()),
('600', '1', '0', newid()),
('800', '1', '600', newid()),
('1600', '1', '0', newid()),
('300', '1', '0', newid()),
('350', '1', '0', newid()),
('360', '1', '0', newid())
GO

UPDATE [dbo].[Pago]
	SET  cantidad = '950'
	WHERE cantidad = '0'
UPDATE [dbo].[Pago]
	SET  cantidad = '2000'
	WHERE cantidad = '20000'
GO
UPDATE [dbo].[Pago]
	SET  promocion = '400'
	WHERE cantidad = '2000'
UPDATE [dbo].[Pago]
	SET  cantidad = '1200'
	WHERE cantidad = '1400'
UPDATE [dbo].[Pago]
	SET  promocion = '300'
	WHERE cantidad = '1900'
GO

DELETE FROM [dbo].[Pago]
	WHERE cantidad = '600'
DELETE FROM [dbo].[Pago]
	WHERE cantidad = '800'
DELETE FROM [dbo].[Pago]
	WHERE cantidad = '300'
DELETE FROM [dbo].[Pago]
	WHERE cantidad = '350'
DELETE FROM [dbo].[Pago]
	WHERE cantidad = '360'
GO


INSERT INTO Lugar
(numeroDeAsiento, Zona, idLugar)
VALUES
('13', 'A', newid()),
('18', 'D', newid()),
('14', 'D', newid()),
('13', 'A', newid()),
('38', 'A', newid()),
('40', 'A', newid()),
('45', 'B', newid()),
('87', 'D', newid()),
('56', 'A', newid()),
('85', 'B', newid()),
('48', 'B', newid()),
('12', 'B', newid()),
('231', 'B', newid()),
('45', 'C', newid()),
('46', 'C', newid()),
('40', 'C', newid()),
('45', 'C', newid()),
('45', 'C', newid()),
('46', 'C', newid()),
('61', 'C', newid())
GO

UPDATE [dbo].[Lugar]
	SET  Zona = 'X'
	WHERE numeroDeAsiento = '45'
UPDATE [dbo].[Lugar]
	SET  numeroDeAsiento = '45'
	WHERE numeroDeAsiento = '45'
UPDATE [dbo].[Lugar]
	SET  numeroDeAsiento = '87'
	WHERE numeroDeAsiento = '101'
UPDATE [dbo].[Lugar]
	SET  numeroDeAsiento = '61'
	WHERE numeroDeAsiento = '123'
UPDATE [dbo].[Lugar]
	SET  numeroDeAsiento = '231'
	WHERE numeroDeAsiento = '156'
	
GO

DELETE FROM [dbo].[lUGAR]
	WHERE numeroDeAsiento = '45'
DELETE FROM [dbo].[lUGAR]
	WHERE Zona = 'X'
DELETE FROM [dbo].[lUGAR]
	WHERE numeroDeAsiento = '46'
DELETE FROM [dbo].[lUGAR]
	WHERE numeroDeAsiento = '61'
DELETE FROM [dbo].[lUGAR]
	WHERE numeroDeAsiento = '13'
GO
	
	
	
	