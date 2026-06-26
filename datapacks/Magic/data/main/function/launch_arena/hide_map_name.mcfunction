## appelée par start_game/start_game et round_end/go_to_shop
# permet de masquer le nom de la prochaine map dans le gui de @s

data modify storage personnal_storage.temp storage set from entity @s EnderItems[0].components.minecraft:custom_data
# recup les data de l'enderchest (storage perso) et les met dans un storage

data modify storage personnal_storage.temp storage.map_name set value {"text":"\uE710\uE710\uE710\uE710\uE710\uE707","color":"aqua","bold":true}
# masque la map dans le gui

function main:personnal_data/save_new_data with storage personnal_storage.temp
# remet son storage perso dans son enderchest
