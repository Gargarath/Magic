## appelée par interact_with_menu/check_clicked_button si @s clique sur le boutton de langue
# permet de passer à la langue précedente

scoreboard players remove $lang option_panel 1
# enlève 1 au score de shop_timer

execute if score $lang option_panel matches -1 run scoreboard players set $lang option_panel 1
# passe au cran précédent selon à combien on est

function lobby:option_panel/pages/main/lang/display
# affiche la nouvelle langue
function lobby:option_panel/pages/main/lang/update_lang
# update la nouvelle langue dans le lobby