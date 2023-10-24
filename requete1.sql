select count(id_vente) as 'total appart vendu 1er sem', type_local
from local
where type_local = 'appartement';