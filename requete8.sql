

with moy_prixm2_appart_2pcs as 

(select round (avg(valeur_fonciere / surface_bati)) as appart_2pcs, type_local, nbr_pieces
from vente
join local using (id_local)
where type_local = 'appartement'
and nbr_pieces = 2),

moy_prixm2_appart_3pcs as
(select round (avg(valeur_fonciere / surface_bati)) as appart_3pcs, type_local, nbr_pieces
from vente
join local using (id_local)
where type_local = 'appartement'
and nbr_pieces = 3)

select appart_2pcs, appart_3pcs, round((appart_3pcs-appart_2pcs)*100/appart_2pcs) as 'différence en % du prix par m2 appart 2 et 3 pièces'
from moy_prixm2_appart_2pcs, moy_prixm2_appart_3pcs;
