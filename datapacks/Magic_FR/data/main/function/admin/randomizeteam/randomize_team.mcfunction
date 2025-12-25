# permet de randomizer les team

tag @a[scores={Player=0}] add not_on_team
# Donne le tag not_on_team à tous les combattants

team join lobby @a[team=red]
team join lobby @a[team=blue]
team join warrior @a[team=w_red]
team join warrior @a[team=w_blue]
team join archer @a[team=a_red]
team join archer @a[team=a_blue]
team join mage @a[team=m_red]
team join mage @a[team=m_blue]
team join rogue @a[team=r_red]
team join rogue @a[team=r_blue]
# Enlève tous les joueurs de leur team


### Permet de mettre successivement un joueur (sans équipe) dans l'équipe rouge et un joueur dans l'équipe bleue 6 fois
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
execute as @r[tag=not_on_team] run function main:admin/randomizeteam/become_blue
###

execute as @a run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 2
execute as @a run function main:ressource_pack_detector/display_something_else/show_another_message
title @a title {"text":""}
title @a[tag=red_team] title {"text":"Vous êtes rouge !","color":"red"}
title @a[tag=blue_team] title {"text":"Vous êtes bleu !","color":"blue"}

title @a subtitle {"text":"Les équipes ont été constituées aléatoirement !","bold":false}
# indique à tous que les équipes ont été formée aléatoirement et leur indique quelle est leur équipe