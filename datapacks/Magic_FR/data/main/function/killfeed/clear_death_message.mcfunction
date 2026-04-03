## appelée par spells:loop si @s n'a pas subit de /damage depuis X temps
# permet de reset son icone de killfeed si il meurt

execute if score @s Player matches -2 run data modify storage main:killfeed death_cause.boss set value "\uE000"
execute if score @s Player matches 1 run data modify storage main:killfeed death_cause.1 set value "\uE000"
execute if score @s Player matches 2 run data modify storage main:killfeed death_cause.2 set value "\uE000"
execute if score @s Player matches 3 run data modify storage main:killfeed death_cause.3 set value "\uE000"
execute if score @s Player matches 4 run data modify storage main:killfeed death_cause.4 set value "\uE000"
execute if score @s Player matches 5 run data modify storage main:killfeed death_cause.5 set value "\uE000"
execute if score @s Player matches 6 run data modify storage main:killfeed death_cause.6 set value "\uE000"
execute if score @s Player matches 7 run data modify storage main:killfeed death_cause.7 set value "\uE000"
execute if score @s Player matches 8 run data modify storage main:killfeed death_cause.8 set value "\uE000"
execute if score @s Player matches 9 run data modify storage main:killfeed death_cause.9 set value "\uE000"
execute if score @s Player matches 10 run data modify storage main:killfeed death_cause.10 set value "\uE000"
execute if score @s Player matches 11 run data modify storage main:killfeed death_cause.11 set value "\uE000"
execute if score @s Player matches 12 run data modify storage main:killfeed death_cause.12 set value "\uE000"

tag @s remove self_target
# si @s s'est tiré dessus -> enlève le tag qui le dit
tag @s remove killed_by_ally
# si @s s'est fait tiré dessus par un allié -> enlève le tag qui le dit
tag @s remove get_exploded
# si @s s'est prit une flèche explo -> enlève le tag qui le dit

scoreboard players set @s last_caster 0
# reset par qui @s s'est pris le dernier spell

scoreboard players reset @s special_dmg_recieved