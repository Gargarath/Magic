## appelée par clear_place et remove_member
# clear la place X

data modify storage stats:leaderboards red.player5.head set value "\uE708"
data modify storage stats:leaderboards red.player5.class.icon set value {"text":"\uE709"}
data modify storage stats:leaderboards red.player5.overlay set value "\uE709"
scoreboard players reset @a[scores={red_place=5}] red_place
scoreboard players remove @a[tag=red_team,scores={red_place=6..}] red_place 1
execute as @a[tag=red_team,scores={red_place=5..}] run function main:stats/scoreboard/red_team_info/save_data/check_place
# décale tout les joueurs moins bien classé de 1 et resave leur place
