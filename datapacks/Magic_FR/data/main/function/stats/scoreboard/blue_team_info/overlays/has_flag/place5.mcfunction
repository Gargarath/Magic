## appelée par check_place
# indique que le joueur X a le drapeau

data modify storage stats:leaderboards blue.player5.overlay set value {"shadow_color":0,"text":"\uE305"}
data modify storage stats:leaderboards blue.player5.head merge value {"color":"white"}

function main:gui/display/refresh_gui
# refresh le gui