# Donne la victoire aux bleus

execute as @a run function main:ressource_pack_detector/display_something_else/show_another_message
title @a[team=spectator] title {"text":"L'équipe bleue a gagnée !","bold":true,"color":"blue"}
title @a[team=spectator] subtitle ["",{"score":{"name":"Bleus","objective":"Flag_posed"},"color":"blue"},{"text":" - "},{"score":{"name":"Rouges","objective":"Flag_posed"},"color":"red"}]

title @a[team=blue] title {"text":"Victoire !","bold":true,"color":"gold"}
title @a[team=blue] subtitle ["",{"score":{"name":"Bleus","objective":"Flag_posed"},"color":"blue"},{"text":" - "},{"score":{"name":"Rouges","objective":"Flag_posed"},"color":"red"}]
title @a[team=respawn_blue] title {"text":"Victoire !","bold":true,"color":"gold"}
title @a[team=respawn_blue] subtitle ["",{"score":{"name":"Bleus","objective":"Flag_posed"},"color":"blue"},{"text":" - "},{"score":{"name":"Rouges","objective":"Flag_posed"},"color":"red"}]

title @a[team=red] title {"text":"Défaite :(","bold":true,"color":"dark_red"}
title @a[team=red] subtitle ["",{"score":{"name":"Rouges","objective":"Flag_posed"},"color":"red"},{"text":" - "},{"score":{"name":"Bleus","objective":"Flag_posed"},"color":"blue"}]
title @a[team=respawn_red] title {"text":"Défaite :(","bold":true,"color":"dark_red"}
title @a[team=respawn_red] subtitle ["",{"score":{"name":"Rouges","objective":"Flag_posed"},"color":"red"},{"text":" - "},{"score":{"name":"Bleus","objective":"Flag_posed"},"color":"blue"}]


data modify storage stats:leaderboards game.result.title.blue set value {text:"      VICTOIRE !",color:"gold",bold:true}
data modify storage stats:leaderboards game.result.title.red set value {text:"      DEFAITE :(",color:"dark_red",bold:true}
# indique au livre de stat que les bleus ont gagnés

scoreboard players add @a[team=blue] stat_victory 1

function ctf:end_game/end_game
# lance le système de fin de partie