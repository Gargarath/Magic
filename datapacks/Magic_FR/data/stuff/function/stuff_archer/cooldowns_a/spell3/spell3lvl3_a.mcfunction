# permet de donner les glass panels du spell3lvl3 pour l'archer

clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell3_slot:1b,cooldownspell3:1b}]
scoreboard players operation #temp give_cd_amount = @s cooldownspell3
# défini la quantité

item modify block 17 95 13 container.23 minecraft:count_modifier
# modifie la quantité dans le container

item replace entity @s[scores={spell3_slot_a=0}] hotbar.0 from block 17 95 13 container.23
item replace entity @s[scores={spell3_slot_a=1}] hotbar.1 from block 17 95 13 container.23
item replace entity @s[scores={spell3_slot_a=2}] hotbar.2 from block 17 95 13 container.23
item replace entity @s[scores={spell3_slot_a=3}] hotbar.3 from block 17 95 13 container.23
item replace entity @s[scores={spell3_slot_a=4}] hotbar.4 from block 17 95 13 container.23
item replace entity @s[scores={spell3_slot_a=5}] hotbar.5 from block 17 95 13 container.23
item replace entity @s[scores={spell3_slot_a=6}] hotbar.6 from block 17 95 13 container.23
item replace entity @s[scores={spell3_slot_a=7}] hotbar.7 from block 17 95 13 container.23
item replace entity @s[scores={spell3_slot_a=8}] hotbar.8 from block 17 95 13 container.23
# donne la nouvelle quantité (le slot est a 2 car pour l'archer le slot 2 et 3 sont inversés)