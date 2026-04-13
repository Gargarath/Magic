# permet de donner les glass panels du spell3lvl1 pour le guerrier

clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell3_slot:1b,cooldownspell3:1b}]
scoreboard players operation #temp give_cd_amount = @s cooldownspell3
# definit la quantite

$item replace entity @s hotbar.$(slot_spell3_w) with light_gray_stained_glass_pane[custom_name={"bold":true,"color":"gray","text":"$(tr_warrior_cooldownspell3_1_name)"},lore=["",{"color":"dark_red","bold":true,"text":"$(tr_warrior_cooldownspell3_1_lore_1)"},"",{"color":"gray","text":"$(tr_warrior_spell3_1_lore_1)"},{"color":"gray","text":"$(tr_warrior_spell3_1_lore_2)"},{"color":"gray","text":"$(tr_warrior_spell3_1_lore_3)"},{"color":"gray","text":"$(tr_warrior_spell3_1_lore_4)"},"",{"color":"gray","text":"$(tr_warrior_spell3_1_lore_5)"},{"color":"gray","text":"$(tr_warrior_spell3_1_lore_6)"},"",{"color":"gray","text":"$(tr_warrior_spell3_1_lore_7)"},{"color":"gray","text":" "},{"color":"gray","text":"$(tr_warrior_spell3_1_lore_8)"},"",{"color":"gray","text":"$(tr_warrior_spell3_1_lore_9)"},"",{"color":"gray","text":"$(tr_warrior_spell3_1_lore_10)"},{"color":"gray","text":"$(tr_warrior_spell3_1_lore_11)"},{"color":"gray","text":"$(tr_warrior_spell3_1_lore_12)"}],custom_data={spell3_slot:1b,cooldownspell3:1b},custom_model_data={strings:["cooldown"]}] 1

$item modify entity @s hotbar.$(slot_spell3_w) minecraft:count_modifier
# modifie la quantite dans l'inventaire
