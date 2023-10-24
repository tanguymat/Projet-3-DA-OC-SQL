
WITH
t1 AS (
	select commune, count(id_vente) as vt1
	from vente
	join lieu using(id_local)
	where date between '2020-01-01' and '2020-03-31'
	group by commune),

t2 AS(
	select commune, count(id_vente) as vt2
	from vente
	join lieu using(id_local)
	where date between '2020-04-01' and '2020-06-30'
	group by commune)

select commune,vt1,vt2, round(((vt2-vt1)/vt1*100),2) as 'evolution'
from t1
join t2 using(commune)
where round((vt2-vt1)/vt1*100,2) >=20
order by round((vt2-vt1)/vt1*100,2) asc;