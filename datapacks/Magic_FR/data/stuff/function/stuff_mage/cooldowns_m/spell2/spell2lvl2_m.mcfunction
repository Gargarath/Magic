# permet de donner les glass panels du spell2lvl2 pour le mage

clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell2_slot:1b,cooldownspell2:1b}]
scoreboard players operation #temp give_cd_amount = @s cooldownspell2
# défini la quantité

$item replace entity @s hotbar.$(slot_spell2_m) with yellow_stained_glass_pane[custom_name={"bold":true,"color":"yellow","text":"$(tr_mage_cooldownspell2_2_name)"},lore=["",{"color":"dark_red","bold":true,"text":"$(tr_stuff_generic_cooldown_lore_1)"},"",{"color":"gray","text":"$(tr_mage_spell2_2_lore_1)"},{"color":"gray","text":"$(tr_mage_spell2_2_lore_2)"},{"color":"gray","text":"$(tr_mage_spell2_2_lore_3)"},"",{"color":"gray","text":"$(tr_mage_spell2_2_lore_4)"},{"color":"gray","text":"$(tr_mage_spell2_2_lore_5)"},{"color":"gray","text":"$(tr_mage_spell2_2_lore_6)"},"",{"color":"yellow","text":"$(tr_mage_spell2_2_lore_7)"},{"color":"yellow","text":"$(tr_mage_spell2_2_lore_8)"}],custom_data={spell2_slot:1b,cooldownspell2:1b},custom_model_data={strings:["cooldown"]}] 1

$item modify entity @s hotbar.$(slot_spell2_m) minecraft:count_modifier
# modifie la quantité dans l'inventaire
