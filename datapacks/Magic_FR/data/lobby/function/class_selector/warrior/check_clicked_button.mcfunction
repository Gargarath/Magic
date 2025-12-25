## appelé par interact_with_menu au nom de l'entité qui s'est fait cliqué
# permet de faire l'action selon le bouton cliqué


execute if entity @s[tag=warrior_passive] on target at @e[type=marker,tag=select_warrior_spot,limit=1] run function lobby:class_selector/warrior/pages/passive/main
execute if entity @s[tag=warrior_weapon] on target at @e[type=marker,tag=select_warrior_spot,limit=1] run function lobby:class_selector/warrior/pages/weapon1/main
execute if entity @s[tag=warrior_spell1] on target at @e[type=marker,tag=select_warrior_spot,limit=1] run function lobby:class_selector/warrior/pages/spell1/main
execute if entity @s[tag=warrior_spell2] on target at @e[type=marker,tag=select_warrior_spot,limit=1] run function lobby:class_selector/warrior/pages/spell2/main
execute if entity @s[tag=warrior_spell3] on target at @e[type=marker,tag=select_warrior_spot,limit=1] run function lobby:class_selector/warrior/pages/spell3/main

execute if entity @s[tag=warrior_left_arrow] on target run function lobby:class_selector/warrior/pages/levels/decrease_level
execute if entity @s[tag=warrior_right_arrow] on target run function lobby:class_selector/warrior/pages/levels/increase_level

execute if entity @s[tag=warrior_become_warrior] on target if entity @s[tag=warrior] run function lobby:class_selector/already_warrior
execute if entity @s[tag=warrior_become_warrior] on target unless entity @s[tag=warrior] run function lobby:class_selector/become_warrior

execute unless entity @s[tag=warrior_become_warrior] on target at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1
data remove entity @s interaction