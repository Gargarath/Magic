## appelée par spells:loop -> permet de lancer la clock de @s (drapeau) en fonction de son niveau de sort

scoreboard players remove @s timer_rally_flag 1
# enleve 1 de timer à tous les rally_point à plus de 1

execute at @s[tag=rally_flag_lvl1] positioned ~ ~-1.6 ~0.2 run function spells:spellsystem/spell2/spell2_w/loop/flaglvl1
execute at @s[tag=rally_flag_lvl2] positioned ~ ~-1.6 ~0.2 run function spells:spellsystem/spell2/spell2_w/loop/flaglvl2
execute at @s[tag=rally_flag_lvl3] positioned ~ ~-1.6 ~0.2 run function spells:spellsystem/spell2/spell2_w/loop/flaglvl3