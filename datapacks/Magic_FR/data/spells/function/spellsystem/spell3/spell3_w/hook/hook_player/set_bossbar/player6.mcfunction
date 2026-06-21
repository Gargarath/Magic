## called by par player6_blue or player6_red
## display the bossbar for @s depending on his Player number

$execute if score @s Player matches 1 run bossbar set hooked:player1 name ["",{"text":"$(tr_bossbar_hooked_by)","color":"dark_red","bold":true},{"selector":"@a[scores={Player=6},limit=1]","bold":true}]
execute if score @s Player matches 1 run bossbar set hooked:player1 players @s

$execute if score @s Player matches 2 run bossbar set hooked:player2 name ["",{"text":"$(tr_bossbar_hooked_by)","color":"dark_red","bold":true},{"selector":"@a[scores={Player=6},limit=1]","bold":true}]
execute if score @s Player matches 2 run bossbar set hooked:player2 players @s

$execute if score @s Player matches 3 run bossbar set hooked:player3 name ["",{"text":"$(tr_bossbar_hooked_by)","color":"dark_red","bold":true},{"selector":"@a[scores={Player=6},limit=1]","bold":true}]
execute if score @s Player matches 3 run bossbar set hooked:player3 players @s

$execute if score @s Player matches 4 run bossbar set hooked:player4 name ["",{"text":"$(tr_bossbar_hooked_by)","color":"dark_red","bold":true},{"selector":"@a[scores={Player=6},limit=1]","bold":true}]
execute if score @s Player matches 4 run bossbar set hooked:player4 players @s

$execute if score @s Player matches 5 run bossbar set hooked:player5 name ["",{"text":"$(tr_bossbar_hooked_by)","color":"dark_red","bold":true},{"selector":"@a[scores={Player=6},limit=1]","bold":true}]
execute if score @s Player matches 5 run bossbar set hooked:player5 players @s

$execute if score @s Player matches 7 run bossbar set hooked:player7 name ["",{"text":"$(tr_bossbar_hooked_by)","color":"dark_red","bold":true},{"selector":"@a[scores={Player=6},limit=1]","bold":true}]
execute if score @s Player matches 7 run bossbar set hooked:player7 players @s

$execute if score @s Player matches 8 run bossbar set hooked:player8 name ["",{"text":"$(tr_bossbar_hooked_by)","color":"dark_red","bold":true},{"selector":"@a[scores={Player=6},limit=1]","bold":true}]
execute if score @s Player matches 8 run bossbar set hooked:player8 players @s

$execute if score @s Player matches 9 run bossbar set hooked:player9 name ["",{"text":"$(tr_bossbar_hooked_by)","color":"dark_red","bold":true},{"selector":"@a[scores={Player=6},limit=1]","bold":true}]
execute if score @s Player matches 9 run bossbar set hooked:player9 players @s

$execute if score @s Player matches 10 run bossbar set hooked:player10 name ["",{"text":"$(tr_bossbar_hooked_by)","color":"dark_red","bold":true},{"selector":"@a[scores={Player=6},limit=1]","bold":true}]
execute if score @s Player matches 10 run bossbar set hooked:player10 players @s

$execute if score @s Player matches 11 run bossbar set hooked:player11 name ["",{"text":"$(tr_bossbar_hooked_by)","color":"dark_red","bold":true},{"selector":"@a[scores={Player=6},limit=1]","bold":true}]
execute if score @s Player matches 11 run bossbar set hooked:player11 players @s

$execute if score @s Player matches 12 run bossbar set hooked:player12 name ["",{"text":"$(tr_bossbar_hooked_by)","color":"dark_red","bold":true},{"selector":"@a[scores={Player=6},limit=1]","bold":true}]
execute if score @s Player matches 12 run bossbar set hooked:player12 players @s