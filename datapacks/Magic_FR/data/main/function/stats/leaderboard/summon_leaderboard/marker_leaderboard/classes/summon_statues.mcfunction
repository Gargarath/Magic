# appelée par rien
# permet aux admins d'invoquer les statues

kill @e[tag=leaderboard_gstatues]
execute at @e[type=marker,tag=leaderboard_place_warrior,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/classes/warrior
execute at @e[type=marker,tag=leaderboard_place_archer,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/classes/archer
execute at @e[type=marker,tag=leaderboard_place_mage,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/classes/mage
execute at @e[type=marker,tag=leaderboard_place_rogue,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/classes/rogue