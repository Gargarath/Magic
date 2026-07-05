## appelée dès qu'on doit refresh le gui (dans le lobby)
# permet de refresh de le gui

## SI ON EST DANS LE LOBBY
execute if score $gamemode option_panel matches 0 as @a[tag=initialised] unless data entity @s EnderItems[0].components.minecraft:custom_data.lobby_map_name run function main:gui/display/in_lobby/refresh_ffa_map_name with entity @s EnderItems[0].components.minecraft:custom_data
execute if score $gamemode option_panel matches 0 as @a[scores={opt_display_keybinds=1},tag=!in_podium] run function main:gui/display/in_lobby/inlobby_ffa with entity @s EnderItems[0].components.minecraft:custom_data
execute if score $gamemode option_panel matches 1 as @a[scores={opt_display_keybinds=1},tag=!red_team,tag=!in_podium] run function main:gui/display/in_lobby/inlobby_non_red with entity @s EnderItems[0].components.minecraft:custom_data
execute if score $gamemode option_panel matches 1 as @a[scores={opt_display_keybinds=1},tag=red_team,tag=!in_podium] run function main:gui/display/in_lobby/inlobby_red with entity @s EnderItems[0].components.minecraft:custom_data

# sur l'île des statistiques, affiche le GUI de la dernière partie
execute if data storage minecraft:matchinfo {last_game_gamemode:0b} as @a[scores={opt_display_keybinds=1},tag=in_podium] run function main:gui/display/in_lobby/inpodium_ffa with entity @s EnderItems[0].components.minecraft:custom_data
execute if data storage minecraft:matchinfo {last_game_gamemode:1b} as @a[scores={opt_display_keybinds=1},tag=in_podium,tag=!red_team] run function main:gui/display/in_lobby/inlobby_non_red with entity @s EnderItems[0].components.minecraft:custom_data
execute if data storage minecraft:matchinfo {last_game_gamemode:1b} as @a[scores={opt_display_keybinds=1},tag=in_podium,tag=red_team] run function main:gui/display/in_lobby/inlobby_red with entity @s EnderItems[0].components.minecraft:custom_data
# affiche le gui adapté aux joueurs pas dans l'arène
execute if score $gamemode option_panel matches 0 as @a[scores={opt_display_keybinds=1},tag=in_lobby_arena,tag=!in_podium] run function main:gui/display/in_lobby/inarena_ffa with entity @s EnderItems[0].components.minecraft:custom_data
execute if score $gamemode option_panel matches 1 as @a[scores={opt_display_keybinds=1},tag=in_lobby_arena,tag=!in_podium] run function main:gui/display/in_lobby/inarena with entity @s EnderItems[0].components.minecraft:custom_data
# affiche le gui adapté aux joueurs dans l'arène
