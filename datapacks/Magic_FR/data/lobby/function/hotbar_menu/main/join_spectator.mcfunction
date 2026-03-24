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




tag @s add spell_immune
tag @s[tag=!blue_team,tag=!red_team] add spectator
tag @s[tag=blue_team] add blue_spectator
tag @s[tag=red_team] add red_spectator
tag @s remove blue_team
tag @s remove red_team

# si on est dans le lobby (si @s ne se co pas en pleine game)
execute if score lobby enable_loop matches 1 run function lobby:team_selector/give_lobby_team
# si on est dans le lobby -> Donne la bonne équipe de lobby à @s
execute if score lobby enable_loop matches 1 run tellraw @s {"bold":false,"color":"yellow","text":"Vous avez rejoint le mode spectateur !"}
# si on est dans le lobby -> Indique à @s qu'il est en spec
execute if score lobby enable_loop matches 1 run function lobby:hotbar_menu/main/give_spectator_item
# si on est dans le lobby -> donne l'équipement du lobby à @s

scoreboard players set @s Player -1