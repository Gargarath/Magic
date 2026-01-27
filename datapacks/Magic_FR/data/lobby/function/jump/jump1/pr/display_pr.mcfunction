## appelée par interact_with_interaction/check_clicked_button si @s clique pour avoir ses stats
# permet d'afficher les données de @s sur son record


team leave @s
tag @s add get_name
execute at @s run data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[tag=get_name,limit=1]"},"","",""]}}
tag @s remove get_name
data modify storage stats:jump temp.name set from block 14 97 13 front_text.messages[0]
function lobby:team_selector/give_lobby_team
data modify storage stats:jump temp.head.player.id set from entity @s UUID

tellraw @s [{"color":"gold","text":"\n-- Record de "},{"color":"white","interpret":true,"nbt":"temp.head","storage":"stats:jump"}," ",{"color":"green","interpret":true,"nbt":"temp.name","storage":"stats:jump"},{"color":"yellow","text":" parcours n°1"},{"color":"gold","text":" --"}]

tellraw @s[scores={jump1_fall_pr=0..1}] ["Meilleur temps : ",{"color":"green","score":{"name":"@s","objective":"jump1_timer_min10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_timer_min01_pr"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump1_timer_sec10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_timer_sec01_pr"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump1_timer_dec10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_timer_dec01_pr"}}," - ",{"color":"green","score":{"name":"@s","objective":"jump1_fall_pr"}}," chute"]
tellraw @s[scores={jump1_fall_pr=2..}] ["Meilleur temps : ",{"color":"green","score":{"name":"@s","objective":"jump1_timer_min10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_timer_min01_pr"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump1_timer_sec10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_timer_sec01_pr"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump1_timer_dec10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_timer_dec01_pr"}}," - ",{"color":"green","score":{"name":"@s","objective":"jump1_fall_pr"}}," chutes"]

execute if score @s jump1_score_pr matches 1000000 run tellraw @s [{"color":"gray","text":"* Vous n'avez pas encore fini ce parcours *"}]

execute unless score @s jump1_score_pr matches 1000000 run tellraw @s ["  - Checkpoint n°1 : ",{"color":"green","score":{"name":"@s","objective":"jump1_cp1_timer_min10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_cp1_timer_min01_pr"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump1_cp1_timer_sec10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_cp1_timer_sec01_pr"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump1_cp1_timer_dec10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_cp1_timer_dec01_pr"}}]
execute unless score @s jump1_score_pr matches 1000000 run tellraw @s ["  - Checkpoint n°2 : ",{"color":"green","score":{"name":"@s","objective":"jump1_cp2_timer_min10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_cp2_timer_min01_pr"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump1_cp2_timer_sec10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_cp2_timer_sec01_pr"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump1_cp2_timer_dec10_pr"}},{"color":"green","score":{"name":"@s","objective":"jump1_cp2_timer_dec01_pr"}}]
tellraw @s [{"text":"\nTentatives totales sur le parcours : "},{"color":"green","score":{"name":"@s","objective":"jump1_tries"}}]
tellraw @s [{"text":"Chutes totales sur le parcours : "},{"color":"green","score":{"name":"@s","objective":"jump1_fall"}}]