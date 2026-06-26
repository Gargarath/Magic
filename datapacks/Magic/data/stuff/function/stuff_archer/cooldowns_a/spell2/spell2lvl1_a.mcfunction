# permet de donner les glass panels du spell2lvl1 pour l'archer

clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell2_slot:1b,cooldownspell2:1b}]
scoreboard players operation #temp give_cd_amount = @s cooldownspell2
# défini la quantité

$item replace entity @s hotbar.$(slot_spell2_a) with orange_stained_glass_pane[custom_name={"bold":true,"color":"gold","text":"$(tr_archer_cooldownspell2_1_name)"},lore=["",{"color":"dark_red","bold":true,"text":"$(tr_stuff_generic_cooldown_lore_1)"},"",{"color":"gray","text":"$(tr_archer_spell2_1_lore_1)"},{"color":"gray","text":"$(tr_archer_spell2_1_lore_2)"},{"color":"gray","text":"$(tr_archer_spell2_1_lore_3)"},"",{"color":"gray","text":"$(tr_archer_spell2_1_lore_4)"},{"color":"gray","text":"$(tr_archer_spell2_1_lore_5)"},{"color":"gray","text":"$(tr_archer_spell2_1_lore_6)"},"",{"color":"gray","text":"$(tr_archer_spell2_1_lore_7)"},"",{"color":"gray","text":"$(tr_archer_spell2_1_lore_8)"},{"color":"gray","text":"$(tr_archer_spell2_1_lore_9)"},{"color":"gray","text":"$(tr_archer_spell2_1_lore_10)"}],custom_data={spell2_slot:1b,cooldownspell2:1b},custom_model_data={strings:["cooldown"]}] 1

$item modify entity @s hotbar.$(slot_spell2_a) minecraft:count_modifier
# modifie la quantite dans l'inventaire