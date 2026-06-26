# permet de donner les glass panels du spell1lvl1 pour l'assassin

clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell1_slot:1b,cooldownspell1:1b}]
scoreboard players operation #temp give_cd_amount = @s cooldownspell1
# défini la quantité

$item replace entity @s hotbar.$(slot_spell1_r) with red_stained_glass_pane[custom_name={"bold":true,"color":"dark_red","text":"$(tr_rogue_cooldownspell1_1_name)"},lore=["",{"color":"dark_red","bold":true,"text":"$(tr_stuff_generic_cooldown_lore_1)"},"",{"color":"dark_red","text":"$(tr_rogue_spell1_1_lore_1)"},{"color":"gray","text":"$(tr_rogue_spell1_1_lore_2)"},{"color":"gray","text":"$(tr_rogue_spell1_1_lore_3)"},"",{"color":"gray","text":"$(tr_rogue_spell1_1_lore_5)"},{"color":"gray","text":"$(tr_rogue_spell1_1_lore_6)"},"",{"color":"gray","text":"$(tr_rogue_spell1_1_lore_8)"},"",{"color":"gray","text":"$(tr_rogue_spell1_1_lore_10)"},{"color":"gray","text":"$(tr_rogue_spell1_1_lore_11)"},"",{"color":"dark_red","text":"$(tr_rogue_spell1_1_lore_13)"},{"color":"dark_red","text":"$(tr_rogue_spell1_1_lore_14)"}],custom_data={spell1_slot:1b,cooldownspell1:1b},custom_model_data={strings:["cooldown"]}] 1

$item modify entity @s hotbar.$(slot_spell1_r) minecraft:count_modifier
# modifie la quantité dans l'inventaire
