## appelée dès qu'on doit refresh le gui (in game)
# permet de refresh de le gui

## SI ON EST EN FFA
execute if score $gamemode option_panel matches 0 as @a run function main:gui/display/in_game/ingame_ffa with entity @s EnderItems[0].components.minecraft:custom_data

## SI ON EST EN CTF
execute if score $gamemode option_panel matches 1 as @a[tag=!red_team] run function main:gui/display/in_game/ingame_non_red with entity @s EnderItems[0].components.minecraft:custom_data
# affiche le gui adapté aux joueurs non rouges (bleus ou spec)
execute if score $gamemode option_panel matches 1 as @a[tag=red_team] run function main:gui/display/in_game/ingame_red with entity @s EnderItems[0].components.minecraft:custom_data
# affiche le gui adapté aux joueurs rouges