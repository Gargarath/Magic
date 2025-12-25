## appelée par setup_leaderboard_endgame
## permet d'afficher les classements selon le nombre de joueurs

#scoreboard players set $current_check sort_killcount 12

execute if score $current_check sort_killcount matches 1.. at @e[type=marker,tag=leaderboard_place1,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/1
execute if score $current_check sort_killcount matches 2.. at @e[type=marker,tag=leaderboard_place2,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/2
execute if score $current_check sort_killcount matches 3.. at @e[type=marker,tag=leaderboard_place3,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/3
execute if score $current_check sort_killcount matches 4.. at @e[type=marker,tag=leaderboard_place4,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/4
execute if score $current_check sort_killcount matches 5.. at @e[type=marker,tag=leaderboard_place5,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/5
execute if score $current_check sort_killcount matches 6.. at @e[type=marker,tag=leaderboard_place6,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/6
execute if score $current_check sort_killcount matches 7.. at @e[type=marker,tag=leaderboard_place7,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/7
execute if score $current_check sort_killcount matches 8.. at @e[type=marker,tag=leaderboard_place8,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/8
execute if score $current_check sort_killcount matches 9.. at @e[type=marker,tag=leaderboard_place9,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/9
execute if score $current_check sort_killcount matches 10.. at @e[type=marker,tag=leaderboard_place10,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/10
execute if score $current_check sort_killcount matches 11.. at @e[type=marker,tag=leaderboard_place11,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/11
execute if score $current_check sort_killcount matches 12.. at @e[type=marker,tag=leaderboard_place12,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/12
# invoque les statues en fonction du nombre de joueur dans le classement


execute as @e[type=minecraft:mannequin,tag=leaderboard] run rotate @s facing entity @e[type=minecraft:marker,tag=leaderboard_view_point,limit=1]
# fait regarder les statut vers la view_position
