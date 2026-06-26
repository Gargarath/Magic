## appelé par interact_with_menu au nom de l'entité qui s'est fait cliqué
# permet de faire l'action selon le bouton cliqué


execute if entity @s[tag=rogue_passive] on target at @e[type=marker,tag=select_rogue_spot,limit=1] run function lobby:class_selector/rogue/pages/passive/main with storage lobby:language translate
execute if entity @s[tag=rogue_weapon] on target at @e[type=marker,tag=select_rogue_spot,limit=1] run function lobby:class_selector/rogue/pages/weapon1/main
execute if entity @s[tag=rogue_spell1] on target at @e[type=marker,tag=select_rogue_spot,limit=1] run function lobby:class_selector/rogue/pages/spell1/main
execute if entity @s[tag=rogue_spell2] on target at @e[type=marker,tag=select_rogue_spot,limit=1] run function lobby:class_selector/rogue/pages/spell2/main
execute if entity @s[tag=rogue_spell3] on target at @e[type=marker,tag=select_rogue_spot,limit=1] run function lobby:class_selector/rogue/pages/spell3/main

execute if entity @s[tag=rogue_left_arrow] on target run function lobby:class_selector/rogue/pages/levels/decrease_level
execute if entity @s[tag=rogue_right_arrow] on target run function lobby:class_selector/rogue/pages/levels/increase_level

execute if entity @s[tag=rogue_become_rogue] on target if entity @s[tag=rogue] run function lobby:class_selector/already_rogue
execute if entity @s[tag=rogue_become_rogue] on target unless entity @s[tag=rogue] run function lobby:class_selector/become_rogue

execute unless entity @s[tag=rogue_become_rogue] on target at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1
data remove entity @s interaction