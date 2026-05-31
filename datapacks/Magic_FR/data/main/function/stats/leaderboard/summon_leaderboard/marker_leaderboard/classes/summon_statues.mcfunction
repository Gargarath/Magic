# appelée par rien
# permet aux admins d'invoquer les statues

kill @e[tag=leaderboard_gstatues]

data modify storage stats:temp macro set from storage lobby:language translate
execute if data storage minecraft:matchinfo {last_game_gamemode:0b} run data modify storage stats:temp macro.mode set value "ffa"
execute if data storage minecraft:matchinfo {last_game_gamemode:1b} run data modify storage stats:temp macro.mode set value "ctf"
data modify storage stats:temp macro.stat set value "stat_final_score"

execute at @e[type=marker,tag=leaderboard_place_warrior,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/classes/warrior with storage stats:temp macro
execute at @e[type=marker,tag=leaderboard_place_archer,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/classes/archer with storage stats:temp macro
execute at @e[type=marker,tag=leaderboard_place_mage,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/classes/mage with storage stats:temp macro
execute at @e[type=marker,tag=leaderboard_place_rogue,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/classes/rogue with storage stats:temp macro