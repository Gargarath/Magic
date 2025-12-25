## appelée par usespell1lvlX_a quand @s a déjà activé sa flèche explo et veut la rotate avant de la lancer
# permet de rotate la flèche explo de @s

scoreboard players add @s spell1_a_direction 1
execute if score @s spell1_a_direction matches 5 run scoreboard players set @s spell1_a_direction 1
# rotate la direction de @s

execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 10 2
scoreboard players set @s usespell 0

title @s[scores={spell1_a_direction=1}] subtitle {"text":"\uE509","shadow_color":0}
title @s[scores={spell1_a_direction=2}] subtitle {"text":"\uE510","shadow_color":0}
title @s[scores={spell1_a_direction=3}] subtitle {"text":"\uE511","shadow_color":0}
title @s[scores={spell1_a_direction=4}] subtitle {"text":"\uE512","shadow_color":0}