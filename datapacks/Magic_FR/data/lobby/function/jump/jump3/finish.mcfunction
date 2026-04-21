## appelée par check_checkpoint
# permet de finir le jump pour @s

tp @s -82.44 99.00 -5.94 180.81 0.88
tag @s remove jumping
tag @s remove jumping_3

execute if entity @s[tag=jump_hide_close_players] run function lobby:jump/hide_close_player/no_more_invisible
# si @s est invisible -> lui enlève

function lobby:jump/jump_timer
# calcule le temps de @s
function lobby:jump/jump3/pr/convert_checkpoint
# convertit le temps de chaque checkpoint en secondes pour @s

function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
# remet @s sur le bon menu de hotbar

execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 100 1

execute unless score @s jump_timer < @s jump3_score_pr run tellraw @s ["Vous avez fini le parcours n°3 en ",{"color":"green","score":{"name":"@s","objective":"jump_timer_min10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_min01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec01"}},{"color":"gray","italic":true,"text":"\n(record personnel : "},{"color":"gray","italic":false,"score":{"name":"@s","objective":"jump3_timer_min10_pr"}},{"color":"gray","italic":false,"score":{"name":"@s","objective":"jump3_timer_min01_pr"}},{"color":"gray","italic":false,"text":":"},{"color":"gray","italic":false,"score":{"name":"@s","objective":"jump3_timer_sec10_pr"}},{"color":"gray","italic":false,"score":{"name":"@s","objective":"jump3_timer_sec01_pr"}},{"color":"gray","italic":false,"text":":"},{"italic":false,"color":"gray","score":{"name":"@s","objective":"jump3_timer_dec10_pr"}},{"color":"gray","italic":false,"score":{"name":"@s","objective":"jump3_timer_dec01_pr"}},{"color":"gray","italic":true,"text":")"}]
# si @s n'a pas battu son PR -> lui indique son score

execute if score @s jump_timer < @s jump3_score_pr run function lobby:jump/jump3/pr/new_pr
# si @s a battu son PR -> le change et lui indique

execute if score @s jump_timer < $rank6 jump3_score run function lobby:jump/jump3/sort_leaderboard/add_to_gstats
# si moins de temps que le 6ème -> ajoute au leaderboard
