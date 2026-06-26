## appelée par finish quand @s fini le jump1
# permet de convertir le temps en tick des record en secondes

## CALCULATE TIMER

scoreboard players operation @s jump_timer_temp = @s jump1_cp1
scoreboard players operation @s jump_timer_temp /= %20 numbers
# on calcule les secondes (car 20 tick = 1 seconde)

scoreboard players operation @s jump1_cp1_timer_min = @s jump_timer_temp
scoreboard players operation @s jump1_cp1_timer_min /= %60 numbers
# on calcule les minutes totales

## MINUTES
scoreboard players operation @s jump1_cp1_timer_min01 = @s jump1_cp1_timer_min
scoreboard players operation @s jump1_cp1_timer_min01 %= %10 numbers
# on calcule les unités des minutes

scoreboard players operation @s jump1_cp1_timer_min10 = @s jump1_cp1_timer_min
scoreboard players operation @s jump1_cp1_timer_min10 /= %10 numbers
# on calcule les dizaine des minutes

## SECONDES
scoreboard players operation @s jump1_cp1_timer_sec = @s jump_timer_temp
scoreboard players operation @s jump1_cp1_timer_sec %= %60 numbers
# on extrait les secondes

scoreboard players operation @s jump1_cp1_timer_sec01 = @s jump1_cp1_timer_sec
scoreboard players operation @s jump1_cp1_timer_sec01 %= %10 numbers
# on extrait les unités des secondes

scoreboard players operation @s jump1_cp1_timer_sec10 = @s jump1_cp1_timer_sec
scoreboard players operation @s jump1_cp1_timer_sec10 /= %10 numbers
# on extrait les dizaine des secondes

## DECIMALES
scoreboard players operation @s jump1_cp1_timer_dec = @s jump1_cp1
scoreboard players operation @s jump1_cp1_timer_dec %= %20 numbers
# on calcule les décimales

scoreboard players operation @s jump1_cp1_timer_dec10 = @s jump1_cp1_timer_dec
scoreboard players operation @s jump1_cp1_timer_dec10 *= %10 numbers
scoreboard players operation @s jump1_cp1_timer_dec10 /= %20 numbers
# on calcule les dizièmes

scoreboard players operation @s jump1_cp1_timer_dec01 = @s jump1_cp1_timer_dec
scoreboard players operation @s jump1_cp1_timer_dec01 *= %100 numbers
scoreboard players operation @s jump1_cp1_timer_dec01 /= %20 numbers
scoreboard players operation @s jump1_cp1_timer_dec01 %= %10 numbers
# on calcule les centième (par tranches de 5 car Minecraft n'est pas plus précis)

## CHECKPOINT 2

## CALCULATE TIMER

scoreboard players operation @s jump_timer_temp = @s jump1_cp2
scoreboard players operation @s jump_timer_temp /= %20 numbers
# on calcule les secondes (car 20 tick = 1 seconde)

scoreboard players operation @s jump1_cp2_timer_min = @s jump_timer_temp
scoreboard players operation @s jump1_cp2_timer_min /= %60 numbers
# on calcule les minutes totales

## MINUTES
scoreboard players operation @s jump1_cp2_timer_min01 = @s jump1_cp2_timer_min
scoreboard players operation @s jump1_cp2_timer_min01 %= %10 numbers
# on calcule les unités des minutes

scoreboard players operation @s jump1_cp2_timer_min10 = @s jump1_cp2_timer_min
scoreboard players operation @s jump1_cp2_timer_min10 /= %10 numbers
# on calcule les dizaine des minutes

## SECONDES
scoreboard players operation @s jump1_cp2_timer_sec = @s jump_timer_temp
scoreboard players operation @s jump1_cp2_timer_sec %= %60 numbers
# on extrait les secondes

scoreboard players operation @s jump1_cp2_timer_sec01 = @s jump1_cp2_timer_sec
scoreboard players operation @s jump1_cp2_timer_sec01 %= %10 numbers
# on extrait les unités des secondes

scoreboard players operation @s jump1_cp2_timer_sec10 = @s jump1_cp2_timer_sec
scoreboard players operation @s jump1_cp2_timer_sec10 /= %10 numbers
# on extrait les dizaine des secondes

## DECIMALES
scoreboard players operation @s jump1_cp2_timer_dec = @s jump1_cp2
scoreboard players operation @s jump1_cp2_timer_dec %= %20 numbers
# on calcule les décimales

scoreboard players operation @s jump1_cp2_timer_dec10 = @s jump1_cp2_timer_dec
scoreboard players operation @s jump1_cp2_timer_dec10 *= %10 numbers
scoreboard players operation @s jump1_cp2_timer_dec10 /= %20 numbers
# on calcule les dizièmes

scoreboard players operation @s jump1_cp2_timer_dec01 = @s jump1_cp2_timer_dec
scoreboard players operation @s jump1_cp2_timer_dec01 *= %100 numbers
scoreboard players operation @s jump1_cp2_timer_dec01 /= %20 numbers
scoreboard players operation @s jump1_cp2_timer_dec01 %= %10 numbers
# on calcule les centième (par tranches de 5 car Minecraft n'est pas plus précis)