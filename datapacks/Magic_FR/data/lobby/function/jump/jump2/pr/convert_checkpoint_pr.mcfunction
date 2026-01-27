## appelée par save_pr quand @s fait un nouveau record
# permet de convertir le temps en tick des record en secondes

## CHECKPOINT 1

## CALCULATE TIMER

scoreboard players operation @s jump_timer_temp = @s jump2_cp1
scoreboard players operation @s jump_timer_temp /= %20 numbers
# on calcule les secondes (car 20 tick = 1 seconde)

scoreboard players operation @s jump2_cp1_timer_min_pr = @s jump_timer_temp
scoreboard players operation @s jump2_cp1_timer_min_pr /= %60 numbers
# on calcule les minutes totales

## MINUTES
scoreboard players operation @s jump2_cp1_timer_min01_pr = @s jump2_cp1_timer_min_pr
scoreboard players operation @s jump2_cp1_timer_min01_pr %= %10 numbers
# on calcule les unités des minutes

scoreboard players operation @s jump2_cp1_timer_min10_pr = @s jump2_cp1_timer_min_pr
scoreboard players operation @s jump2_cp1_timer_min10_pr /= %10 numbers
# on calcule les dizaine des minutes

## SECONDES
scoreboard players operation @s jump2_cp1_timer_sec_pr = @s jump_timer_temp
scoreboard players operation @s jump2_cp1_timer_sec_pr %= %60 numbers
# on extrait les secondes

scoreboard players operation @s jump2_cp1_timer_sec01_pr = @s jump2_cp1_timer_sec_pr
scoreboard players operation @s jump2_cp1_timer_sec01_pr %= %10 numbers
# on extrait les unités des secondes

scoreboard players operation @s jump2_cp1_timer_sec10_pr = @s jump2_cp1_timer_sec_pr
scoreboard players operation @s jump2_cp1_timer_sec10_pr /= %10 numbers
# on extrait les dizaine des secondes

## DECIMALES
scoreboard players operation @s jump2_cp1_timer_dec_pr = @s jump2_cp1
scoreboard players operation @s jump2_cp1_timer_dec_pr %= %20 numbers
# on calcule les décimales

scoreboard players operation @s jump2_cp1_timer_dec10_pr = @s jump2_cp1_timer_dec_pr
scoreboard players operation @s jump2_cp1_timer_dec10_pr *= %10 numbers
scoreboard players operation @s jump2_cp1_timer_dec10_pr /= %20 numbers
# on calcule les dizièmes

scoreboard players operation @s jump2_cp1_timer_dec01_pr = @s jump2_cp1_timer_dec_pr
scoreboard players operation @s jump2_cp1_timer_dec01_pr *= %100 numbers
scoreboard players operation @s jump2_cp1_timer_dec01_pr /= %20 numbers
scoreboard players operation @s jump2_cp1_timer_dec01_pr %= %10 numbers
# on calcule les centième (par tranches de 5 car Minecraft n'est pas plus précis)

## CHECKPOINT 2

## CALCULATE TIMER

scoreboard players operation @s jump_timer_temp = @s jump2_cp2
scoreboard players operation @s jump_timer_temp /= %20 numbers
# on calcule les secondes (car 20 tick = 1 seconde)

scoreboard players operation @s jump2_cp2_timer_min_pr = @s jump_timer_temp
scoreboard players operation @s jump2_cp2_timer_min_pr /= %60 numbers
# on calcule les minutes totales

## MINUTES
scoreboard players operation @s jump2_cp2_timer_min01_pr = @s jump2_cp2_timer_min_pr
scoreboard players operation @s jump2_cp2_timer_min01_pr %= %10 numbers
# on calcule les unités des minutes

scoreboard players operation @s jump2_cp2_timer_min10_pr = @s jump2_cp2_timer_min_pr
scoreboard players operation @s jump2_cp2_timer_min10_pr /= %10 numbers
# on calcule les dizaine des minutes

## SECONDES
scoreboard players operation @s jump2_cp2_timer_sec_pr = @s jump_timer_temp
scoreboard players operation @s jump2_cp2_timer_sec_pr %= %60 numbers
# on extrait les secondes

scoreboard players operation @s jump2_cp2_timer_sec01_pr = @s jump2_cp2_timer_sec_pr
scoreboard players operation @s jump2_cp2_timer_sec01_pr %= %10 numbers
# on extrait les unités des secondes

scoreboard players operation @s jump2_cp2_timer_sec10_pr = @s jump2_cp2_timer_sec_pr
scoreboard players operation @s jump2_cp2_timer_sec10_pr /= %10 numbers
# on extrait les dizaine des secondes

## DECIMALES
scoreboard players operation @s jump2_cp2_timer_dec_pr = @s jump2_cp2
scoreboard players operation @s jump2_cp2_timer_dec_pr %= %20 numbers
# on calcule les décimales

scoreboard players operation @s jump2_cp2_timer_dec10_pr = @s jump2_cp2_timer_dec_pr
scoreboard players operation @s jump2_cp2_timer_dec10_pr *= %10 numbers
scoreboard players operation @s jump2_cp2_timer_dec10_pr /= %20 numbers
# on calcule les dizièmes

scoreboard players operation @s jump2_cp2_timer_dec01_pr = @s jump2_cp2_timer_dec_pr
scoreboard players operation @s jump2_cp2_timer_dec01_pr *= %100 numbers
scoreboard players operation @s jump2_cp2_timer_dec01_pr /= %20 numbers
scoreboard players operation @s jump2_cp2_timer_dec01_pr %= %10 numbers
# on calcule les centième (par tranches de 5 car Minecraft n'est pas plus précis)

