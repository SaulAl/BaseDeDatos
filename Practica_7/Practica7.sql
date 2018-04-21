--selects simples
select *
from Arena

select Direccion as 'Localización de la arena'
from Arena

select top 5 Nombre as 'Nombre artista/banda'
from Artistas

select puesto
from Empleado 
where matriculaDeEmpleado > 160005 

select promocion, tipoDePago
from Pago
where tipoDePago = 2 and promocion <> 0




-- selelects group by
select tipoDePago, sum(p.cantidad) as total
from [Pago] as p
group by tipoDePago

select tipoDePago, sum(p.promocion) as total
from [Pago] as p
group by tipoDePago

select numeroDeAsiento, count(l.zona) as 'Zonas diferentes'
from [Lugar] as l
group by numeroDeAsiento

select Puesto, count(e.Puesto)
from [Empleado] as e
group by Puesto

select Direccion, count(a.Direccion) as total
from [Arena] as a
group by Direccion




-- selects fn.agregado
SELECT p.cantidad as Precio, COUNT(p.cantidad) as 'Cantidad de Boletos'
FROM [Pago] as p
group by p.cantidad

SELECT p.cantidad Precio, COUNT(p.cantidad) as 'Cantidad de Boletos', COUNT(p.cantidad)*p.cantidad as 'Dinero Ganado'
FROM [Pago] as p
group by p.cantidad
order by COUNT(p.cantidad)*p.cantidad desc

SELECT p.promocion, COUNT(p.promocion) as 'Boletos promocionados'
FROM [Pago] as p
group by p.promocion

SELECT p.promocion, COUNT(p.promocion) as 'Boletos promocionados', COUNT(p.promocion)*p.promocion as '$ perdido p/promociones'
FROM [Pago] as p
group by p.promocion
order by COUNT(p.promocion)*p.promocion asc	

SELECT p.cantidad Precio, COUNT(p.cantidad) as 'Cantidad de Boletos', COUNT(p.cantidad)*p.cantidad as 'Dinero Ganado', p.promocion,  COUNT(p.promocion) as 'Boletos promocionados', COUNT(p.promocion)*p.promocion as '$ perdido p/promociones', COUNT(p.cantidad)*p.cantidad-COUNT(p.promocion)*p.promocion as 'Ganancia Neta'
FROM [Pago] as p
group by p.cantidad, p.promocion




-- 5 select having
SELECT p.cantidad as Precio, COUNT(p.cantidad) as 'Cantidad de Boletos'
FROM [Pago] as p
group by p.cantidad
having COUNT(p.cantidad) > 1
	
SELECT p.cantidad as Precio, COUNT(p.cantidad) as 'Cantidad de Boletos', COUNT(p.cantidad)*p.cantidad as 'Dinero Ganado'
FROM [Pago] as p
group by p.cantidad
having COUNT(p.cantidad) = 3

SELECT p.promocion, COUNT(p.promocion) as 'Boletos promocionados'
FROM [Pago] as p
group by p.promocion
having p.promocion > 0

SELECT p.promocion, COUNT(p.promocion) as 'Boletos promocionados', COUNT(p.promocion)*p.promocion as '$ perdido p/promociones'
FROM [Pago] as p
group by p.promocion
having p.promocion > 500

SELECT p.cantidad as Precio, COUNT(p.cantidad) as 'Cantidad de Boletos', COUNT(p.cantidad)*p.cantidad as 'Dinero Ganado', p.promocion,  COUNT(p.promocion) as 'Boletos promocionados', COUNT(p.promocion)*p.promocion as '$ perdido p/promociones', COUNT(p.cantidad)*p.cantidad-COUNT(p.promocion)*p.promocion as 'Ganancia Neta'
FROM [Pago] as p
group by p.cantidad, p.promocion
having COUNT(p.cantidad)*p.cantidad-COUNT(p.promocion)*p.promocion < p.cantidad




-- 5 selects Top
select top 5 Nombre as 'Nombre artista/banda'
from Artistas

select top 5 nombreDeArena as 'Nombre artista/banda', Direccion as Localizacion
from Arena

select top 3 Puesto, matriculaDeEmpleado
from Empleado
where puesto = 'Vendedor'

select top 3 numeroDeAsiento, Zona
from Lugar
where Zona= 'A'

select top 3 cantidad
from Pago
where cantidad > 900 AND promocion = 0 
