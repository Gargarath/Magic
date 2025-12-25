## appelé par interact_with_menu au nom de l'entité qui s'est fait cliqué
# permet de faire l'action selon le bouton cliqué


execute if entity @s[tag=archer_passive] on target at @e[type=marker,tag=select_archer_spot,limit=1] run function lobby:class_selector/archer/pages/passive/main
execute if entity @s[tag=archer_weapon] on target at @e[type=marker,tag=select_archer_spot,limit=1] run function lobby:class_selector/archer/pages/weapon1/main
execute if entity @s[tag=archer_spell1] on target at @e[type=marker,tag=select_archer_spot,limit=1] run function lobby:class_selector/archer/pages/spell1/main
execute if entity @s[tag=archer_spell2] on target at @e[type=marker,tag=select_archer_spot,limit=1] run function lobby:class_selector/archer/pages/spell2/main
execute if entity @s[tag=archer_spell3] on target at @e[type=marker,tag=select_archer_spot,limit=1] run function lobby:class_selector/archer/pages/spell3/main

execute if entity @s[tag=archer_left_arrow] on target run function lobby:class_selector/archer/pages/levels/decrease_level
execute if entity @s[tag=archer_right_arrow] on target run function lobby:class_selector/archer/pages/levels/increase_level

execute if entity @s[tag=archer_become_archer] on target if entity @s[tag=archer] run function lobby:class_selector/already_archer
execute if entity @s[tag=archer_become_archer] on target unless entity @s[tag=archer] run function lobby:class_selector/become_archer

execute unless entity @s[tag=archer_become_archer] on target at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1
data remove entity @s interaction