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
title @a[tag=red_team] title {"text":"Vous êtes rouge !","color":"red"}
title @a[tag=blue_team] title {"text":"Vous êtes bleu !","color":"blue"}

title @a subtitle {"text":"Les équipes ont été constituées aléatoirement !","bold":false}
# indique à tous que les équipes ont été formée aléatoirement et leur indique quelle est leur équipe

tellraw @a[tag=red_team] {"text":"Vous êtes rouge !","color":"red"}
tellraw @a[tag=blue_team] {"text":"Vous êtes bleu !","color":"blue"}