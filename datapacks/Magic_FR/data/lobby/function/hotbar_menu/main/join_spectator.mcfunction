## appelée par check_rightclick permet à @s de devenir spec

execute as @s[tag=blue_team] run function main:stats/scoreboard/blue_team_info/left_blue
# enlève @s de la liste des bleus
execute as @s[tag=red_team] run function main:stats/scoreboard/red_team_info/left_red
# enlève @s de la liste des rouges

scoreboard players reset @s red_member
scoreboard players reset @s blue_member
# enleve le numéro de statue de @s selon son équipe (pour que la statue puisse etre retirée)

scoreboard players set @s usespell 0
execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

tellraw @s {"bold":false,"color":"yellow","text":"Vous avez rejoint le mode spectateur !"}


tag @s add spell_immune
tag @s[tag=!blue_team,tag=!red_team] add spectator
tag @s[tag=blue_team] add blue_spectator
tag @s[tag=red_team] add red_spectator
tag @s remove blue_team
tag @s remove red_team

function lobby:team_selector/give_lobby_team
# Donne la bonne équipe de lobby à @s


function lobby:hotbar_menu/main/give_spectator_item

scoreboard players set @s Player -1