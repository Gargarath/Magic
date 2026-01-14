## permet de clear le leaderboard

tp @e[type=mannequin,tag=leaderboard] 0 -100 0
tp @e[type=creeper,tag=leaderboard] 0 -100 0
kill @e[type=mannequin,tag=leaderboard]
kill @e[type=creeper,tag=leaderboard]
# tue les statues

kill @e[type=interaction,tag=leaderboard]
kill @e[type=text_display,tag=leaderboard]
kill @e[type=item_display,tag=leaderboard]
# tue les textes

scoreboard players set current_page leaderboard 1
execute as @e[tag=leaderboard] run function main:stats/leaderboard/display/kd_ratio
# affiche la page de ratio