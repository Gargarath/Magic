## appelée par setup_leaderboard_endgame au nom de tous les joueurs de la game précédente
# permet de créer les livres de stats de @s

data modify storage temp:sort storage set from entity @s EnderItems[0].components.minecraft:custom_data
execute store result storage temp:sort storage.player_last_game int 1 run scoreboard players get @s Player_last_game

# setup le rank de @s selon le placement
execute if score @s sort_killcount matches 1 run data modify storage temp:sort storage.ffa_rank set from entity @s EnderItems[0].components.minecraft:custom_data.tr_stats_book_result_ffa_1
execute if score @s sort_killcount matches 2 run data modify storage temp:sort storage.ffa_rank set from entity @s EnderItems[0].components.minecraft:custom_data.tr_stats_book_result_ffa_2
execute if score @s sort_killcount matches 3 run data modify storage temp:sort storage.ffa_rank set from entity @s EnderItems[0].components.minecraft:custom_data.tr_stats_book_result_ffa_3
execute if score @s sort_killcount matches 4 run data modify storage temp:sort storage.ffa_rank set from entity @s EnderItems[0].components.minecraft:custom_data.tr_stats_book_result_ffa_4
execute if score @s sort_killcount matches 5 run data modify storage temp:sort storage.ffa_rank set from entity @s EnderItems[0].components.minecraft:custom_data.tr_stats_book_result_ffa_5
execute if score @s sort_killcount matches 6 run data modify storage temp:sort storage.ffa_rank set from entity @s EnderItems[0].components.minecraft:custom_data.tr_stats_book_result_ffa_6
execute if score @s sort_killcount matches 7 run data modify storage temp:sort storage.ffa_rank set from entity @s EnderItems[0].components.minecraft:custom_data.tr_stats_book_result_ffa_7
execute if score @s sort_killcount matches 8 run data modify storage temp:sort storage.ffa_rank set from entity @s EnderItems[0].components.minecraft:custom_data.tr_stats_book_result_ffa_8
execute if score @s sort_killcount matches 9 run data modify storage temp:sort storage.ffa_rank set from entity @s EnderItems[0].components.minecraft:custom_data.tr_stats_book_result_ffa_9
execute if score @s sort_killcount matches 10 run data modify storage temp:sort storage.ffa_rank set from entity @s EnderItems[0].components.minecraft:custom_data.tr_stats_book_result_ffa_10
execute if score @s sort_killcount matches 11 run data modify storage temp:sort storage.ffa_rank set from entity @s EnderItems[0].components.minecraft:custom_data.tr_stats_book_result_ffa_11
execute if score @s sort_killcount matches 12 run data modify storage temp:sort storage.ffa_rank set from entity @s EnderItems[0].components.minecraft:custom_data.tr_stats_book_result_ffa_12

$execute if score @s result_last_game matches 0 run data modify storage temp:sort storage.ctf_result set value {"text":"$(tr_stats_book_result_ctf_draw)","color":"gray","bold":true}
$execute if score @s result_last_game matches 1 run data modify storage temp:sort storage.ctf_result set value {"text":"$(tr_stats_book_result_ctf_win)","color":"gold","bold":true}
$execute if score @s result_last_game matches 2 run data modify storage temp:sort storage.ctf_result set value {"text":"$(tr_stats_book_result_ctf_loose)","color":"dark_red","bold":true}

$execute if score @s class_id matches 1 run data modify storage temp:sort storage.class_last_game set value {"text":"[$(tr_stats_warrior)]","color":"gold","bold":true}
$execute if score @s class_id matches 2 run data modify storage temp:sort storage.class_last_game set value {"text":"[$(tr_stats_archer)]","color":"dark_red","bold":true}
$execute if score @s class_id matches 3 run data modify storage temp:sort storage.class_last_game set value {"text":"[$(tr_stats_mage)]","color":"dark_purple","bold":true}
$execute if score @s class_id matches 4 run data modify storage temp:sort storage.class_last_game set value {"text":"[$(tr_stats_rogue)]","color":"gray","bold":true}

$execute if score @s team_side matches 1 run data modify storage temp:sort storage.team_last_game set value {"text":"$(tr_stats_book_team_blue)","color":"blue","bold":true}
$execute if score @s team_side matches 2 run data modify storage temp:sort storage.team_last_game set value {"text":"$(tr_stats_book_team_red)","color":"red","bold":true}

function main:personnal_data/save_new_data with storage temp:sort
# ajoute le rank de la game et le numéro de joueur dans la data de @s

function main:stats/stats_book/playerx/setup_playerx with entity @s EnderItems[0].components.minecraft:custom_data