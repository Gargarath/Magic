# setup la bossbar de @s si il est joueur 12

$execute if score @s in_trap_number matches 1 run bossbar set trapped:player12 name ["",{"selector":"@a[scores={trap_number_a=1},limit=1]","bold":true},{"text":"$(tr_bossbar_trapped_by)","bold":true,"color":"dark_red"}]
$execute if score @s in_trap_number matches 2 run bossbar set trapped:player12 name ["",{"selector":"@a[scores={trap_number_a=2},limit=1]","bold":true},{"text":"$(tr_bossbar_trapped_by)","bold":true,"color":"dark_red"}]
$execute if score @s in_trap_number matches 3 run bossbar set trapped:player12 name ["",{"selector":"@a[scores={trap_number_a=3},limit=1]","bold":true},{"text":"$(tr_bossbar_trapped_by)","bold":true,"color":"dark_red"}]
$execute if score @s in_trap_number matches 4 run bossbar set trapped:player12 name ["",{"selector":"@a[scores={trap_number_a=4},limit=1]","bold":true},{"text":"$(tr_bossbar_trapped_by)","bold":true,"color":"dark_red"}]
$execute if score @s in_trap_number matches 5 run bossbar set trapped:player12 name ["",{"selector":"@a[scores={trap_number_a=5},limit=1]","bold":true},{"text":"$(tr_bossbar_trapped_by)","bold":true,"color":"dark_red"}]
$execute if score @s in_trap_number matches 6 run bossbar set trapped:player12 name ["",{"selector":"@a[scores={trap_number_a=6},limit=1]","bold":true},{"text":"$(tr_bossbar_trapped_by)","bold":true,"color":"dark_red"}]
$execute if score @s in_trap_number matches 7 run bossbar set trapped:player12 name ["",{"selector":"@a[scores={trap_number_a=7},limit=1]","bold":true},{"text":"$(tr_bossbar_trapped_by)","bold":true,"color":"dark_red"}]
$execute if score @s in_trap_number matches 8 run bossbar set trapped:player12 name ["",{"selector":"@a[scores={trap_number_a=8},limit=1]","bold":true},{"text":"$(tr_bossbar_trapped_by)","bold":true,"color":"dark_red"}]
$execute if score @s in_trap_number matches 9 run bossbar set trapped:player12 name ["",{"selector":"@a[scores={trap_number_a=9},limit=1]","bold":true},{"text":"$(tr_bossbar_trapped_by)","bold":true,"color":"dark_red"}]
$execute if score @s in_trap_number matches 10 run bossbar set trapped:player12 name ["",{"selector":"@a[scores={trap_number_a=10},limit=1]","bold":true},{"text":"$(tr_bossbar_trapped_by)","bold":true,"color":"dark_red"}]
$execute if score @s in_trap_number matches 11 run bossbar set trapped:player12 name ["",{"selector":"@a[scores={trap_number_a=11},limit=1]","bold":true},{"text":"$(tr_bossbar_trapped_by)","bold":true,"color":"dark_red"}]
$execute if score @s in_trap_number matches 12 run bossbar set trapped:player12 name ["",{"selector":"@a[scores={trap_number_a=12},limit=1]","bold":true},{"text":"$(tr_bossbar_trapped_by)","bold":true,"color":"dark_red"}]
bossbar set trapped:player12 value 80
bossbar set trapped:player12 max 80
bossbar set trapped:player12 players @s