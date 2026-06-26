## appelée par interact_with_interaction/check_clicked_button si @s clique pour avoir les stats du rankX
# permet d'afficher les données du rank X

$execute if data storage stats:jump 1.rank6{name:""} run return run tellraw @s [{"color":"gray","text":"* "},{"text":"$(tr_jump_leaderboard_no_data)","color":"gray"},{"color":"gray","text":" *"}]
# si le storage est vide -> annule et renvoi aucune donnée

$tellraw @s [{"color":"gold","text":"\n-- "},{"text":"$(tr_jump_leaderboard_title_1)","color":"gold"},{"text":"6. ","color":"yellow"},{"color":"white","interpret":true,"nbt":"1.rank6.head","storage":"stats:jump"}," ",{"color":"green","interpret":true,"nbt":"1.rank6.name","storage":"stats:jump"},{"color":"yellow","text":" "},{"text":"$(tr_jump_leaderboard_title_2)","color":"yellow"},{"color":"yellow","text":" n\u00B01"},{"color":"gold","text":" --"}]

$tellraw @s [{"text":"$(tr_jump_leaderboard_best_time)"},{"text":" "},{"color":"green","nbt":"1.rank6.min10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank6.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"1.rank6.sec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank6.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"1.rank6.dec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank6.dec01","storage":"stats:jump","plain":true}," - ",{"color":"green","nbt":"1.rank6.fall_pr","storage":"stats:jump","plain":true},{"text":" "},{"text":"$(tr_jump_leaderboard_fall)"}]

execute store result score #tmp jump1_cp1 run data get storage stats:jump 1.rank6.cp1.time

$execute unless score #tmp jump1_cp1 matches 0 run tellraw @s [{"text":"  - "},{"text":"$(tr_jump_leaderboard_checkpoint)"},{"text":" n\u00B01 : "},{"color":"green","nbt":"1.rank6.cp1.min10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank6.cp1.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"1.rank6.cp1.sec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank6.cp1.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"1.rank6.cp1.dec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank6.cp1.dec01","storage":"stats:jump","plain":true}]
$execute if score #tmp jump1_cp1 matches 0 run tellraw @s [{"text":"  - "},{"text":"$(tr_jump_leaderboard_checkpoint)"},{"text":" n\u00B01 : "},{"color":"green","text":"—"}]

execute store result score #tmp jump1_cp2 run data get storage stats:jump 1.rank6.cp2.time

$execute unless score #tmp jump1_cp2 matches 0 run tellraw @s [{"text":"  - "},{"text":"$(tr_jump_leaderboard_checkpoint)"},{"text":" n\u00B02 : "},{"color":"green","nbt":"1.rank6.cp2.min10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank6.cp2.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"1.rank6.cp2.sec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank6.cp2.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"1.rank6.cp2.dec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank6.cp2.dec01","storage":"stats:jump","plain":true}]
$execute if score #tmp jump1_cp2 matches 0 run tellraw @s [{"text":"  - "},{"text":"$(tr_jump_leaderboard_checkpoint)"},{"text":" n\u00B02 : "},{"color":"green","text":"—"}]

$tellraw @s [{"text":"\n"},{"text":"$(tr_jump_leaderboard_total_try)"},{"text":" "},{"color":"green","nbt":"1.rank6.tries","storage":"stats:jump","plain":true}]
$tellraw @s [{"text":"$(tr_jump_leaderboard_total_fall)"},{"text":" "},{"color":"green","nbt":"1.rank6.fall","storage":"stats:jump","plain":true}]