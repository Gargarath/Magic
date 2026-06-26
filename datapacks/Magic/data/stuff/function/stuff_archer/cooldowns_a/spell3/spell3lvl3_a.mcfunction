# permet de donner les glass panels du spell3lvl3 pour l'archer

clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell3_slot:1b,cooldownspell3:1b}]
scoreboard players operation #temp give_cd_amount = @s cooldownspell3
# défini la quantité

$item replace entity @s hotbar.$(slot_spell3_a) with light_blue_stained_glass_pane[custom_name={"bold":true,"color":"aqua","text":"$(tr_archer_cooldownspell3_3_name)"},lore=["",{"color":"dark_red","bold":true,"text":"$(tr_stuff_generic_cooldown_lore_1)"},"",{"color":"gray","text":"$(tr_archer_spell3_3_lore_1)"},{"color":"gray","text":"$(tr_archer_spell3_3_lore_2)"},{"color":"gray","text":"$(tr_archer_spell3_3_lore_3)"},{"color":"gray","text":"$(tr_archer_spell3_3_lore_4)"},"",{"color":"gray","text":"$(tr_archer_spell3_3_lore_5)"},{"color":"gray","text":"$(tr_archer_spell3_3_lore_6)"},"",{"color":"gray","text":"$(tr_archer_spell3_3_lore_7)"},{"color":"gray","text":" "},{"color":"gray","text":"$(tr_archer_spell3_3_lore_8)"},"",{"color":"gray","text":"$(tr_archer_spell3_3_lore_9)"},"",{"color":"gray","text":"$(tr_archer_spell3_3_lore_10)"},{"color":"gray","text":"$(tr_archer_spell3_3_lore_11)"}],custom_data={spell3_slot:1b,cooldownspell3:1b},custom_model_data={strings:["cooldown"]}] 1

$item modify entity @s hotbar.$(slot_spell3_a) minecraft:count_modifier
# modifie la quantite dans l'inventaire