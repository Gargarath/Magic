## appelé par interact_with_menu au nom de l'entité qui s'est fait cliqué
# permet de faire l'action selon le bouton cliqué


execute if entity @s[tag=mage_passive] on target at @e[type=marker,tag=select_mage_spot,limit=1] run function lobby:class_selector/mage/pages/passive/main
execute if entity @s[tag=mage_weapon] on target at @e[type=marker,tag=select_mage_spot,limit=1] run function lobby:class_selector/mage/pages/weapon1/main
execute if entity @s[tag=mage_spell1] on target at @e[type=marker,tag=select_mage_spot,limit=1] run function lobby:class_selector/mage/pages/spell1/main
execute if entity @s[tag=mage_spell2] on target at @e[type=marker,tag=select_mage_spot,limit=1] run function lobby:class_selector/mage/pages/spell2/main
execute if entity @s[tag=mage_spell3] on target at @e[type=marker,tag=select_mage_spot,limit=1] run function lobby:class_selector/mage/pages/spell3/main

execute if entity @s[tag=mage_left_arrow] on target run function lobby:class_selector/mage/pages/levels/decrease_level
execute if entity @s[tag=mage_right_arrow] on target run function lobby:class_selector/mage/pages/levels/increase_level

execute if entity @s[tag=mage_become_mage] on target if entity @s[tag=mage] run function lobby:class_selector/already_mage
execute if entity @s[tag=mage_become_mage] on target unless entity @s[tag=mage] run function lobby:class_selector/become_mage

execute unless entity @s[tag=mage_become_mage] on target at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1
data remove entity @s interaction