## appelée par gamemode:ctf/end_game/X ou gamemode/ffa/loop quand la partie est finie
# permet de terminer la partie

function main:reset/resetffa
# reset tout ce qui est lié au FFA

execute as @a run function main:ressource_pack_detector/display_something_else/show_another_message
title @a title {"selector":"@s"}
title @a subtitle ["",{"text":"gagne avec ","color":"gold"},{"score":{"name":"@s","objective":"stat_killcount_player"},"color":"yellow"},{"text":" kills","color":"gold"},]

scoreboard players add @s stat_victory 1
