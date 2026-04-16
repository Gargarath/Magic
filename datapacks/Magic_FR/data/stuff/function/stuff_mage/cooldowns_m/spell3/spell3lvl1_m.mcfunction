# permet de donner les glass panels du spell3lvl1 pour le mage

clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell3_slot:1b,cooldownspell3:1b}]
scoreboard players operation #temp give_cd_amount = @s cooldownspell3
# défini la quantité

$item replace entity @s hotbar.$(slot_spell3_m) with purple_stained_glass_pane[custom_name={"bold":true,"color":"dark_purple","text":"$(tr_mage_cooldownspell3_1_name)"},lore=["",{"color":"dark_red","bold":true,"text":"$(tr_stuff_generic_cooldown_lore_1)"},"",{"color":"gray","text":"$(tr_mage_spell3_1_lore_1)"},{"color":"gray","text":"$(tr_mage_spell3_1_lore_2)"},{"color":"gray","text":"$(tr_mage_spell3_1_lore_3)"},"",{"color":"gray","text":"$(tr_mage_spell3_1_lore_4)"},"",{"color":"dark_purple","text":"$(tr_mage_spell3_1_lore_5)"},{"color":"dark_purple","text":"$(tr_mage_spell3_1_lore_6)"}],custom_data={spell3_slot:1b,cooldownspell3:1b},custom_model_data={strings:["cooldown"]}] 1

$item modify entity @s hotbar.$(slot_spell3_m) minecraft:count_modifier
# modifie la quantité dans l'inventaire
