## appelée par interact_with_interaction/check_clicked_button si @s clique pour avoir les stats du rankX
# permet d'afficher les données du rank X

execute if data storage stats:jump 3.rank1{name:""} run return run tellraw @s [{"color":"gray","text":"* Aucune donnée *"}]
# si le storage est vide -> annule et renvoi aucune donnée

tellraw @s [{"color":"gold","text":"\n-- Record de "},{"text":"1. ","color":"yellow"},{"color":"white","interpret":true,"nbt":"3.rank1.head","storage":"stats:jump"}," ",{"color":"green","interpret":true,"nbt":"3.rank1.name","storage":"stats:jump"},{"color":"red","text":" parcours n°3"},{"color":"gold","text":" --"}]

tellraw @s ["Meilleur temps : ",{"color":"green","nbt":"3.rank1.min10","storage":"stats:jump"},{"color":"green","nbt":"3.rank1.min01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"3.rank1.sec10","storage":"stats:jump"},{"color":"green","nbt":"3.rank1.sec01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"3.rank1.dec10","storage":"stats:jump"},{"color":"green","nbt":"3.rank1.dec01","storage":"stats:jump"}," - ",{"color":"green","nbt":"3.rank1.fall_pr","storage":"stats:jump"}," chute(s)"]

execute store result score #tmp jump3_cp1 run data get storage stats:jump 3.rank1.cp1.time
execute unless score #tmp jump3_cp1 matches 0 run tellraw @s ["  - Checkpoint n°1 : ",{"color":"green","nbt":"3.rank1.cp1.min10","storage":"stats:jump"},{"color":"green","nbt":"3.rank1.cp1.min01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"3.rank1.cp1.sec10","storage":"stats:jump"},{"color":"green","nbt":"3.rank1.cp1.sec01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"3.rank1.cp1.dec10","storage":"stats:jump"},{"color":"green","nbt":"3.rank1.cp1.dec01","storage":"stats:jump"}]
execute if score #tmp jump3_cp1 matches 0 run tellraw @s ["  - Checkpoint n°1 : ",{"color":"green","text":"—"}]

execute store result score #tmp jump3_cp2 run data get storage stats:jump 3.rank1.cp2.time
execute unless score #tmp jump3_cp2 matches 0 run tellraw @s ["  - Checkpoint n°2 : ",{"color":"green","nbt":"3.rank1.cp2.min10","storage":"stats:jump"},{"color":"green","nbt":"3.rank1.cp2.min01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"3.rank1.cp2.sec10","storage":"stats:jump"},{"color":"green","nbt":"3.rank1.cp2.sec01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"3.rank1.cp2.dec10","storage":"stats:jump"},{"color":"green","nbt":"3.rank1.cp2.dec01","storage":"stats:jump"}]
execute if score #tmp jump3_cp2 matches 0 run tellraw @s ["  - Checkpoint n°2 : ",{"color":"green","text":"—"}]

execute store result score #tmp jump3_cp3 run data get storage stats:jump 3.rank1.cp3.time
execute unless score #tmp jump3_cp3 matches 0 run tellraw @s ["  - Checkpoint n°3 : ",{"color":"green","nbt":"3.rank1.cp3.min10","storage":"stats:jump"},{"color":"green","nbt":"3.rank1.cp3.min01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"3.rank1.cp3.sec10","storage":"stats:jump"},{"color":"green","nbt":"3.rank1.cp3.sec01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"3.rank1.cp3.dec10","storage":"stats:jump"},{"color":"green","nbt":"3.rank1.cp3.dec01","storage":"stats:jump"}]
execute if score #tmp jump3_cp3 matches 0 run tellraw @s ["  - Checkpoint n°3 : ",{"color":"green","text":"—"}]

execute store result score #tmp jump3_cp4 run data get storage stats:jump 3.rank1.cp4.time
execute unless score #tmp jump3_cp4 matches 0 run tellraw @s ["  - Checkpoint n°4 : ",{"color":"green","nbt":"3.rank1.cp4.min10","storage":"stats:jump"},{"color":"green","nbt":"3.rank1.cp4.min01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"3.rank1.cp4.sec10","storage":"stats:jump"},{"color":"green","nbt":"3.rank1.cp4.sec01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"3.rank1.cp4.dec10","storage":"stats:jump"},{"color":"green","nbt":"3.rank1.cp4.dec01","storage":"stats:jump"}]
execute if score #tmp jump3_cp4 matches 0 run tellraw @s ["  - Checkpoint n°4 : ",{"color":"green","text":"—"}]


tellraw @s [{"text":"\nTentatives totales lors du record : "},{"color":"green","nbt":"3.rank1.tries","storage":"stats:jump"}]
tellraw @s [{"text":"Chutes totales lors du record : "},{"color":"green","nbt":"3.rank1.fall","storage":"stats:jump"}]