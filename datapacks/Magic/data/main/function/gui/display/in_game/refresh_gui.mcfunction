## appelée dès qu'on doit refresh le gui (dans le lobby)
# permet de refresh de le gui

## SI ON EST DANS LE LOBBY
execute as @a[tag=!red_team] run function main:gui/display/in_game/ingame_non_red with entity @s EnderItems[0].components.minecraft:custom_data
# affiche le gui adapté aux joueurs non rouges (bleus ou spec)
execute as @a[tag=red_team] run function main:gui/display/in_game/ingame_red with entity @s EnderItems[0].components.minecraft:custom_data
# affiche le gui adapté aux joueurs rouges