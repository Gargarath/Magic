# permet de donner les glass panels du spell2lvl2 pour le guerrier

clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell2_slot:1b,cooldownspell2:1b}]
scoreboard players operation #temp give_cd_amount = @s cooldownspell2
# definit la quantite

$item replace entity @s hotbar.$(slot_spell2_w) with orange_stained_glass_pane[custom_name={"bold":true,"color":"gold","text":"$(tr_warrior_cooldownspell2_2_name)"},lore=["",{"color":"dark_red","bold":true,"text":"$(tr_stuff_generic_cooldown_lore_1)"},"",{"color":"gray","text":"$(tr_warrior_spell2_2_lore_1)"},{"color":"gray","text":"$(tr_warrior_spell2_2_lore_2)"},{"color":"gray","text":"$(tr_warrior_spell2_2_lore_3)"},"",{"color":"gray","text":"$(tr_warrior_spell2_2_lore_4)"},{"color":"gray","text":"$(tr_warrior_spell2_2_lore_5)"},{"color":"gray","text":"$(tr_warrior_spell2_2_lore_6)"},"",{"color":"gray","text":"$(tr_warrior_spell2_2_lore_7)"},"",{"color":"gray","text":"$(tr_warrior_spell2_2_lore_8)"},{"color":"gray","text":"$(tr_warrior_spell2_2_lore_9)"}],custom_data={spell2_slot:1b,cooldownspell2:1b},custom_model_data={strings:["cooldown"]}] 1

$item modify entity @s hotbar.$(slot_spell2_w) minecraft:count_modifier
# modifie la quantite dans l'inventaire
