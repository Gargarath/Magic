# permet de randomizer les team

execute as @a[tag=in_lobby_arena,scores={Player=1..}] run function lobby:arena/quit_arena
# vire les joueurs de l'arène

tag @a[scores={Player=0}] add not_on_team
# Donne le tag not_on_team à tous les combattants

execute as @a[tag=not_on_team,tag=blue_team] run function lobby:team_selector/join_team/random
execute as @a[tag=not_on_team,tag=red_team] run function lobby:team_selector/join_team/random

kill @e[type=armor_stand,tag=blue_member]
kill @e[type=armor_stand,tag=red_member]
# clear les armor_stand d'équipe

### Permet de mettre successivement un joueur (sans équipe) dans l'équipe rouge et un joueur dans l'équipe bleue 6 fois

execute as @r[tag=not_on_team] run function main:admin/randomizeteam/become_blue
execute as @r[tag=not_on_team] run function main:admin/randomizeteam/become_red


execute as @r[tag=not_on_team] run function main:admin/randomizeteam/become_blue
execute as @r[tag=not_on_team] run function main:admin/randomizeteam/become_red


execute as @r[tag=not_on_team] run function main:admin/randomizeteam/become_blue
execute as @r[tag=not_on_team] run function main:admin/randomizeteam/become_red


execute as @r[tag=not_on_team] run function main:admin/randomizeteam/become_blue
execute as @r[tag=not_on_team] run function main:admin/randomizeteam/become_red


execute as @r[tag=not_on_team] run function main:admin/randomizeteam/become_blue
execute as @r[tag=not_on_team] run function main:admin/randomizeteam/become_red

execute as @r[tag=not_on_team] run function main:admin/randomizeteam/become_blue
execute as @r[tag=not_on_team] run function main:admin/randomizeteam/become_red

execute as @a run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 2
execute as @a run function main:ressource_pack_detector/display_something_else/show_another_message
title @a title {"text":""}
execute as @a[tag=blue_team] run function main:admin/randomizeteam/blue_message with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[tag=red_team] run function main:admin/randomizeteam/red_message with entity @s EnderItems[0].components.minecraft:custom_data