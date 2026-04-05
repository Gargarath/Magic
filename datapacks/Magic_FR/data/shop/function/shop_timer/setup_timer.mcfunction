## appelée par shop_is_ready si le timer de shop est activé
# permet de setup le timer de shop

scoreboard players operation $time timers = $shop_timer option_panel
# copie le temps max du timer du shop depuis les options

## DIVISION DU TEMPS EN MINUTES / SECONDES1 / SECONDES2

# 2) minutes = #time / 60
scoreboard players operation $minutes timers = $time timers
scoreboard players operation $minutes timers /= #60 operations


# 3) secondes = #time % 60
scoreboard players operation $seconds timers = $time timers
scoreboard players operation $seconds timers %= #60 operations


# 4) dizaine = sec / 10
scoreboard players operation #seconds1 timers = $seconds timers
scoreboard players operation #seconds1 timers /= #10 operations

#  unité = sec % 10
scoreboard players operation #seconds2 timers = $seconds timers
scoreboard players operation #seconds2 timers %= #10 operations


## AFFICHAGE

execute if score $minutes timers matches 1 run data modify storage minecraft:matchinfo time.minutes set value {"text":"1","color":"gold"}
execute if score $minutes timers matches 0 run data modify storage minecraft:matchinfo time.minutes set value {"text":"0","color":"gold"}

data modify storage minecraft:matchinfo time.colon set value {"text":":","color":"gold"}

execute if score #seconds1 timers matches 0 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"0","color":"gold"}
execute if score #seconds1 timers matches 1 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"1","color":"gold"}
execute if score #seconds1 timers matches 2 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"2","color":"gold"}
execute if score #seconds1 timers matches 3 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"3","color":"gold"}
execute if score #seconds1 timers matches 4 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"4","color":"gold"}
execute if score #seconds1 timers matches 5 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"5","color":"gold"}
execute if score #seconds1 timers matches 6 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"6","color":"gold"}
execute if score #seconds1 timers matches 7 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"7","color":"gold"}
execute if score #seconds1 timers matches 8 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"8","color":"gold"}
execute if score #seconds1 timers matches 9 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"9","color":"gold"}

execute if score #seconds2 timers matches 0 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"0","color":"gold"}
execute if score #seconds2 timers matches 1 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"1","color":"gold"}
execute if score #seconds2 timers matches 2 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"2","color":"gold"}
execute if score #seconds2 timers matches 3 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"3","color":"gold"}
execute if score #seconds2 timers matches 4 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"4","color":"gold"}
execute if score #seconds2 timers matches 5 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"5","color":"gold"}
execute if score #seconds2 timers matches 6 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"6","color":"gold"}
execute if score #seconds2 timers matches 7 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"7","color":"gold"}
execute if score #seconds2 timers matches 8 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"8","color":"gold"}
execute if score #seconds2 timers matches 9 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"9","color":"gold"}
# Affiche le timer selon ce qui a été configuré

## DEMARRAGE CLOCK

schedule function shop:shop_timer/shop_timer 1s
# lance la clock de timer
