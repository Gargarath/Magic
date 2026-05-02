## appelée dès qu'on doit refresh le gui (dans le lobby)
# permet de refresh de le gui

## SI ON EST DANS LE LOBBY
execute as @a[scores={opt_display_keybinds=1},tag=!red_team] run function main:gui/display/in_lobby/inlobby_non_red with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[scores={opt_display_keybinds=1},tag=red_team] run function main:gui/display/in_lobby/inlobby_red with entity @s EnderItems[0].components.minecraft:custom_data
# affiche le gui adapté aux joueurs pas dans l'arène
execute as @a[scores={opt_display_keybinds=1},tag=in_lobby_arena] run function main:gui/display/in_lobby/inarena with entity @s EnderItems[0].components.minecraft:custom_data
# affiche le gui adapté aux joueurs dans l'arène