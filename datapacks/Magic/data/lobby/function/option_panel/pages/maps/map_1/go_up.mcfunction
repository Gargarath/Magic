## appelée par interact_with_menu/check_clicked_button si un modo à cliqué sur le menu arènes
# permet d'afficher le menu -> arènes

execute if score $gamemode option_panel matches 0 run scoreboard players add map_1 map_selection 1
execute if score $gamemode option_panel matches 0 if score map_1 map_selection matches 8 run scoreboard players set map_1 map_selection 0
execute if score $gamemode option_panel matches 1 run scoreboard players add map_1 map_selection 1
execute if score $gamemode option_panel matches 1 if score map_1 map_selection matches 7 run scoreboard players set map_1 map_selection 0

function lobby:option_panel/pages/maps/map_1/display
execute if score $gamemode option_panel matches 0 run function lobby:option_panel/pages/maps/ffa_map/refresh_subtitle with storage lobby:language translate
execute if score $gamemode option_panel matches 0 run function lobby:option_panel/pages/maps/ffa_map/refresh_night_mode with storage lobby:language translate

execute if score $gamemode option_panel matches 0 as @a[tag=initialised] run function main:gui/display/in_lobby/refresh_ffa_map_name with entity @s EnderItems[0].components.minecraft:custom_data
