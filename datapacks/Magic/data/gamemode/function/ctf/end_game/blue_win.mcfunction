# Donne la victoire aux bleus

execute as @a run function main:ressource_pack_detector/display_something_else/show_another_message
execute as @a run function gamemode:ctf/end_game/messages/blue_win with entity @s EnderItems[0].components.minecraft:custom_data
title @a[team=spectator] subtitle ["",{"score":{"name":"Bleus","objective":"Flag_posed"},"color":"blue"},{"text":" - "},{"score":{"name":"Rouges","objective":"Flag_posed"},"color":"red"}]

title @a[team=blue] subtitle ["",{"score":{"name":"Bleus","objective":"Flag_posed"},"color":"blue"},{"text":" - "},{"score":{"name":"Rouges","objective":"Flag_posed"},"color":"red"}]
title @a[team=respawn_blue] subtitle ["",{"score":{"name":"Bleus","objective":"Flag_posed"},"color":"blue"},{"text":" - "},{"score":{"name":"Rouges","objective":"Flag_posed"},"color":"red"}]

title @a[team=red] subtitle ["",{"score":{"name":"Rouges","objective":"Flag_posed"},"color":"red"},{"text":" - "},{"score":{"name":"Bleus","objective":"Flag_posed"},"color":"blue"}]
title @a[team=respawn_red] subtitle ["",{"score":{"name":"Rouges","objective":"Flag_posed"},"color":"red"},{"text":" - "},{"score":{"name":"Bleus","objective":"Flag_posed"},"color":"blue"}]

scoreboard players set @a[tag=blue_team,scores={Player=1..}] result_last_game 1
scoreboard players set @a[tag=red_team,scores={Player=1..}] result_last_game 2
# indique les bleus gagnants

data modify storage stats:leaderboards game.result set value 1
# indique au livre de stat que les bleus ont gagnés

scoreboard players add @a[team=blue] stat_victory 1

function main:end_game/end_game
# lance le système de fin de partie
