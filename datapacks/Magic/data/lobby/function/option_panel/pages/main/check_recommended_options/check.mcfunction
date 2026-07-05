## appelée par display_main_tab quand on affiche la page principale du panneau d'options
## permet de check si on a les options recommandées d'activées

scoreboard players set $recommended_optns option_panel 1


execute if score $gamemode option_panel matches 0 run function lobby:option_panel/pages/main/check_recommended_options/ffa
execute if score $gamemode option_panel matches 1 run function lobby:option_panel/pages/main/check_recommended_options/ctf