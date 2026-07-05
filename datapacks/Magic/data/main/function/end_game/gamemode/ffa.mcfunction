## appelée par gamemode:ctf/end_game/X ou gamemode/ffa/loop quand la partie est finie
# permet de terminer la partie

execute as @a run function main:end_game/save_last_game_map_name

function main:reset/resetffa
# reset tout ce qui est lié au FFA

execute as @a run function main:ressource_pack_detector/display_something_else/show_another_message
tag @s add endgame_ffa_winner
execute as @a run function main:end_game/messages/ffa with entity @s EnderItems[0].components.minecraft:custom_data
tag @s remove endgame_ffa_winner

scoreboard players add @s stat_victory 1
