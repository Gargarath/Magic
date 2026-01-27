## appelée par les différent red_won de capture_point ou bossfight
# permet d'afficher la victoire des rouges sur la barre d'affichage

scoreboard players set red_won_last secnd_objective 1
scoreboard players add red_wins secnd_objective 1
execute if score red_wins secnd_objective matches 1 run data modify storage minecraft:matchinfo.red scnd_objective_completed set value {"text":"\uE308\uE307\uE307","shadow_color":855309,"color":"white","bold":false}
execute if score red_wins secnd_objective matches 2 run data modify storage minecraft:matchinfo.red scnd_objective_completed set value {"text":"\uE308\uE308\uE307","shadow_color":855309,"color":"white","bold":false}
execute if score red_wins secnd_objective matches 3 run data modify storage minecraft:matchinfo.red scnd_objective_completed set value {"text":"\uE308\uE308\uE308","shadow_color":855309,"color":"white","bold":false}
function main:gui/display/refresh_gui