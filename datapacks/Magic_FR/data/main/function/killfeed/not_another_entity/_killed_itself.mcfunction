# appelé par _determine_who_killed si @s s'est auto tué


# Si @s s'est pas tué-> affiche par quoi


execute if score @s Player matches 1 run tellraw @a[tag=display_killfeed] ["",{"nbt":"name.1","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.1","storage":"main:killfeed",plain:true}," ",{"nbt":"name.1","storage":"main:killfeed","interpret":true}]
execute if score @s Player matches 2 run tellraw @a[tag=display_killfeed] ["",{"nbt":"name.2","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.2","storage":"main:killfeed",plain:true}," ",{"nbt":"name.2","storage":"main:killfeed","interpret":true}]
execute if score @s Player matches 3 run tellraw @a[tag=display_killfeed] ["",{"nbt":"name.3","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.3","storage":"main:killfeed",plain:true}," ",{"nbt":"name.3","storage":"main:killfeed","interpret":true}]
execute if score @s Player matches 4 run tellraw @a[tag=display_killfeed] ["",{"nbt":"name.4","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.4","storage":"main:killfeed",plain:true}," ",{"nbt":"name.4","storage":"main:killfeed","interpret":true}]
execute if score @s Player matches 5 run tellraw @a[tag=display_killfeed] ["",{"nbt":"name.5","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.5","storage":"main:killfeed",plain:true}," ",{"nbt":"name.5","storage":"main:killfeed","interpret":true}]
execute if score @s Player matches 6 run tellraw @a[tag=display_killfeed] ["",{"nbt":"name.6","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.6","storage":"main:killfeed",plain:true}," ",{"nbt":"name.6","storage":"main:killfeed","interpret":true}]
execute if score @s Player matches 7 run tellraw @a[tag=display_killfeed] ["",{"nbt":"name.7","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.7","storage":"main:killfeed",plain:true}," ",{"nbt":"name.7","storage":"main:killfeed","interpret":true}]
execute if score @s Player matches 8 run tellraw @a[tag=display_killfeed] ["",{"nbt":"name.8","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.8","storage":"main:killfeed",plain:true}," ",{"nbt":"name.8","storage":"main:killfeed","interpret":true}]
execute if score @s Player matches 9 run tellraw @a[tag=display_killfeed] ["",{"nbt":"name.9","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.9","storage":"main:killfeed",plain:true}," ",{"nbt":"name.9","storage":"main:killfeed","interpret":true}]
execute if score @s Player matches 10 run tellraw @a[tag=display_killfeed] ["",{"nbt":"name.10","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.10","storage":"main:killfeed",plain:true}," ",{"nbt":"name.10","storage":"main:killfeed","interpret":true}]
execute if score @s Player matches 11 run tellraw @a[tag=display_killfeed] ["",{"nbt":"name.11","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.11","storage":"main:killfeed",plain:true}," ",{"nbt":"name.11","storage":"main:killfeed","interpret":true}]
execute if score @s Player matches 12 run tellraw @a[tag=display_killfeed] ["",{"nbt":"name.12","storage":"main:killfeed","interpret":true}," ",{"nbt":"death_cause.12","storage":"main:killfeed",plain:true}," ",{"nbt":"name.12","storage":"main:killfeed","interpret":true}]