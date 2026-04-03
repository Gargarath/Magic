## appelée par death_trail_hit si @s a prit un soul_drainer de la liche
## effectue le sort et inflige les dmg à @s

execute if score @s Player matches 1 run data modify storage main:killfeed death_cause.1 set value "\uE202"
execute if score @s Player matches 2 run data modify storage main:killfeed death_cause.2 set value "\uE202"
execute if score @s Player matches 3 run data modify storage main:killfeed death_cause.3 set value "\uE202"
execute if score @s Player matches 4 run data modify storage main:killfeed death_cause.4 set value "\uE202"
execute if score @s Player matches 5 run data modify storage main:killfeed death_cause.5 set value "\uE202"
execute if score @s Player matches 6 run data modify storage main:killfeed death_cause.6 set value "\uE202"
execute if score @s Player matches 7 run data modify storage main:killfeed death_cause.7 set value "\uE202"
execute if score @s Player matches 8 run data modify storage main:killfeed death_cause.8 set value "\uE202"
execute if score @s Player matches 9 run data modify storage main:killfeed death_cause.9 set value "\uE202"
execute if score @s Player matches 10 run data modify storage main:killfeed death_cause.10 set value "\uE202"
execute if score @s Player matches 11 run data modify storage main:killfeed death_cause.11 set value "\uE202"
execute if score @s Player matches 12 run data modify storage main:killfeed death_cause.12 set value "\uE202"
# change la cause de la mort de @s dans son storage par la texture du kill du soul drainer

scoreboard players set @s special_dmg_recieved 5
# met un timer au cours duquel la cause de la mort de @s sera reset