# Fonction appellée par main:start_game/start_game permet de deffinir les joueurs

scoreboard players add $current Player 1
scoreboard players operation @s Player = $current Player


## AJOUTE LE NOM ET NUM DE JOUEUR DANS LE STOCKAGE DE @s
function main:personnal_data/get_name
# récupère le nom de @s dans un storage

function shop:history/reset_history with entity @s EnderItems[0].components.minecraft:custom_data
# initialise l'historique undo / redo

data modify storage personnal_storage.temp storage set from entity @s EnderItems[0].components.minecraft:custom_data
# récupère la data de @s et la met dans un storage
data modify storage personnal_storage.temp storage.name set from storage temp name
# met le nom de @s dans ce storage
execute if entity @s[tag=warrior] run data modify storage personnal_storage.temp storage.class set value "warrior"
execute if entity @s[tag=archer] run data modify storage personnal_storage.temp storage.class set value "archer"
execute if entity @s[tag=mage] run data modify storage personnal_storage.temp storage.class set value "mage"
execute if entity @s[tag=rogue] run data modify storage personnal_storage.temp storage.class set value "rogue"
# stock la classe de @s dans ce storage
execute store result storage personnal_storage.temp storage.player int 1 run scoreboard players get @s Player
# save le numéro de joueur de @s dans ce storage
function main:personnal_data/save_new_data with storage personnal_storage.temp
# met ce storage dans la data de @s

function main:start_game/setup_players/setup_player with entity @s EnderItems[0].components.minecraft:custom_data
# lance le setup de shop avec la data de @s

execute as @r[scores={Player=0}] run function main:start_game/setup_players/give_player_number
# réappelle la fonction en boucle tant qu'il y a des joueurs à setup


