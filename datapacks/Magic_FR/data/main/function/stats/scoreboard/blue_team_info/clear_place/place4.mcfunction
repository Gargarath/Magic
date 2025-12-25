## appelée par clear_place et remove_member
# clear la place X

data modify storage stats:leaderboards blue.player4.head set value "\uE708"
data modify storage stats:leaderboards blue.player4.class.icon set value "\uE709"
data modify storage stats:leaderboards blue.player4.overlay set value "\uE709"
scoreboard players reset @a[scores={blue_place=4}] blue_place
scoreboard players remove @a[tag=blue_team,scores={blue_place=5..}] blue_place 1
execute as @a[tag=blue_team,scores={blue_place=4..}] run function main:stats/scoreboard/blue_team_info/save_data/check_place
# décale tout les joueurs moins bien classé de 1 et resave leur place