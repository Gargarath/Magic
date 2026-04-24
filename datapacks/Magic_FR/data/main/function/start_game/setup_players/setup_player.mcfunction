# Fonction appellée par start_game/setup_players/give_player_number
# permet de setup @s selon son numéro de joueur

$execute at @e[tag=shop_room_$(player)] run tp @s ~ ~ ~ 0 -5
$execute at @e[tag=shop_room_$(player)] run spawnpoint @s ~ ~ ~

execute as @s[tag=blue_team] at @s run function main:start_game/make_frameroom_blue
# modifie la frameroom des joueurs bleus en bleue.
execute as @s[tag=red_team] at @s run function main:start_game/make_frameroom_red
# modifie la frameroom des joueurs rouges en rouge.

execute if entity @s[tag=warrior] run function stuff:stuff_warrior/stuffwarrior
execute if entity @s[tag=archer] run function stuff:stuff_archer/stuffarcher
execute if entity @s[tag=mage] run function stuff:stuff_mage/stuffmage
execute if entity @s[tag=rogue] run function stuff:stuff_rogue/stuffrogue

function shop:setup_shop with entity @s EnderItems[0].components.minecraft:custom_data