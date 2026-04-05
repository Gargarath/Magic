# Donne la victoire aux bleus



execute as @a run function main:ressource_pack_detector/display_something_else/show_another_message
title @a title {"text":"Egalitée","bold":true,"color":"gray"}
title @a[team=blue] subtitle ["",{"score":{"name":"Bleus","objective":"Flag_posed"},"color":"blue"},{"text":" - "},{"score":{"name":"Rouges","objective":"Flag_posed"},"color":"red"}]
title @a[team=respawn_blue] subtitle ["",{"score":{"name":"Bleus","objective":"Flag_posed"},"color":"blue"},{"text":" - "},{"score":{"name":"Rouges","objective":"Flag_posed"},"color":"red"}]
title @a[team=red] subtitle ["",{"score":{"name":"Rouges","objective":"Flag_posed"},"color":"red"},{"text":" - "},{"score":{"name":"Bleus","objective":"Flag_posed"},"color":"blue"}]
title @a[team=respawn_red] subtitle ["",{"score":{"name":"Rouges","objective":"Flag_posed"},"color":"red"},{"text":" - "},{"score":{"name":"Bleus","objective":"Flag_posed"},"color":"blue"}]
title @a[team=spectator] subtitle ["",{"score":{"name":"Bleus","objective":"Flag_posed"},"color":"gray"},{"text":" - "},{"score":{"name":"Rouges","objective":"Flag_posed"},"color":"gray"}]

data modify storage stats:leaderboards game.result.title.blue set value {text:"      EGALITE",color:"gray",bold:true}
data modify storage stats:leaderboards game.result.title.red set value {text:"      EGALITE",color:"gray",bold:true}
# indique au livre de stat qu'il y a eu égalité

function main:end_game/end_game
# lance le système de fin de partie