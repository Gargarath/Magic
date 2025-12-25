## appelée lorsqu'on doit reset l'overlay de la place X (non_ready_sign / someone_reconnected...)
# rend déconnecté le joueur à la place X

data modify storage stats:leaderboards blue.player6.overlay set value "\uE709"
data modify storage stats:leaderboards blue.player6.head merge value {"color":"white"}

function main:gui/display/refresh_gui
# refresh le gui