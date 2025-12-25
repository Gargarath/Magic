# Appellée par start_countdown
#permet de lancer le timer de 3/2/1

execute as @r[tag=blue_team,scores={Player=1..}] at @s anchored eyes positioned ^ ^ ^1 run summon text_display ~ ~ ~ {Tags:["start_countdown","start_countdown_blue"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.024f,0f,0f],scale:[0f,0f,0f]},text:{"color":"dark_green","text":"3"},background:16711680}
execute as @r[tag=red_team,scores={Player=1..}] at @s anchored eyes positioned ^ ^ ^1 run summon text_display ~ ~ ~ {Tags:["start_countdown","start_countdown_red"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.024f,0f,0f],scale:[0f,0f,0f]},text:{"color":"dark_green","text":"3"},background:16711680}
execute as @e[tag=start_countdown_blue] at @s facing entity @r[team=blue] eyes run rotate @s ~ ~
execute as @e[tag=start_countdown_red] at @s facing entity @r[team=red] eyes run rotate @s ~ ~

schedule function main:launch_arena/countdown/timer3 5t
# lance le timer dans 1s