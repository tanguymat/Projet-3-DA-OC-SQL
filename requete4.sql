
select round(avg(valeur_fonciere / surface_bati)) as 'prix moyen/m2 maison IDF'
from vente
join local using (id_local)
join lieu using (id_lieu)
where code_dpt in (75,77,78,91,92,93,94,95) 
and type_local = 'maison';