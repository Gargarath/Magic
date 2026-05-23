## appelée par lang_increase, lang_decrease ou display_main_tab
# permet d'afficher la bonne langue

execute if score $lang option_panel matches 0 run data merge entity @e[tag=optn_menu_main_lang,limit=1] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["lang_en_en"]}}}}
execute if score $lang option_panel matches 1 run data merge entity @e[tag=optn_menu_main_lang,limit=1] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["lang_fr_fr"]}}}}