select a.idcar, a."name", a.modelo, b.name as marca, c."name" as grupo_empresarial, 
a.dt_buy as fecha_compra, d."name" as color, e.km, g."name" as aseguradora, f.idinsurancepolicy as poliza,
(select max(ss.km) from autoskeepcod.service ss where ss.idcar = e.idcar)
from autoskeepcod.car a 
inner join autoskeepcod.brandcar b on a.idbrandcar = b.idbrandcar   
inner join autoskeepcod.businessgroup c on b.idbusinessgroup = c.idbusinessgroup 
inner join autoskeepcod.color d on a.idcolor = d.idcolor 
inner join autoskeepcod.service e on a.idcar = e.idcar 
inner join autoskeepcod.insurancepolicy f on a.idcar = f.idcar 
inner join autoskeepcod.insurancecompany g on f.idinsurancecompany = g.idinsurancecompany
where a.dt_termination = '4000-01-01';