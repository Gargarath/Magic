## appelée par setup_leaderboard_endgame
## permet d'afficher les classements selon le nombre de joueurs

#scoreboard players set $current_check sort_killcount 12

execute if score $current_check sort_killcount matches 1.. at @n[type=marker,tag=leaderboard_place1] run function main:stats/leaderboard/summon_leaderboard/statues/1 with storage lobby:language translate
execute if score $current_check sort_killcount matches 2.. at @n[type=marker,tag=leaderboard_place2] run function main:stats/leaderboard/summon_leaderboard/statues/2 with storage lobby:language translate
execute if score $current_check sort_killcount matches 3.. at @n[type=marker,tag=leaderboard_place3] run function main:stats/leaderboard/summon_leaderboard/statues/3 with storage lobby:language translate
execute if score $current_check sort_killcount matches 4.. at @n[type=marker,tag=leaderboard_place4] run function main:stats/leaderboard/summon_leaderboard/statues/4 with storage lobby:language translate
execute if score $current_check sort_killcount matches 5.. at @n[type=marker,tag=leaderboard_place5] run function main:stats/leaderboard/summon_leaderboard/statues/5 with storage lobby:language translate
execute if score $current_check sort_killcount matches 6.. at @n[type=marker,tag=leaderboard_place6] run function main:stats/leaderboard/summon_leaderboard/statues/6 with storage lobby:language translate
execute if score $current_check sort_killcount matches 7.. at @n[type=marker,tag=leaderboard_place7] run function main:stats/leaderboard/summon_leaderboard/statues/7 with storage lobby:language translate
execute if score $current_check sort_killcount matches 8.. at @n[type=marker,tag=leaderboard_place8] run function main:stats/leaderboard/summon_leaderboard/statues/8 with storage lobby:language translate
execute if score $current_check sort_killcount matches 9.. at @n[type=marker,tag=leaderboard_place9] run function main:stats/leaderboard/summon_leaderboard/statues/9 with storage lobby:language translate
execute if score $current_check sort_killcount matches 10.. at @n[type=marker,tag=leaderboard_place10] run function main:stats/leaderboard/summon_leaderboard/statues/10 with storage lobby:language translate
execute if score $current_check sort_killcount matches 11.. at @n[type=marker,tag=leaderboard_place11] run function main:stats/leaderboard/summon_leaderboard/statues/11 with storage lobby:language translate
execute if score $current_check sort_killcount matches 12.. at @n[type=marker,tag=leaderboard_place12] run function main:stats/leaderboard/summon_leaderboard/statues/12 with storage lobby:language translate
# invoque les statues en fonction du nombre de joueur dans le classement

execute if score $current_check sort_killcount matches 1.. at @n[type=marker,tag=leaderboard_place_mvp] run function main:stats/leaderboard/summon_leaderboard/statues/mvp with storage lobby:language translate
execute if score $current_check sort_killcount matches 1.. at @n[type=marker,tag=leaderboard_place_deadliest_player] run function main:stats/leaderboard/summon_leaderboard/statues/deadliest_player with storage lobby:language translate
execute if score $current_check sort_killcount matches 1.. at @n[type=marker,tag=leaderboard_place_objectives_player] run function main:stats/leaderboard/summon_leaderboard/statues/objectives_player with storage lobby:language translate
execute as @e[type=#leaderboard_statues_display,tag=leaderboard] run function main:stats/leaderboard/display/god_statues/god_statues
# invoque les statues des meilleurs joueurs de la partie

execute at @n[type=marker,tag=leaderboard_title] run summon item_display ~ ~ ~ {Rotation:[180f,0f],billboard:"horizontal",item_display:"head",Tags:["leaderboard","leaderboard_title"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["final_score_title"]}}}}
# titre
execute at @n[type=marker,tag=leaderboard_title] run summon interaction ~1.8 ~-0.6 ~-0.1 {width:0.7f,height:0.7,response:1b,Tags:["leaderboard","leaderboard_title","leaderboard_title_left_clickable"]}
# clickable left
execute at @n[type=marker,tag=leaderboard_title] run summon interaction ~-1.7 ~-0.6 ~-0.1 {width:0.7f,height:0.7,response:1b,Tags:["leaderboard","leaderboard_title","leaderboard_title_right_clickable"]}
# clickable right

execute as @e[type=minecraft:mannequin,tag=leaderboard] run rotate @s facing entity @e[type=minecraft:marker,tag=leaderboard_view_point,limit=1]
# fait regarder les statut vers la view_position