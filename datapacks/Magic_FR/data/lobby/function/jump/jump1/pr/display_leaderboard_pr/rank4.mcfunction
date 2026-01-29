## appelée par interact_with_interaction/check_clicked_button si @s clique pour avoir les stats du rankX
# permet d'afficher les données du rank X

execute if data storage stats:jump 1.rank4{name:""} run return run tellraw @s [{"color":"gray","text":"* Aucune donnée *"}]
# si le storage est vide -> annule et renvoi aucune donnée

tellraw @s [{"color":"gold","text":"\n-- Record de "},{"text":"4. ","color":"yellow"},{"color":"white","interpret":true,"nbt":"1.rank4.head","storage":"stats:jump"}," ",{"color":"green","interpret":true,"nbt":"1.rank4.name","storage":"stats:jump"},{"color":"yellow","text":" parcours n°1"},{"color":"gold","text":" --"}]

tellraw @s ["Meilleur temps : ",{"color":"green","nbt":"1.rank4.min10","storage":"stats:jump"},{"color":"green","nbt":"1.rank4.min01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"1.rank4.sec10","storage":"stats:jump"},{"color":"green","nbt":"1.rank4.sec01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"1.rank4.dec10","storage":"stats:jump"},{"color":"green","nbt":"1.rank4.dec01","storage":"stats:jump"}," - ",{"color":"green","nbt":"1.rank4.fall_pr","storage":"stats:jump"}," chute(s)"]

execute store result score #tmp jump1_cp1 run data get storage stats:jump 1.rank4.cp1.time

execute unless score #tmp jump1_cp1 matches 0 run tellraw @s ["  - Checkpoint n°1 : ",{"color":"green","nbt":"1.rank4.cp1.min10","storage":"stats:jump"},{"color":"green","nbt":"1.rank4.cp1.min01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"1.rank4.cp1.sec10","storage":"stats:jump"},{"color":"green","nbt":"1.rank4.cp1.sec01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"1.rank4.cp1.dec10","storage":"stats:jump"},{"color":"green","nbt":"1.rank4.cp1.dec01","storage":"stats:jump"}]
execute if score #tmp jump1_cp1 matches 0 run tellraw @s ["  - Checkpoint n°1 : ",{"color":"green","text":"—"}]

execute store result score #tmp jump1_cp2 run data get storage stats:jump 1.rank4.cp2.time

execute unless score #tmp jump1_cp2 matches 0 run tellraw @s ["  - Checkpoint n°2 : ",{"color":"green","nbt":"1.rank4.cp2.min10","storage":"stats:jump"},{"color":"green","nbt":"1.rank4.cp2.min01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"1.rank4.cp2.sec10","storage":"stats:jump"},{"color":"green","nbt":"1.rank4.cp2.sec01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"1.rank4.cp2.dec10","storage":"stats:jump"},{"color":"green","nbt":"1.rank4.cp2.dec01","storage":"stats:jump"}]
execute if score #tmp jump1_cp2 matches 0 run tellraw @s ["  - Checkpoint n°2 : ",{"color":"green","text":"—"}]

tellraw @s [{"text":"\nTentatives totales lors du record : "},{"color":"green","nbt":"1.rank4.tries","storage":"stats:jump"}]
tellraw @s [{"text":"Chutes totales lors du record : "},{"color":"green","nbt":"1.rank4.fall","storage":"stats:jump"}]