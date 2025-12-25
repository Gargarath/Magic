## appelée par spells:spellsystem/spell2/spell2_w/summon_flag/destroy_flag/testplayer si @s est le joueur 5
## permet de clear son drapeau de ralliement et sa bossbar et de lancer son cd

bossbar set rally_flag:player5 players


execute if score @s spell2 matches 1 run function spells:spellsystem/spell2/spell2_w/cooldown/cooldown_lvl1
execute if score @s spell2 matches 2 run function spells:spellsystem/spell2/spell2_w/cooldown/cooldown_lvl2
execute if score @s spell2 matches 3 run function spells:spellsystem/spell2/spell2_w/cooldown/cooldown_lvl3

scoreboard players reset @s timer_rally_flag
kill @e[type=minecraft:armor_stand,tag=rally_flag_5]
kill @e[type=minecraft:area_effect_cloud,tag=rally_flag_5]