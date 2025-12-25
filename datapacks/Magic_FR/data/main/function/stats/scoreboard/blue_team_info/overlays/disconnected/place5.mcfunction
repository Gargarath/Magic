## appelée par
# rend déconnecté le joueur à la place X

data modify storage stats:leaderboards blue.player5.overlay set value {"shadow_color":0,"text":"\uE606"}
data modify storage stats:leaderboards blue.player5.head merge value {"color":"dark_gray"}

function main:gui/display/refresh_gui
# refresh le gui