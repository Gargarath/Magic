## appelée par lang_increase, lang_decrease ou display_main_tab
# permet de save les infos de langue et de l'actualiser

execute if score $lang option_panel matches 0 run data modify storage lobby:language translate set from storage strings en_en
execute if score $lang option_panel matches 1 run data modify storage lobby:language translate set from storage strings fr_fr

function lobby:option_panel/pages/main/lang/merge_stuff_prices
# ajoute les infos de prix dans le storage de langue

function lobby:class_selector/refresh_language with storage lobby:language translate
# rafraichit les pages de classes deja affichees
