
SELECT type_local, nbr_pieces, count(id_vente)* 100 / sum(count(id_vente)) over() as 'proportion en % vente/nbr pieces', count(id_vente) as 'nombre appartement par nbrs pieces'
FROM local
where code_type_local = 2
group by nbr_pieces
order by nbr_pieces asc;