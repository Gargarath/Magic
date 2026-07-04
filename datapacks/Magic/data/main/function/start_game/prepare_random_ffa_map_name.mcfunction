## appelée au lancement d'un FFA en mode cartes aléatoires
# Affiche temporairement le libellé traduit "Aléatoire" du lobby jusqu'au tirage de la carte.

data modify storage personnal_storage.temp storage set from entity @s EnderItems[0].components.minecraft:custom_data
data modify storage personnal_storage.temp storage.map_name set from storage personnal_storage.temp storage.lobby_map_name
function main:personnal_data/save_new_data with storage personnal_storage.temp
