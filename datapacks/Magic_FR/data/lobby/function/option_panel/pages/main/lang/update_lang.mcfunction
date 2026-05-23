## appelée par lang_increase, lang_decrease ou display_main_tab
# permet de save les infos de langue et de l'actualiser

execute if score $lang option_panel matches 0 run data modify storage lobby:language translate set from storage strings en_en
execute if score $lang option_panel matches 1 run data modify storage lobby:language translate set from storage strings fr_fr