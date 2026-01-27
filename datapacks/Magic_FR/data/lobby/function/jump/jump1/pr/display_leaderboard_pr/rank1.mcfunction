## appelée par interact_with_interaction/check_clicked_button si @s clique pour avoir les stats du rankX
# permet d'afficher les données du rank X

execute if data storage stats:jump 1.rank1{name:""} run return run tellraw @s [{"color":"gray","text":"* Aucune donnée *"}]
# si le storage est vide -> annule et renvoi aucune donnée

tellraw @s [{"color":"gold","text":"\n-- Record de "},{"text":"1. ","color":"yellow"},{"color":"white","interpret":true,"nbt":"1.rank1.head","storage":"stats:jump"}," ",{"color":"green","interpret":true,"nbt":"1.rank1.name","storage":"stats:jump"},{"color":"yellow","text":" parcours n°1"},{"color":"gold","text":" --"}]

tellraw @s ["Meilleur temps : ",{"color":"green","nbt":"1.rank1.min10","storage":"stats:jump"},{"color":"green","nbt":"1.rank1.min01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"1.rank1.sec10","storage":"stats:jump"},{"color":"green","nbt":"1.rank1.sec01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"1.rank1.dec10","storage":"stats:jump"},{"color":"green","nbt":"1.rank1.dec01","storage":"stats:jump"}," - ",{"color":"green","nbt":"1.rank1.fall_pr","storage":"stats:jump"}," chute(s)"]


tellraw @s ["  - Checkpoint n°1 : ",{"color":"green","nbt":"1.rank1.cp1.min10","storage":"stats:jump"},{"color":"green","nbt":"1.rank1.cp1.min01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"1.rank1.cp1.sec10","storage":"stats:jump"},{"color":"green","nbt":"1.rank1.cp1.sec01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"1.rank1.cp1.dec10","storage":"stats:jump"},{"color":"green","nbt":"1.rank1.cp1.dec01","storage":"stats:jump"}]
tellraw @s ["  - Checkpoint n°2 : ",{"color":"green","nbt":"1.rank1.cp2.min10","storage":"stats:jump"},{"color":"green","nbt":"1.rank1.cp2.min01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"1.rank1.cp2.sec10","storage":"stats:jump"},{"color":"green","nbt":"1.rank1.cp2.sec01","storage":"stats:jump"},{"color":"white","text":":"},{"color":"green","nbt":"1.rank1.cp2.dec10","storage":"stats:jump"},{"color":"green","nbt":"1.rank1.cp2.dec01","storage":"stats:jump"}]
tellraw @s [{"text":"\nTentatives totales sur le parcours : "},{"color":"green","nbt":"1.rank1.tries","storage":"stats:jump"}]
tellraw @s [{"text":"Chutes totales sur le parcours : "},{"color":"green","nbt":"1.rank1.fall","storage":"stats:jump"}]