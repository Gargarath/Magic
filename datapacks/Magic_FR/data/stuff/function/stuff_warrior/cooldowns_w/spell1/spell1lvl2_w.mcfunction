# permet de donner les glass panels du spell1lvl2 pour le guerrier

clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell1_slot:1b,cooldownspell1:1b}]
scoreboard players operation #temp give_cd_amount = @s cooldownspell1
# défini la quantité

$item replace entity @s hotbar.$(slot_spell1_w) with red_stained_glass_pane[custom_name={"bold":true,"color":"dark_red","text":"$(tr_warrior_spell1_2_name)"},lore=["",{"color":"dark_red","bold":true,"text":"$(tr_warrior_cooldownspell1_2_lore_1)"},"",{"color":"dark_red","text":"$(tr_warrior_cooldownspell1_2_lore_1)"},{"color":"green","text":"$(tr_warrior_spell1_2_lore_2)"},{"color":"green","text":"$(tr_warrior_spell1_2_lore_3)"},"",{"color":"green","text":"$(tr_warrior_spell1_2_lore_4)"},{"color":"green","text":"$(tr_warrior_spell1_2_lore_5)"},"",{"color":"red","text":"$(tr_warrior_spell1_2_lore_6)"},{"color":"red","text":"$(tr_warrior_spell1_2_lore_7)"},"",{"color":"red","text":"$(tr_warrior_spell1_2_lore_8)"},{"color":"red","text":"$(tr_warrior_spell1_2_lore_9)"},"",{"color":"dark_red","text":"$(tr_warrior_spell1_2_lore_10)"},{"color":"dark_red","text":"$(tr_warrior_spell1_2_lore_11)"}],custom_data={spell1_slot:1b,cooldownspell1:1b},custom_model_data={strings:["cooldown"]}] 1

$item modify entity @s hotbar.$(slot_spell1_w) minecraft:count_modifier
# modifie la quantité dans l'inventaire