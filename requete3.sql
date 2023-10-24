
select code_dpt, round (avg(valeur_fonciere / surface_bati)) as 'prix du m2'
FROM lieu
join vente using (id_local)
join local using (id_local)
group by code_dpt 
order by (avg(valeur_fonciere / surface_bati)) desc
LIMIT 10;