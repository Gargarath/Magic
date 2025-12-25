# permet de donner les glass panels du spell1lvl2 pour l'assassin

clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell1_slot:1b,cooldownspell1:1b}]
scoreboard players operation #temp give_cd_amount = @s cooldownspell1
# défini la quantité

item modify block 17 95 17 container.4 minecraft:count_modifier
# modifie la quantité dans le container

item replace entity @s[scores={spell1_slot_r=0}] hotbar.0 from block 17 95 17 container.4
item replace entity @s[scores={spell1_slot_r=1}] hotbar.1 from block 17 95 17 container.4
item replace entity @s[scores={spell1_slot_r=2}] hotbar.2 from block 17 95 17 container.4
item replace entity @s[scores={spell1_slot_r=3}] hotbar.3 from block 17 95 17 container.4
item replace entity @s[scores={spell1_slot_r=4}] hotbar.4 from block 17 95 17 container.4
item replace entity @s[scores={spell1_slot_r=5}] hotbar.5 from block 17 95 17 container.4
item replace entity @s[scores={spell1_slot_r=6}] hotbar.6 from block 17 95 17 container.4
item replace entity @s[scores={spell1_slot_r=7}] hotbar.7 from block 17 95 17 container.4
item replace entity @s[scores={spell1_slot_r=8}] hotbar.8 from block 17 95 17 container.4
# donne la nouvelle quantité