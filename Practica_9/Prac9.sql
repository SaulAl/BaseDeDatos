--Funciones de almacenado
Create procedure [dbo].[PromosOnline]
@tipoDePago int
as
begin
		UPDATE [dbo].[Pago]
		SET cantidad = cantidad-cantidad*.10
		where tipoDePago = @tipoDePago
end
exec PromosOnline 2



Create procedure [dbo].[CambiarZonasCerradas]
@Zona varchar(5)
as
begin
		UPDATE [dbo].[Lugar]
		SET Zona = 'X'		--Por asignar
		where Zona = @Zona
end
exec CambiarZonasCerradas A




Create procedure [dbo].[Reasignacion]
@Zona varchar(5),
@numeroDeAsiento int
as
begin
		UPDATE [dbo].[Lugar]
		SET Zona = @Zona, numeroDeAsiento = @numeroDeAsiento 
		where Zona = 'X'
end
exec Reasignacion D, 0




Create procedure [dbo].[Promociones]
@promocion int
as
begin
	
	SELECT p.promocion, COUNT(p.promocion) as 'Boletos promocionados', COUNT(p.promocion)*p.promocion as '$ perdido p/promociones'
	FROM [Pago] as p
	where promocion > @promocion
	group by p.promocion
end
exec Promociones 399

Create procedure [dbo].[DespedirEmpleado]
@matriculaDeEmpleado int
as
begin
	DELETE FROM [dbo].[Empleado]
	WHERE matriculaDeEmpleado = @matriculaDeEmpleado
end
exec DespedirEmpleado 160000

--Funciones
--Dar cambio
Create function [dbo].[fnCambio] (@pago int, @cambio int) 
returns int
begin
	RETURN @pago-@cambio
end
select dbo.fnCambio(1000, 900)

--Trigger
--Descuento al pagar con tarjeta tipoDePago=3, ajeno a promocion
Create trigger [dbo].[tr_descuentoPayPal]
on [dbo].[Pago]
after update
as
begin
	update [dbo].[Pago] set cantidad =  cantidad-.10*cantidad
	where tipoDePago='3'
END 
select * from [Pago]
--update [dbo].[Pago] set cantidad =  cantidad-.10*cantidad
where tipoDePago='3'

INSERT INTO Pago
(cantidad, tipoDePago, promocion, idPago)
VALUES
('2000', '3', '0', newid()),

