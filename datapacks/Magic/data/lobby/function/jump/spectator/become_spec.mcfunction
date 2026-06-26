## appelée par check_clicked_button quand @s clique pour devenir spec du jump
# met @s en spec du jump

tag @s add jump_spec
gamemode spectator @s

scoreboard players enable @s quit

function main:gui/display/refresh_gui
# actualise le gui de tous (car besoin de l'interface spec pour @s)