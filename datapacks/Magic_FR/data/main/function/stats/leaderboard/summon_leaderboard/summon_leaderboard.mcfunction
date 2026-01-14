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

execute if score $current_check sort_killcount matches 1.. at @e[type=marker,tag=leaderboard_place_mvp,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/mvp
execute if score $current_check sort_killcount matches 1.. at @e[type=marker,tag=leaderboard_place_deadliest_player,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/deadliest_player
execute if score $current_check sort_killcount matches 1.. at @e[type=marker,tag=leaderboard_place_objectives_player,limit=1] run function main:stats/leaderboard/summon_leaderboard/statues/objectives_player
execute as @e[tag=leaderboard] run function main:stats/leaderboard/display/god_statues
# invoque les statues des meilleurs joueurs de la partie

execute at @e[tag=leaderboard_title,limit=1] run summon item_display ~ ~ ~ {Rotation:[180f,0f],billboard:"horizontal",item_display:"head",Tags:["leaderboard","leaderboard_title"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["final_score_title"]}}}}
# titre
execute at @e[tag=leaderboard_title,limit=1] run summon interaction ~1.8 ~-0.5 ~-0.1 {width:0.7f,height:0.7,response:1b,Tags:["leaderboard","leaderboard_title","leaderboard_title_left_clickable"]}
execute at @e[tag=leaderboard_title,limit=1] run summon interaction ~1.8 ~-0.5 ~ {width:0.7f,height:0.7,response:1b,Tags:["leaderboard","leaderboard_title","leaderboard_title_left_clickable"]}
# clickable left
execute at @e[tag=leaderboard_title,limit=1] run summon interaction ~-1.7 ~-0.5 ~-0.1 {width:0.7f,height:0.7,response:1b,Tags:["leaderboard","leaderboard_title","leaderboard_title_right_clickable"]}
execute at @e[tag=leaderboard_title,limit=1] run summon interaction ~-1.7 ~-0.5 ~ {width:0.7f,height:0.7,response:1b,Tags:["leaderboard","leaderboard_title","leaderboard_title_right_clickable"]}
# clickable right

execute as @e[type=minecraft:mannequin,tag=leaderboard] run rotate @s facing entity @e[type=minecraft:marker,tag=leaderboard_view_point,limit=1]
# fait regarder les statut vers la view_position

#execute as @e[tag=leaderboard] run function main:stats/leaderboard/display/god_statues
# invoque les statues des meilleurs joueurs de la partie

