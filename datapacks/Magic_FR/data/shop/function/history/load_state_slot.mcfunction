## appelee par l'historique du shop
# recharge un slot storage dans les scores de @s

$execute store result score @s weapon1 run data get storage shop:history player.$(player).states.slot$(slot).weapon1
$execute store result score @s spell1 run data get storage shop:history player.$(player).states.slot$(slot).spell1
$execute store result score @s spell2 run data get storage shop:history player.$(player).states.slot$(slot).spell2
$execute store result score @s spell3 run data get storage shop:history player.$(player).states.slot$(slot).spell3
$execute store result score @s chest run data get storage shop:history player.$(player).states.slot$(slot).chest
$execute store result score @s legs run data get storage shop:history player.$(player).states.slot$(slot).legs
$execute store result score @s boots run data get storage shop:history player.$(player).states.slot$(slot).boots
$execute store result score @s arrow run data get storage shop:history player.$(player).states.slot$(slot).arrow
$execute store result score @s maxarrow run data get storage shop:history player.$(player).states.slot$(slot).maxarrow
$execute store result score @s weapon1_max_range_m run data get storage shop:history player.$(player).states.slot$(slot).weapon1_max_range_m
$execute store result score @s explo_max_range_a run data get storage shop:history player.$(player).states.slot$(slot).explo_max_range_a
