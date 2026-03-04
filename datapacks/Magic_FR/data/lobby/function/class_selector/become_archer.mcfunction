tag @s remove warrior
tag @s add archer
tag @s remove mage
tag @s remove rogue

scoreboard players set @s class_id 2

function lobby:team_selector/give_lobby_team
# Donne la bonne équipe de lobby à @s

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

tellraw @s {"text":"Vous êtes devenu un Archer !","color":"dark_green","bold":false}

execute if entity @s[tag=blue_team] run function main:stats/scoreboard/blue_team_info/left_blue
execute if entity @s[tag=blue_team] run function main:stats/scoreboard/blue_team_info/sort_blue
# si @s est bleu -> actualise la barre des joueurs bleus selon la classe de @s
execute if entity @s[tag=red_team] run function main:stats/scoreboard/red_team_info/left_red
execute if entity @s[tag=red_team] run function main:stats/scoreboard/red_team_info/sort_red
# si @s est rouge -> actualise la barre des joueurs rouges selon la classe de @s

execute as @s[scores={hotbar_menu=0..1}] run function lobby:hotbar_menu/main/give_items
# si @s est dans la selection de classe ou dans le menu principal -> le met dans le menu principal avec la bonne classe
