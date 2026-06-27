# Appelée par change_language apres un changement de langue.
# Actualise les textes visibles de @s sans toucher aux autres joueurs.

execute if score $gamemode option_panel matches 1 if score @s respawn_time matches 0.. run function gamemode:ctf/respawns/bossbar/refresh_name with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s gui_actionbar_alert matches 1.. run function main:gui/actionbar/set_translated_alert with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s cap_flag_time matches 1.. run function gamemode:ctf/capflag_droped/bossbar/set_translated_name with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s save_flag_time matches 1.. run function gamemode:ctf/saveflag/bossbar/set_translated_name with entity @s EnderItems[0].components.minecraft:custom_data

# clear admin book
execute if score @s operator matches 2 run clear @s *[minecraft:custom_data={admin_item:1b}]

## ITEMS EN PARTIE / SHOP
execute if score @s Player matches 1.. if entity @s[tag=warrior] run function stuff:stuff_warrior/stuffwarrior
execute if score @s Player matches 1.. if entity @s[tag=archer] run function stuff:stuff_archer/stuffarcher
execute if score @s Player matches 1.. if entity @s[tag=mage] run function stuff:stuff_mage/stuffmage
execute if score @s Player matches 1.. if entity @s[tag=rogue] run function stuff:stuff_rogue/stuffrogue
function main:items_positions/refresh_keybinds_from_current_stuff

## LIVRE DE STATS / HOTBAR DU LOBBY
execute if score @s InLobby matches 1 if score @s Player_last_game matches 1.. run function main:stats/stats_book/give_stat_books with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[tag=!in_lobby_arena] InLobby matches 1 run function lobby:hotbar_menu/drop_item

## SHOP
execute if score @s[scores={Player=1..}] InShop matches 1 run function shop:setup_shop with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s InShop matches 1 if score @s operator matches 2 run function stuff:give_admin_book with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={Player=-1}] InShop matches 1 run item replace entity @s[scores={operator=2}] inventory.26 from block 13 97 11 container.0

## OVERLAY DU SHOP
execute if score @s[scores={Player=1..}] InShop matches 1 if entity @s[tag=look_at_weapon1] run function shop:refresh/items/weapon1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={Player=1..}] InShop matches 1 if entity @s[tag=look_at_weapon1] run function shop:look_at/display_infos/display_infos with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s[scores={Player=1..}] InShop matches 1 if entity @s[tag=look_at_spell1] run function shop:refresh/items/spell1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={Player=1..}] InShop matches 1 if entity @s[tag=look_at_spell1] run function shop:look_at/display_infos/display_infos with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s[scores={Player=1..}] InShop matches 1 if entity @s[tag=look_at_spell2] run function shop:refresh/items/spell2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={Player=1..}] InShop matches 1 if entity @s[tag=look_at_spell2] run function shop:look_at/display_infos/display_infos with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s[scores={Player=1..}] InShop matches 1 if entity @s[tag=look_at_spell3] run function shop:refresh/items/spell3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={Player=1..}] InShop matches 1 if entity @s[tag=look_at_spell3] run function shop:look_at/display_infos/display_infos with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s[scores={Player=1..}] InShop matches 1 if entity @s[tag=look_at_chest] run function shop:refresh/items/chest with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={Player=1..}] InShop matches 1 if entity @s[tag=look_at_chest] run function shop:look_at/display_infos/display_infos with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s[scores={Player=1..}] InShop matches 1 if entity @s[tag=look_at_legs] run function shop:refresh/items/legs with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={Player=1..}] InShop matches 1 if entity @s[tag=look_at_legs] run function shop:look_at/display_infos/display_infos with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s[scores={Player=1..}] InShop matches 1 if entity @s[tag=look_at_boots] run function shop:refresh/items/boots with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[scores={Player=1..}] InShop matches 1 if entity @s[tag=look_at_boots] run function shop:look_at/display_infos/display_infos with entity @s EnderItems[0].components.minecraft:custom_data

# SECONDARY OBJECTIVES
execute if score lonny enable_loop matches 0 if score shop enable_loop matches 0 run scoreboard players set $refresh secondary_objective_slot 1
execute if score lonny enable_loop matches 0 if score shop enable_loop matches 0 if score @s secondary_objective_slot matches 1..32 unless score is_over secnd_objective matches 1 run function gamemode:ctf/secondary_objectives/bossbar/sync_player
execute if score lonny enable_loop matches 0 if score shop enable_loop matches 0 run scoreboard players set $refresh secondary_objective_slot 0

## Nom de map
execute unless score @s InLobby matches 1 if score $show_next_map option_panel matches 0 run function main:launch_arena/hide_map_name
execute unless score @s InLobby matches 1 if score $show_next_map option_panel matches 1 run function main:launch_arena/save_map_name with entity @s EnderItems[0].components.minecraft:custom_data
# si pas dans le lobby -> stock ou masque la map selon l'option
