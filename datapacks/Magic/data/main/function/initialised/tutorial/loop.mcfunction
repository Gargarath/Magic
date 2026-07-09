scoreboard players enable @s tutorial_action
function main:initialised/tutorial/setup_cameras

execute if score @s tutorial_action matches 2 run dialog clear @s
execute if score @s tutorial_action matches 2 run scoreboard players set @s tutorial_action 0
execute if score @s tutorial_action matches 1 run function main:initialised/tutorial/finished_tutorial
execute unless entity @s[tag=in_tutorial] run return 1

scoreboard players add @s tutorial_timer 1

gamemode spectator @s[gamemode=!spectator]

execute if score @s tutorial_step matches 1 run function main:initialised/tutorial/scene_intro
execute if score @s tutorial_step matches 2 run function main:initialised/tutorial/scene_classes
execute if score @s tutorial_step matches 3 run function main:initialised/tutorial/scene_spells
execute if score @s tutorial_step matches 4 run function main:initialised/tutorial/scene_shop
execute if score @s tutorial_step matches 5 run function main:initialised/tutorial/scene_modes
execute if score @s tutorial_step matches 6 run function main:initialised/tutorial/show_finish

function main:initialised/tutorial/render_overlay
function main:initialised/tutorial/highlight
