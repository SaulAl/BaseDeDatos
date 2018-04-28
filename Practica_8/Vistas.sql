CREATE VIEW GananciasVSPerdidas as
SELECT p.cantidad Precio, COUNT(p.cantidad) as 'Cantidad de Boletos', COUNT(p.cantidad)*p.cantidad as 'Dinero Ganado', p.promocion,  COUNT(p.promocion) as 'Boletos promocionados', COUNT(p.promocion)*p.promocion as '$ perdido p/promociones', COUNT(p.cantidad)*p.cantidad-COUNT(p.promocion)*p.promocion as 'Ganancia Neta'
FROM [Pago] as p
group by p.cantidad, p.promocion

select *
from GananciasVSPerdidas


CREATE VIEW PeridoPorPromo as
SELECT p.promocion, COUNT(p.promocion) as 'Boletos promocionados', COUNT(p.promocion)*p.promocion as '$ perdido p/promociones'
FROM [Pago] as p
group by p.promocion

select *
from PeridoPorPromo


create view MejorArtistas as
select top 3 Nombre as 'Nombre artista/banda'
from Artistas

select *
from PeridoPorPromo


create view PromosAplicadas as
SELECT p.promocion, COUNT(p.promocion) as 'Boletos promocionados'
FROM [Pago] as p
group by p.promocion
having p.promocion > 0

select *
from PromosAplicadas


create view Pagos2SinPromo as
select promocion, tipoDePago
from Pago
where tipoDePago = 2 and promocion = 0

select *
from Pagos2SinPromo