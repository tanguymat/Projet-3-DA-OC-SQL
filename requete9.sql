select * from (
select commune, code_postal, code_dpt, round(avg(valeur_fonciere)) as 'moyenne valeur fonciere', 
RANK () OVER(PARTITION BY code_dpt ORDER BY round(avg(valeur_fonciere)) desc) top_3_par_departement 
from vente
join lieu using (id_local)
where code_dpt in(6,13,33,59,69)
group by commune
order by  code_dpt asc, top_3_par_departement) result
where result.top_3_par_departement <= 3;