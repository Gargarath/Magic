

function lobby:class_selector/give_classes/warrior
# rend @s warrior

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

tellraw @s {entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.tr_became_warrior","color":"gold","bold":false,plain:true}

execute if entity @s[tag=blue_team] run function main:stats/scoreboard/blue_team_info/left_blue
execute if entity @s[tag=blue_team] run function main:stats/scoreboard/blue_team_info/sort_blue
# si @s est bleu -> actualise la barre des joueurs bleus selon la classe de @s
execute if entity @s[tag=red_team] run function main:stats/scoreboard/red_team_info/left_red
execute if entity @s[tag=red_team] run function main:stats/scoreboard/red_team_info/sort_red
# si @s est rouge -> actualise la barre des joueurs rouges selon la classe de @s