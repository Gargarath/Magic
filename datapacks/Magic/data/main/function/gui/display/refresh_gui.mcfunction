## appelée dès qu'on doit refresh le gui (dans le lobby)
# permet de refresh de le gui

schedule clear main:gui/display/refresh_gui
# clear les autres schedule de cette fonction

## SI ON EST DANS LE LOBBY
execute if score lobby enable_loop matches 1 run function main:gui/display/in_lobby/refresh_gui

## SI ON EST IN GAME
execute if score lobby enable_loop matches 0 run function main:gui/display/in_game/refresh_gui

schedule function main:gui/display/refresh_gui 5t
# rappelle cette fonction dans 5t (car les title actionbar disparaissent après)