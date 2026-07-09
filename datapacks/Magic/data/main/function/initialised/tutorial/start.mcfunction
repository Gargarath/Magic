## Appelee apres le choix de langue.
## Isole le joueur de la map jusqu'a la fin du tutoriel.

tag @s add in_tutorial
tag @s remove finished_tutorial
tag @s remove save_inventory
tag @s add inventory_rebuilding
clear @s
scoreboard players set @s Player -2
scoreboard players set @s InLobby 0
scoreboard players set @s InShop 0
scoreboard players set @s is_ready 0
scoreboard players set @s IsAlive 0
scoreboard players set @s tutorial_step 1
scoreboard players set @s tutorial_timer 0
scoreboard players set @s tutorial_action 0
scoreboard players enable @s tutorial_action
function main:initialised/tutorial/setup_cameras
gamemode spectator @s[gamemode=!spectator]
effect clear @s
effect give @s minecraft:resistance infinite 255 true
effect give @s minecraft:night_vision infinite 0 true
attribute @s minecraft:waypoint_receive_range base set 0
attribute @s minecraft:waypoint_transmit_range base set 0
spawnpoint @s 0 110 18 180 10
function main:initialised/tutorial/spectate_intro
function main:initialised/tutorial/clear_overlay
function main:initialised/tutorial/show_intro
tag @s remove inventory_rebuilding
