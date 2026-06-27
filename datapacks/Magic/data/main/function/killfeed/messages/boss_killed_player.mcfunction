## appelée par main:killfeed/_entity_killed_player pour chaque lecteur du killfeed
# permet d'afficher à @s le nom traduit du boss ayant tué un joueur

$execute if score $killfeed_boss_type secondary_objective_slot matches 2 run tellraw @s ["",{"text":"$(tr_killfeed_boss_lich)","color":"gray","bold":false}," ",{"nbt":"victim_death_cause","storage":"main:killfeed","interpret":true}," ",{"nbt":"victim_name","storage":"main:killfeed","interpret":true}]
$execute if score $killfeed_boss_type secondary_objective_slot matches 5 run tellraw @s ["",{"text":"$(tr_killfeed_boss_guardian)","color":"green","bold":false}," ",{"nbt":"victim_death_cause","storage":"main:killfeed","interpret":true}," ",{"nbt":"victim_name","storage":"main:killfeed","interpret":true}]
$execute if score $killfeed_boss_type secondary_objective_slot matches 6 run tellraw @s ["",{"text":"$(tr_killfeed_boss_cherry)","color":"light_purple","bold":false}," ",{"nbt":"victim_death_cause","storage":"main:killfeed","interpret":true}," ",{"nbt":"victim_name","storage":"main:killfeed","interpret":true}]
