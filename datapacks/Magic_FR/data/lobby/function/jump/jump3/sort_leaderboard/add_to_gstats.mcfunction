## appelée par jump3/finish si @s a un temps inférieur aux existants
## permet d'ajouter @s au classement all time jump 1

scoreboard players operation $rank6 jump3_score = @s jump_timer
execute store result storage stats:jump 3.rank6.min10 int 1 run scoreboard players get @s jump_timer_min10
execute store result storage stats:jump 3.rank6.min01 int 1 run scoreboard players get @s jump_timer_min01
execute store result storage stats:jump 3.rank6.sec10 int 1 run scoreboard players get @s jump_timer_sec10
execute store result storage stats:jump 3.rank6.sec01 int 1 run scoreboard players get @s jump_timer_sec01
execute store result storage stats:jump 3.rank6.dec10 int 1 run scoreboard players get @s jump_timer_dec10
execute store result storage stats:jump 3.rank6.dec01 int 1 run scoreboard players get @s jump_timer_dec01

data modify storage stats:jump 3.rank6.head.player.id set from entity @s UUID

team leave @s
execute at @s run data merge block 14 97 13 {front_text:{messages:[{"selector":"@p"},"","",""]}}
data modify storage stats:jump 3.rank6.name set from block 14 97 13 front_text.messages[0]
function lobby:team_selector/give_lobby_team

data merge entity @e[type=minecraft:text_display,limit=1,tag=jump_3_leaderboard_rank6] {text:[{"bold":true,"color":"yellow","text":"6. "},{"color":"white","interpret":true,"nbt":"3.rank6.head","storage":"stats:jump"}," ",{"color":"green","interpret":true,"nbt":"3.rank6.name","storage":"stats:jump"},{"color":"gray","text":" - "},{"color":"green","bold":false,"nbt":"3.rank6.min10","storage":"stats:jump"},{"color":"green","bold":false,"nbt":"3.rank6.min01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"3.rank6.sec10","storage":"stats:jump"},{"color":"green","bold":false,"nbt":"3.rank6.sec01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","bold":false,"nbt":"3.rank6.dec10","storage":"stats:jump"},{"color":"green","bold":false,"nbt":"3.rank6.dec01","storage":"stats:jump"}]}
# on save le score de @s dans le rank 6

execute unless score $rank6 jump3_score < $rank5 jump3_score run tellraw @a[tag=in_jump] ["",{"text":"[Parcours n°3]","color":"yellow"}," - ",{"color":"green","interpret":true,"nbt":"3.rank6.name","storage":"stats:jump"}," a pris la ",{"text":"6ème place","color":"yellow"}," en ",{"color":"green","score":{"name":"@s","objective":"jump_timer_min10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_min01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_sec01"}},{"color":"white","text":":"},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec10"}},{"color":"green","score":{"name":"@s","objective":"jump_timer_dec01"}}]
# si @s est 6ème -> affiche aux autres
execute if score $rank6 jump3_score < $rank5 jump3_score run function lobby:jump/jump3/sort_leaderboard/swap_6_5
# si @s est aussi meilleur que 5 -> swap

execute if score $rank5 jump3_score < $rank4 jump3_score run function lobby:jump/jump3/sort_leaderboard/swap_5_4
# si @s est aussi meilleur que 4 -> swap

execute if score $rank4 jump3_score < $rank3 jump3_score run function lobby:jump/jump3/sort_leaderboard/swap_4_3
# si @s est aussi meilleur que 3 -> swap

execute if score $rank3 jump3_score < $rank2 jump3_score run function lobby:jump/jump3/sort_leaderboard/swap_3_2
# si @s est aussi meilleur que 2 -> swap

execute if score $rank2 jump3_score < $rank1 jump3_score run function lobby:jump/jump3/sort_leaderboard/swap_2_1
# si @s est aussi meilleur que 1 -> swap

execute at @s run summon firework_rocket ~ ~1.5 ~ {LifeTime:12,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_trail:true,colors:[I;16762900,16750351,16739351]}]}}}}