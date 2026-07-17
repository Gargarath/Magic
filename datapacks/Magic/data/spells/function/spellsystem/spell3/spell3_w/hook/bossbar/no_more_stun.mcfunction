## called by spells:loop when @s is not stunned anymore
## clear all @s stuned effect

scoreboard players set @s hooked_w -1
function stuff:status_items/refresh_overlay
# indicate that @s is no more stuned

execute if score @s hooked_by_player matches 1 run bossbar set hook_someone:player1 players
execute if score @s hooked_by_player matches 2 run bossbar set hook_someone:player2 players
execute if score @s hooked_by_player matches 3 run bossbar set hook_someone:player3 players
execute if score @s hooked_by_player matches 4 run bossbar set hook_someone:player4 players
execute if score @s hooked_by_player matches 5 run bossbar set hook_someone:player5 players
execute if score @s hooked_by_player matches 6 run bossbar set hook_someone:player6 players
execute if score @s hooked_by_player matches 7 run bossbar set hook_someone:player7 players
execute if score @s hooked_by_player matches 8 run bossbar set hook_someone:player8 players
execute if score @s hooked_by_player matches 9 run bossbar set hook_someone:player9 players
execute if score @s hooked_by_player matches 10 run bossbar set hook_someone:player10 players
execute if score @s hooked_by_player matches 11 run bossbar set hook_someone:player11 players
execute if score @s hooked_by_player matches 12 run bossbar set hook_someone:player12 players
# reset the bossbar from the hooker

execute if score @s Player matches 1 run bossbar set hooked:player1 players
execute if score @s Player matches 2 run bossbar set hooked:player2 players
execute if score @s Player matches 3 run bossbar set hooked:player3 players
execute if score @s Player matches 4 run bossbar set hooked:player4 players
execute if score @s Player matches 5 run bossbar set hooked:player5 players
execute if score @s Player matches 6 run bossbar set hooked:player6 players
execute if score @s Player matches 7 run bossbar set hooked:player7 players
execute if score @s Player matches 8 run bossbar set hooked:player8 players
execute if score @s Player matches 9 run bossbar set hooked:player9 players
execute if score @s Player matches 10 run bossbar set hooked:player10 players
execute if score @s Player matches 11 run bossbar set hooked:player11 players
execute if score @s Player matches 12 run bossbar set hooked:player12 players
# reset @s bossbar depending on his Player number

attribute @s[scores={trapped=-1}] minecraft:movement_speed base reset
attribute @s[scores={trapped=-1}] minecraft:jump_strength base reset
attribute @s[scores={trapped=-1}] minecraft:knockback_resistance base reset
# clear immobility from @s if he is not already trapped

tp @s @s
# stop motion from @s to avoid him jumping in the sky at next damage received

scoreboard players reset @s hooked_by_player
# reset the score that indicate by which player @s has been hooked

