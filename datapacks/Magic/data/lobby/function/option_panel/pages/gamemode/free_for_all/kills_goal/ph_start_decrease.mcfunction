## appelee par interact_with_menu/check_clicked_button si @s clique sur le bouton moins
# passe au palier precedent du kills_goal

scoreboard players operation $kills_goal_old option_panel = $kills_goal option_panel
# garde la valeur de depart pour snap au palier precedent

execute if score $kills_goal_old option_panel matches ..1 run scoreboard players set $kills_goal option_panel 50
execute if score $kills_goal_old option_panel matches 2..5 run scoreboard players set $kills_goal option_panel 1
execute if score $kills_goal_old option_panel matches 6..10 run scoreboard players set $kills_goal option_panel 5
execute if score $kills_goal_old option_panel matches 11..15 run scoreboard players set $kills_goal option_panel 10
execute if score $kills_goal_old option_panel matches 16..20 run scoreboard players set $kills_goal option_panel 15
execute if score $kills_goal_old option_panel matches 21..25 run scoreboard players set $kills_goal option_panel 20
execute if score $kills_goal_old option_panel matches 26..30 run scoreboard players set $kills_goal option_panel 25
execute if score $kills_goal_old option_panel matches 31..35 run scoreboard players set $kills_goal option_panel 30
execute if score $kills_goal_old option_panel matches 36..40 run scoreboard players set $kills_goal option_panel 35
execute if score $kills_goal_old option_panel matches 41..45 run scoreboard players set $kills_goal option_panel 40
execute if score $kills_goal_old option_panel matches 46..50 run scoreboard players set $kills_goal option_panel 45
execute if score $kills_goal_old option_panel matches 51.. run scoreboard players set $kills_goal option_panel 50
# passe au cran precedent selon le palier actuel

# stock la valeur du shop at start et l'affiche
execute store result storage temp temp int 1 run scoreboard players get $kills_goal option_panel
data modify storage lobby:language translate merge from storage temp
function lobby:option_panel/pages/gamemode/free_for_all/kills_goal/display with storage lobby:language translate
