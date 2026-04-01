## appelée par interact_with_interaction/check_clicked_button si @s clique pour avoir les stats du rankX
# permet d'afficher les données du rank X

execute if data storage stats:jump 1.rank5{name:""} run return run tellraw @s [{"color":"gray","text":"* Aucune donnée *"}]
# si le storage est vide -> annule et renvoi aucune donnée

tellraw @s [{"color":"gold","text":"\n-- Record de "},{"text":"5. ","color":"yellow"},{"color":"white","interpret":true,"nbt":"1.rank5.head","storage":"stats:jump"}," ",{"color":"green","interpret":true,"nbt":"1.rank5.name","storage":"stats:jump"},{"color":"yellow","text":" parcours n°1"},{"color":"gold","text":" --"}]

tellraw @s ["Meilleur temps : ",{"color":"green","nbt":"1.rank5.min10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank5.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"1.rank5.sec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank5.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"1.rank5.dec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank5.dec01","storage":"stats:jump","plain":true}," - ",{"color":"green","nbt":"1.rank5.fall_pr","storage":"stats:jump","plain":true}," chute(s)"]

execute store result score #tmp jump1_cp1 run data get storage stats:jump 1.rank5.cp1.time

execute unless score #tmp jump1_cp1 matches 0 run tellraw @s ["  - Checkpoint n°1 : ",{"color":"green","nbt":"1.rank5.cp1.min10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank5.cp1.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"1.rank5.cp1.sec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank5.cp1.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"1.rank5.cp1.dec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank5.cp1.dec01","storage":"stats:jump","plain":true}]
execute if score #tmp jump1_cp1 matches 0 run tellraw @s ["  - Checkpoint n°1 : ",{"color":"green","text":"—"}]

execute store result score #tmp jump1_cp2 run data get storage stats:jump 1.rank5.cp2.time

execute unless score #tmp jump1_cp2 matches 0 run tellraw @s ["  - Checkpoint n°2 : ",{"color":"green","nbt":"1.rank5.cp2.min10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank5.cp2.min01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"1.rank5.cp2.sec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank5.cp2.sec01","storage":"stats:jump","plain":true},{"color":"white","text":":"},{"color":"green","nbt":"1.rank5.cp2.dec10","storage":"stats:jump","plain":true},{"color":"green","nbt":"1.rank5.cp2.dec01","storage":"stats:jump","plain":true}]
execute if score #tmp jump1_cp2 matches 0 run tellraw @s ["  - Checkpoint n°2 : ",{"color":"green","text":"—"}]

tellraw @s [{"text":"\nTentatives totales lors du record : "},{"color":"green","nbt":"1.rank5.tries","storage":"stats:jump","plain":true}]
tellraw @s [{"text":"Chutes totales lors du record : "},{"color":"green","nbt":"1.rank5.fall","storage":"stats:jump","plain":true}]