# permet de randomizer les classes

tag @a remove warrior
tag @a remove archer
tag @a remove mage
tag @a remove rogue
team join lobby @a[tag=!blue_team,tag=!red_team]
team join blue @a[tag=blue_team]
team join red @a[tag=red_team]


execute as @r[team=blue,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_warrior
execute as @r[team=red,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_warrior
execute as @r[team=blue,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_archer
execute as @r[team=red,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_archer
execute as @r[team=blue,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_mage
execute as @r[team=red,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_mage
execute as @r[team=blue,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_rogue
execute as @r[team=red,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_rogue
execute as @r[team=blue,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_archer
execute as @r[team=red,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_archer
execute as @r[team=blue,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_mage
execute as @r[team=red,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_mage
execute as @r[team=blue,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_warrior
execute as @r[team=red,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_warrior
execute as @r[team=blue,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_rogue
execute as @r[team=red,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_rogue
execute as @r[team=blue,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_archer
execute as @r[team=red,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_archer
execute as @r[team=blue,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_mage
execute as @r[team=red,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_mage
execute as @r[team=blue,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_warrior
execute as @r[team=red,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_warrior
execute as @r[team=blue,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_rogue
execute as @r[team=red,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_rogue

execute as @a run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 2
execute as @a run function main:ressource_pack_detector/display_something_else/show_another_message
title @a title {"text":""}
title @a[tag=warrior] title [{"text":"Vous êtes ","color":"white"},{"text":"Guerrier","color":"gold"},{"text":" !","color":"white"}]
title @a[tag=archer] title [{"text":"Vous êtes ","color":"white"},{"text":"Archer","color":"dark_green"},{"text":" !","color":"white"}]
title @a[tag=mage] title [{"text":"Vous êtes ","color":"white"},{"text":"Mage","color":"dark_purple"},{"text":" !","color":"white"}]
title @a[tag=rogue] title [{"text":"Vous êtes ","color":"white"},{"text":"Assassin","color":"gray"},{"text":" !","color":"white"}]

title @a subtitle {"text":"Les classes ont été constituées aléatoirement !","bold":false}
# indique à tous que les équipes ont été formée aléatoirement et leur indique quelle est leur calsse

execute as @a[scores={Player=0}] if entity @s[tag=blue_team] run function main:stats/scoreboard/blue_team_info/sort_blue
# si @s est bleu -> actualise la barre des joueurs bleus selon la classe de @s
execute as @a[scores={Player=0}] if entity @s[tag=red_team] run function main:stats/scoreboard/red_team_info/sort_red
# si @s est rouge -> actualise la barre des joueurs rouges selon la classe de @s