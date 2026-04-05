## appelée par book_commands/randomize_class si on est en FFA
# permet de randomizer les classes

execute as @a[tag=in_lobby_arena,scores={Player=1..}] run function lobby:arena/quit_arena
# vire les joueurs de l'arène

tag @a[scores={Player=0}] remove warrior
tag @a[scores={Player=0}] remove archer
tag @a[scores={Player=0}] remove mage
tag @a[scores={Player=0}] remove rogue


execute as @a[scores={Player=0},tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] store result score @s class_id run random value 1..4

execute as @a[scores={Player=0,class_id=1}] run function lobby:class_selector/give_classes/warrior
execute as @a[scores={Player=0,class_id=2}] run function lobby:class_selector/give_classes/archer
execute as @a[scores={Player=0,class_id=3}] run function lobby:class_selector/give_classes/mage
execute as @a[scores={Player=0,class_id=4}] run function lobby:class_selector/give_classes/rogue


execute as @a[scores={Player=0}] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 2
execute as @a[scores={Player=0}] run function main:ressource_pack_detector/display_something_else/show_another_message
title @a[scores={Player=0}] title {"text":""}
title @a[scores={Player=0},tag=warrior] title [{"text":"Vous êtes ","color":"white"},{"text":"Guerrier","color":"gold"},{"text":" !","color":"white"}]
title @a[scores={Player=0},tag=archer] title [{"text":"Vous êtes ","color":"white"},{"text":"Archer","color":"dark_green"},{"text":" !","color":"white"}]
title @a[scores={Player=0},tag=mage] title [{"text":"Vous êtes ","color":"white"},{"text":"Mage","color":"dark_purple"},{"text":" !","color":"white"}]
title @a[scores={Player=0},tag=rogue] title [{"text":"Vous êtes ","color":"white"},{"text":"Assassin","color":"gray"},{"text":" !","color":"white"}]

title @a[scores={Player=0}] subtitle {"text":"Les classes ont été constituées aléatoirement !","bold":false}
# indique à tous que les équipes ont été formée aléatoirement et leur indique quelle est leur calsse

tellraw @a[scores={Player=0},tag=warrior] [{"text":"Vous êtes ","color":"white"},{"text":"Guerrier","color":"gold"},{"text":" !","color":"white"}]
tellraw @a[scores={Player=0},tag=archer] [{"text":"Vous êtes ","color":"white"},{"text":"Archer","color":"dark_green"},{"text":" !","color":"white"}]
tellraw @a[scores={Player=0},tag=mage] [{"text":"Vous êtes ","color":"white"},{"text":"Mage","color":"dark_purple"},{"text":" !","color":"white"}]
tellraw @a[scores={Player=0},tag=rogue] [{"text":"Vous êtes ","color":"white"},{"text":"Assassin","color":"gray"},{"text":" !","color":"white"}]