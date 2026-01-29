## appelée par check_checkpoint
# permet de finir le jump pour @s

tp @s -93.67 99.00 4.31 89.71 0.07
tag @s remove jumping
tag @s remove jumping_2

function lobby:jump/jump_timer
# calcule le temps de @s
function lobby:jump/jump2/pr/convert_checkpoint
# convertit le temps de chaque checkpoint en secondes pour @s

function lobby:hotbar_menu/main/give_items
# remet @s sur le bon menu de hotbar

execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 100 1

execute unless score @s jump_timer < @s jump2_score_pr run tellraw @s ["Vous avez fini le parcours n°2 en ",{"color":"green","score":{"name":"@s","objective":"jump_timer_min10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_min01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec01"}},{"color":"gray","italic":true,"text":"\n(record personnel : "},{"color":"gray","italic":false,"score":{"name":"@s","objective":"jump2_timer_min10_pr"}},{"color":"gray","italic":false,"score":{"name":"@s","objective":"jump2_timer_min01_pr"}},{"color":"gray","italic":false,"text":":"},{"color":"gray","italic":false,"score":{"name":"@s","objective":"jump2_timer_sec10_pr"}},{"color":"gray","italic":false,"score":{"name":"@s","objective":"jump2_timer_sec01_pr"}},{"color":"gray","italic":false,"text":":"},{"italic":false,"color":"gray","score":{"name":"@s","objective":"jump2_timer_dec10_pr"}},{"color":"gray","italic":false,"score":{"name":"@s","objective":"jump2_timer_dec01_pr"}},{"color":"gray","italic":true,"text":")"}]
# si @s n'a pas battu son PR -> lui indique son score

execute if score @s jump_timer < @s jump2_score_pr run function lobby:jump/jump2/pr/new_pr
# si @s a battu son PR -> le change et lui indique

execute if score @s jump_timer < $rank6 jump2_score run function lobby:jump/jump2/sort_leaderboard/add_to_gstats
# si moins de temps que le 6ème -> ajoute au leaderboard
