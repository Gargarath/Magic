# permet de donner les glass panels du spell1lvl3 pour l'archer

clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell1_slot:1b,cooldownspell1:1b}]
scoreboard players operation #temp give_cd_amount = @s cooldownspell1
# défini la quantité

$item replace entity @s hotbar.$(slot_spell1_a) with red_stained_glass_pane[custom_name={"bold":true,"color":"dark_red","text":"$(tr_archer_cooldownspell1_3_name)"},lore=["",{"color":"dark_red","bold":true,"text":"$(tr_stuff_generic_cooldown_lore_1)"},"",{"color":"dark_red","text":"$(tr_archer_spell1_3_lore_1)"},{"color":"gray","text":"$(tr_archer_spell1_3_lore_2)"},{"color":"gray","text":"$(tr_archer_spell1_3_lore_3)"},{"color":"gray","text":"$(tr_archer_spell1_3_lore_4)"},{"color":"gray","text":"$(tr_archer_spell1_3_lore_5)"},{"color":"gray","text":"$(tr_archer_spell1_3_lore_6)"},{"color":"gray","text":"$(tr_archer_spell1_3_lore_7)"},{"color":"gray","text":"$(tr_archer_spell1_3_lore_8)"},{"color":"gray","text":"$(tr_archer_spell1_3_lore_9)"},{"color":"gray","text":"$(tr_archer_spell1_3_lore_10)"},{"color":"gray","text":"$(tr_archer_spell1_3_lore_11)"},{"color":"dark_red","text":"$(tr_archer_spell1_3_lore_12)"},{"color":"dark_red","text":"$(tr_archer_spell1_3_lore_13)"}],custom_data={spell1_slot:1b,cooldownspell1:1b},custom_model_data={strings:["cooldown"]}] 1

$item modify entity @s hotbar.$(slot_spell1_a) minecraft:count_modifier
# modifie la quantité dans l'inventaire