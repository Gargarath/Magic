## appelée dès qu'on doit refresh le gui (dans le lobby)
# permet de refresh de le gui

## SI ON EST DANS LE LOBBY
function main:gui/display/in_lobby/inlobby_non_red
function main:gui/display/in_lobby/inlobby_red
# affiche le gui adapté aux joueurs pas dans l'arène
execute as @a[tag=in_lobby_arena] run function main:gui/display/in_lobby/inarena
# affiche le gui adapté aux joueurs dans l'arène