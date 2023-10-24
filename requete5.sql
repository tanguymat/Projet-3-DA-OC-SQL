
select id_local as 'N° vente des 10 appartements les plus chers', valeur_fonciere, code_dpt, surface_bati
from local
join vente using (id_local)
join lieu using (id_local)
where code_type_local = 2
order by valeur_fonciere desc
limit 10;