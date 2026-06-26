# permet de donner les glass panels du spell2lvl1 pour l'assassin

clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell2_slot:1b,cooldownspell2:1b}]
scoreboard players operation #temp give_cd_amount = @s cooldownspell2
# défini la quantité

$item replace entity @s hotbar.$(slot_spell2_r) with gray_stained_glass_pane[custom_name={"bold":true,"color":"gray","text":"$(tr_rogue_cooldownspell2_1_name)"},lore=["",{"color":"dark_red","bold":true,"text":"$(tr_stuff_generic_cooldown_lore_1)"},"",{"color":"gray","text":"$(tr_rogue_spell2_1_lore_1)"},{"color":"gray","text":"$(tr_rogue_spell2_1_lore_2)"},{"color":"gray","text":"$(tr_rogue_spell2_1_lore_3)"},"",{"color":"gray","text":"$(tr_rogue_spell2_1_lore_5)"},{"color":"gray","text":"$(tr_rogue_spell2_1_lore_6)"},{"color":"gray","text":"$(tr_rogue_spell2_1_lore_7)"},"",{"color":"gray","text":"$(tr_rogue_spell2_1_lore_9)"},{"color":"gray","text":"$(tr_rogue_spell2_1_lore_10)"},"",{"color":"gray","text":"$(tr_rogue_spell2_1_lore_12)"},{"color":"gray","text":"$(tr_rogue_spell2_1_lore_13)"}],custom_data={spell2_slot:1b,cooldownspell2:1b},custom_model_data={strings:["cooldown"]}] 1

$item modify entity @s hotbar.$(slot_spell2_r) minecraft:count_modifier
# modifie la quantité dans l'inventaire
