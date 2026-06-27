## appelée par main:killfeed/killer_boss pour chaque lecteur du killfeed
# permet d'afficher à @s le nom traduit du boss tué

$execute if score $killfeed_boss_type secondary_objective_slot matches 2 run tellraw @s ["",{"nbt":"killer_name","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.boss","storage":"main:killfeed","interpret":true}," ",{"text":"$(tr_killfeed_boss_lich)","color":"gray","bold":false}]
$execute if score $killfeed_boss_type secondary_objective_slot matches 5 run tellraw @s ["",{"nbt":"killer_name","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.boss","storage":"main:killfeed","interpret":true}," ",{"text":"$(tr_killfeed_boss_guardian)","color":"green","bold":false}]
$execute if score $killfeed_boss_type secondary_objective_slot matches 6 run tellraw @s ["",{"nbt":"killer_name","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.boss","storage":"main:killfeed","interpret":true}," ",{"text":"$(tr_killfeed_boss_cherry)","color":"light_purple","bold":false}]