## CHECKPOINT 3

## CALCULATE TIMER

scoreboard players operation @s jump_timer_temp = @s jump2_cp3
scoreboard players operation @s jump_timer_temp /= %20 numbers
# on calcule les secondes (car 20 tick = 1 seconde)

scoreboard players operation @s jump2_cp3_timer_min_pr = @s jump_timer_temp
scoreboard players operation @s jump2_cp3_timer_min_pr /= %60 numbers
# on calcule les minutes totales

## MINUTES
scoreboard players operation @s jump2_cp3_timer_min01_pr = @s jump2_cp3_timer_min_pr
scoreboard players operation @s jump2_cp3_timer_min01_pr %= %10 numbers
# on calcule les unités des minutes

scoreboard players operation @s jump2_cp3_timer_min10_pr = @s jump2_cp3_timer_min_pr
scoreboard players operation @s jump2_cp3_timer_min10_pr /= %10 numbers
# on calcule les dizaine des minutes

## SECONDES
scoreboard players operation @s jump2_cp3_timer_sec_pr = @s jump_timer_temp
scoreboard players operation @s jump2_cp3_timer_sec_pr %= %60 numbers
# on extrait les secondes

scoreboard players operation @s jump2_cp3_timer_sec01_pr = @s jump2_cp3_timer_sec_pr
scoreboard players operation @s jump2_cp3_timer_sec01_pr %= %10 numbers
# on extrait les unités des secondes

scoreboard players operation @s jump2_cp3_timer_sec10_pr = @s jump2_cp3_timer_sec_pr
scoreboard players operation @s jump2_cp3_timer_sec10_pr /= %10 numbers
# on extrait les dizaine des secondes

## DECIMALES
scoreboard players operation @s jump2_cp3_timer_dec_pr = @s jump2_cp3
scoreboard players operation @s jump2_cp3_timer_dec_pr %= %20 numbers
# on calcule les décimales

scoreboard players operation @s jump2_cp3_timer_dec10_pr = @s jump2_cp3_timer_dec_pr
scoreboard players operation @s jump2_cp3_timer_dec10_pr *= %10 numbers
scoreboard players operation @s jump2_cp3_timer_dec10_pr /= %20 numbers
# on calcule les dizièmes

scoreboard players operation @s jump2_cp3_timer_dec01_pr = @s jump2_cp3_timer_dec_pr
scoreboard players operation @s jump2_cp3_timer_dec01_pr *= %100 numbers
scoreboard players operation @s jump2_cp3_timer_dec01_pr /= %20 numbers
scoreboard players operation @s jump2_cp3_timer_dec01_pr %= %10 numbers
# on calcule les centième (par tranches de 5 car Minecraft n'est pas plus précis)

## CHECKPOINT 4

## CALCULATE TIMER

scoreboard players operation @s jump_timer_temp = @s jump2_cp4
scoreboard players operation @s jump_timer_temp /= %20 numbers
# on calcule les secondes (car 20 tick = 1 seconde)

scoreboard players operation @s jump2_cp4_timer_min_pr = @s jump_timer_temp
scoreboard players operation @s jump2_cp4_timer_min_pr /= %60 numbers
# on calcule les minutes totales

## MINUTES
scoreboard players operation @s jump2_cp4_timer_min01_pr = @s jump2_cp4_timer_min_pr
scoreboard players operation @s jump2_cp4_timer_min01_pr %= %10 numbers
# on calcule les unités des minutes

scoreboard players operation @s jump2_cp4_timer_min10_pr = @s jump2_cp4_timer_min_pr
scoreboard players operation @s jump2_cp4_timer_min10_pr /= %10 numbers
# on calcule les dizaine des minutes

## SECONDES
scoreboard players operation @s jump2_cp4_timer_sec_pr = @s jump_timer_temp
scoreboard players operation @s jump2_cp4_timer_sec_pr %= %60 numbers
# on extrait les secondes

scoreboard players operation @s jump2_cp4_timer_sec01_pr = @s jump2_cp4_timer_sec_pr
scoreboard players operation @s jump2_cp4_timer_sec01_pr %= %10 numbers
# on extrait les unités des secondes

scoreboard players operation @s jump2_cp4_timer_sec10_pr = @s jump2_cp4_timer_sec_pr
scoreboard players operation @s jump2_cp4_timer_sec10_pr /= %10 numbers
# on extrait les dizaine des secondes

## DECIMALES
scoreboard players operation @s jump2_cp4_timer_dec_pr = @s jump2_cp4
scoreboard players operation @s jump2_cp4_timer_dec_pr %= %20 numbers
# on calcule les décimales

scoreboard players operation @s jump2_cp4_timer_dec10_pr = @s jump2_cp4_timer_dec_pr
scoreboard players operation @s jump2_cp4_timer_dec10_pr *= %10 numbers
scoreboard players operation @s jump2_cp4_timer_dec10_pr /= %20 numbers
# on calcule les dizièmes

scoreboard players operation @s jump2_cp4_timer_dec01_pr = @s jump2_cp4_timer_dec_pr
scoreboard players operation @s jump2_cp4_timer_dec01_pr *= %100 numbers
scoreboard players operation @s jump2_cp4_timer_dec01_pr /= %20 numbers
scoreboard players operation @s jump2_cp4_timer_dec01_pr %= %10 numbers
# on calcule les centième (par tranches de 5 car Minecraft n'est pas plus précis)