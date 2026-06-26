## appelée par someone_disconnected
# rend déconnecté le joueur à la place X

data modify storage stats:leaderboards red.player3.overlay set value {"shadow_color":0,"text":"\uE606"}
data modify storage stats:leaderboards red.player3.head merge value {"color":"dark_gray"}

function main:gui/display/refresh_gui
# refresh le gui