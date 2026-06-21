## appelée par interact_with_interaction/check_clicked_button si @s clique pour avoir ses stats
# permet d'afficher les données de @s sur son record


team leave @s
tag @s add get_name
execute at @s run data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[tag=get_name,limit=1]"},"","",""]}}
tag @s remove get_name
data modify storage stats:jump temp.name set from block 14 97 13 front_text.messages[0]
function lobby:team_selector/give_lobby_team
data modify storage stats:jump temp.head.player.id set from entity @s UUID

$tellraw @s [{"color":"gold","text":"\n-- "},{"text":"$(tr_jump_leaderboard_title_1)","color":"gold"},{"color":"white","interpret":true,"nbt":"temp.head","storage":"stats:jump"}," ",{"color":"green","interpret":true,"nbt":"temp.name","storage":"stats:jump"},{"color":"yellow","text":" "},{"text":"$(tr_jump_leaderboard_title_2)","color":"yellow"},{"color":"yellow","text":" n\u00B01"},{"color":"gold","text":" --"}]

$tellraw @s[scores={jump1_fall_pr=0..1}] [{"text":"$(tr_jump_leaderboard_best_time)"},{"text":" "},{"color":"green","score":{"name":"@s","objective":"jump1_timer_min10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_timer_min01_pr"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump1_timer_sec10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_timer_sec01_pr"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump1_timer_dec10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_timer_dec01_pr"}}," - ",{"color":"green","score":{"name":"@s","objective":"jump1_fall_pr"}},{"text":" "},{"text":"$(tr_jump_leaderboard_fall)"}]
$tellraw @s[scores={jump1_fall_pr=2..}] [{"text":"$(tr_jump_leaderboard_best_time)"},{"text":" "},{"color":"green","score":{"name":"@s","objective":"jump1_timer_min10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_timer_min01_pr"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump1_timer_sec10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_timer_sec01_pr"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump1_timer_dec10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_timer_dec01_pr"}}," - ",{"color":"green","score":{"name":"@s","objective":"jump1_fall_pr"}},{"text":" "},{"text":"$(tr_jump_leaderboard_fall)"}]

$execute if score @s jump1_score_pr matches 1000000 run tellraw @s [{"color":"gray","text":"* "},{"text":"$(tr_jump_not_finished)","color":"gray"},{"color":"gray","text":" *"}]

$execute unless score @s jump1_score_pr matches 1000000 unless score @s jump1_cp1_pr matches 0 run tellraw @s [{"text":"  - "},{"text":"$(tr_jump_leaderboard_checkpoint)"},{"text":" n\u00B01 : "},{"color":"green","score":{"name":"@s","objective":"jump1_cp1_timer_min10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_cp1_timer_min01_pr"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump1_cp1_timer_sec10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_cp1_timer_sec01_pr"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump1_cp1_timer_dec10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_cp1_timer_dec01_pr"}}]
$execute unless score @s jump1_score_pr matches 1000000 if score @s jump1_cp1_pr matches 0 run tellraw @s [{"text":"  - "},{"text":"$(tr_jump_leaderboard_checkpoint)"},{"text":" n\u00B01 : "},{"color":"green","text":"—"}]
$execute unless score @s jump1_score_pr matches 1000000 unless score @s jump1_cp2_pr matches 0 run tellraw @s [{"text":"  - "},{"text":"$(tr_jump_leaderboard_checkpoint)"},{"text":" n\u00B02 : "},{"color":"green","score":{"name":"@s","objective":"jump1_cp2_timer_min10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_cp2_timer_min01_pr"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump1_cp2_timer_sec10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_cp2_timer_sec01_pr"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump1_cp2_timer_dec10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_cp2_timer_dec01_pr"}}]
$execute unless score @s jump1_score_pr matches 1000000 if score @s jump1_cp2_pr matches 0 run tellraw @s [{"text":"  - "},{"text":"$(tr_jump_leaderboard_checkpoint)"},{"text":" n\u00B02 : "},{"color":"green","text":"—"}]
$tellraw @s [{"text":"\n"},{"text":"$(tr_jump_leaderboard_total_try)"},{"text":" "},{"color":"green","score":{"name":"@s","objective":"jump1_tries"}}]
$tellraw @s [{"text":"$(tr_jump_leaderboard_total_fall)"},{"text":" "},{"color":"green","score":{"name":"@s","objective":"jump1_fall"}}]