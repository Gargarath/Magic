## appelée par check_place
# indique que le joueur X a le drapeau

data modify storage stats:leaderboards red.player1.overlay set value {"shadow_color":0,"text":"\uE302"}
data modify storage stats:leaderboards red.player1.head merge value {"color":"white"}

function main:gui/display/refresh_gui
# refresh le gui