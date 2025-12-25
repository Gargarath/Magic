# permet de donner les glass panels du spell3lvl1 pour le mage

clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell3_slot:1b,cooldownspell3:1b}]
scoreboard players operation #temp give_cd_amount = @s cooldownspell3
# défini la quantité

item modify block 17 95 15 container.19 minecraft:count_modifier
# modifie la quantité dans le container

item replace entity @s[scores={spell3_slot_m=0}] hotbar.0 from block 17 95 15 container.19
item replace entity @s[scores={spell3_slot_m=1}] hotbar.1 from block 17 95 15 container.19
item replace entity @s[scores={spell3_slot_m=2}] hotbar.2 from block 17 95 15 container.19
item replace entity @s[scores={spell3_slot_m=3}] hotbar.3 from block 17 95 15 container.19
item replace entity @s[scores={spell3_slot_m=4}] hotbar.4 from block 17 95 15 container.19
item replace entity @s[scores={spell3_slot_m=5}] hotbar.5 from block 17 95 15 container.19
item replace entity @s[scores={spell3_slot_m=6}] hotbar.6 from block 17 95 15 container.19
item replace entity @s[scores={spell3_slot_m=7}] hotbar.7 from block 17 95 15 container.19
item replace entity @s[scores={spell3_slot_m=8}] hotbar.8 from block 17 95 15 container.19
# donne la nouvelle quantité