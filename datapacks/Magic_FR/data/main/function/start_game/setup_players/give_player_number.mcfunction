# Fonction appellée par main:start_game/start_game permet de deffinir les joueurs

scoreboard players add $current Player 1
scoreboard players operation @s Player = $current Player

function main:get_name
data modify storage temp name set from storage temp name
execute store result storage temp player int 1 run scoreboard players get @s Player
function main:start_game/setup_players/setup_player with storage temp

execute as @r[scores={Player=0}] run function main:start_game/setup_players/give_player_number
# réappelle la fonction en boucle tant qu'il y a des joueurs à setup