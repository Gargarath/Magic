# appelée par spells:loop si @s est très bruyant

execute if score @s Player matches 1 run data modify storage minecraft:gui player.1.actionbar.right_side set value "                       \uE506"
execute if score @s Player matches 2 run data modify storage minecraft:gui player.2.actionbar.right_side set value "                       \uE506"
execute if score @s Player matches 3 run data modify storage minecraft:gui player.3.actionbar.right_side set value "                       \uE506"
execute if score @s Player matches 4 run data modify storage minecraft:gui player.4.actionbar.right_side set value "                       \uE506"
execute if score @s Player matches 5 run data modify storage minecraft:gui player.5.actionbar.right_side set value "                       \uE506"
execute if score @s Player matches 6 run data modify storage minecraft:gui player.6.actionbar.right_side set value "                       \uE506"
execute if score @s Player matches 7 run data modify storage minecraft:gui player.7.actionbar.right_side set value "                       \uE506"
execute if score @s Player matches 8 run data modify storage minecraft:gui player.8.actionbar.right_side set value "                       \uE506"
execute if score @s Player matches 9 run data modify storage minecraft:gui player.9.actionbar.right_side set value "                       \uE506"
execute if score @s Player matches 10 run data modify storage minecraft:gui player.10.actionbar.right_side set value "                       \uE506"
execute if score @s Player matches 11 run data modify storage minecraft:gui player.11.actionbar.right_side set value "                       \uE506"
execute if score @s Player matches 12 run data modify storage minecraft:gui player.12.actionbar.right_side set value "                       \uE506"

scoreboard players set @s loud_bar 2