# permet de donner les glass panels du spell3lvl1 pour le guerrier

clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell3_slot:1b,cooldownspell3:1b}]
scoreboard players operation #temp give_cd_amount = @s cooldownspell3
# défini la quantité

item modify block 17 95 11 container.21 minecraft:count_modifier
# modifie la quantité dans le container

item replace entity @s[scores={spell3_slot_w=0}] hotbar.0 from block 17 95 11 container.21
item replace entity @s[scores={spell3_slot_w=1}] hotbar.1 from block 17 95 11 container.21
item replace entity @s[scores={spell3_slot_w=2}] hotbar.2 from block 17 95 11 container.21
item replace entity @s[scores={spell3_slot_w=3}] hotbar.3 from block 17 95 11 container.21
item replace entity @s[scores={spell3_slot_w=4}] hotbar.4 from block 17 95 11 container.21
item replace entity @s[scores={spell3_slot_w=5}] hotbar.5 from block 17 95 11 container.21
item replace entity @s[scores={spell3_slot_w=6}] hotbar.6 from block 17 95 11 container.21
item replace entity @s[scores={spell3_slot_w=7}] hotbar.7 from block 17 95 11 container.21
item replace entity @s[scores={spell3_slot_w=8}] hotbar.8 from block 17 95 11 container.21
# donne la nouvelle quantité



                   ###   SPELL 3    ###


# Cooldown niveau 1
item replace block 17 95 11 container.21 with light_gray_stained_glass_pane[custom_name={"bold":true,"color":"gray","text":"Grappin"},lore=["Votre sort doit se recharger !"],custom_data={spell3_slot:1b,cooldownspell3:1b},custom_model_data={strings:["cooldown"]}] 1