## appelée par check_place
# rend déconnecté le joueur à la place X

data modify storage stats:leaderboards red.player6.overlay set value {"shadow_color":0,"text":"\uE607"}
data modify storage stats:leaderboards red.player6.head merge value {"color":"white"}

function main:gui/display/refresh_gui
# refresh le gui