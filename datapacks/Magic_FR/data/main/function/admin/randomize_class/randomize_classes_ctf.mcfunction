## appelée par book_commands/randomize_class si on est en CTF
# permet de randomizer les classes

execute as @a[tag=in_lobby_arena,scores={Player=1..}] run function lobby:arena/quit_arena
# vire les joueurs de l'arène

tag @a[scores={Player=0}] remove warrior
tag @a[scores={Player=0}] remove archer
tag @a[scores={Player=0}] remove mage
tag @a[scores={Player=0}] remove rogue


execute as @r[scores={Player=0},tag=blue_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_warrior
execute as @r[scores={Player=0},tag=red_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_warrior
execute as @r[scores={Player=0},tag=blue_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_archer
execute as @r[scores={Player=0},tag=red_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_archer
execute as @r[scores={Player=0},tag=blue_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_mage
execute as @r[scores={Player=0},tag=red_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_mage
execute as @r[scores={Player=0},tag=blue_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_rogue
execute as @r[scores={Player=0},tag=red_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_rogue
execute as @r[scores={Player=0},tag=blue_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_archer
execute as @r[scores={Player=0},tag=red_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_archer
execute as @r[scores={Player=0},tag=blue_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_mage
execute as @r[scores={Player=0},tag=red_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_mage
execute as @r[scores={Player=0},tag=blue_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_warrior
execute as @r[scores={Player=0},tag=red_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_warrior
execute as @r[scores={Player=0},tag=blue_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_rogue
execute as @r[scores={Player=0},tag=red_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_rogue
execute as @r[scores={Player=0},tag=blue_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_archer
execute as @r[scores={Player=0},tag=red_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_archer
execute as @r[scores={Player=0},tag=blue_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_mage
execute as @r[scores={Player=0},tag=red_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_mage
execute as @r[scores={Player=0},tag=blue_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_warrior
execute as @r[scores={Player=0},tag=red_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_warrior
execute as @r[scores={Player=0},tag=blue_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_rogue
execute as @r[scores={Player=0},tag=red_team,tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] run function lobby:class_selector/become_rogue

execute as @a[scores={Player=0}] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 2
execute as @a[scores={Player=0}] run function main:ressource_pack_detector/display_something_else/show_another_message
title @a[scores={Player=0}] title {"text":""}
execute as @a[scores={Player=0}] run function main:admin/randomize_class/class_message with entity @s EnderItems[0].components.minecraft:custom_data

execute as @a[scores={Player=0}] if entity @s[tag=blue_team] run function main:stats/scoreboard/blue_team_info/sort_blue
# si @s est bleu -> actualise la barre des joueurs bleus selon la classe de @s
execute as @a[scores={Player=0}] if entity @s[tag=red_team] run function main:stats/scoreboard/red_team_info/sort_red
# si @s est rouge -> actualise la barre des joueurs rouges selon la classe de @s