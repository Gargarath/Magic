scoreboard players set @s usespell 0
tag @s remove warrior
tag @s remove archer
tag @s remove mage
tag @s remove rogue

scoreboard players set @s class_id 0

function lobby:team_selector/give_lobby_team
# Donne la bonne équipe de lobby à @s

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

tellraw @s {"bold":false,"color":"yellow","text":"Votre classe sera choisie aléatoirement !"}
function lobby:hotbar_menu/main/give_items

execute if entity @s[tag=blue_team] run function main:stats/scoreboard/blue_team_info/left_blue
execute if entity @s[tag=blue_team] run function main:stats/scoreboard/blue_team_info/sort_blue
# si @s est bleu -> actualise la barre des joueurs bleus selon la classe de @s
execute if entity @s[tag=red_team] run function main:stats/scoreboard/red_team_info/left_red
execute if entity @s[tag=red_team] run function main:stats/scoreboard/red_team_info/sort_red
# si @s est rouge -> actualise la barre des joueurs rouges selon la classe de @s