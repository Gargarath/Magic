## appelée par select_language quand @s a fini d'être initialised (a terme le tuto)
# permet de tag @s

tag @s add finished_tutorial
tag @s remove in_tutorial
scoreboard players set @s tutorial_step 0
scoreboard players set @s tutorial_timer 0
scoreboard players set @s tutorial_action 0
scoreboard players set @s Player 0
scoreboard players set @s InLobby 1
scoreboard players set @s InShop 0
scoreboard players set @s is_ready 0
scoreboard players set @s IsAlive 0
function main:initialised/tutorial/clear_overlay
dialog clear @s
title @s reset
execute if score lobby enable_loop matches 1 run gamemode adventure @s[gamemode=!adventure]
spawnpoint @s 0 100 0 180 0
execute if score lobby enable_loop matches 1 run tp @s 0 100 0 180 0
effect clear @s minecraft:invisibility
effect clear @s minecraft:resistance
function main:effects/refresh_persistent
execute if score lobby enable_loop matches 1 run function lobby:team_selector/give_lobby_team
execute if score lobby enable_loop matches 1 run function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
execute if score lobby enable_loop matches 1 run function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
execute if score lobby enable_loop matches 1 run function main:gui/display/refresh_gui
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5
function main:reconnect/someone_reconnected
