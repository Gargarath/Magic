## appelée par clear_place et remove_member
# clear la place X

data modify storage stats:leaderboards blue.player2.head set value "\uE708"
data modify storage stats:leaderboards blue.player2.class.icon set value {"text":"\uE709"}
data modify storage stats:leaderboards blue.player2.overlay set value "\uE709"
scoreboard players reset @a[scores={blue_place=2}] blue_place
scoreboard players remove @a[tag=blue_team,scores={blue_place=3..}] blue_place 1
execute as @a[tag=blue_team,scores={blue_place=2..}] run function main:stats/scoreboard/blue_team_info/save_data/check_place
# décale tout les joueurs moins bien classé de 1 et resave leur place