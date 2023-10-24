
select round(
 (select count(id_vente)
from vente 
where date between '2020-04-01' and '2020-06-30')
/ (
select count(id_vente)
from vente
where date between '2020-01-01' and '2020-03-31')*100,2) AS 'taux d_évolution des ventes 1er et 2eme trimestre en %' ;