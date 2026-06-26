## appelée par shop_setup_timer
# permet de faire descendre le timer de shop

# 1) On enlève 1 seconde
scoreboard players remove $time timers 1


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

execute if score $minutes timers matches 1 run data modify storage minecraft:matchinfo time.minutes set value {"text":"1","color":"gold"}
execute if score $minutes timers matches 0 run data modify storage minecraft:matchinfo time.minutes set value {"text":"0","color":"gold"}

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

execute if score $time timers matches 1..5 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 0

execute if score $time timers matches 0 as @a at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 100 2
execute if score $time timers matches 0 run return run function main:launch_arena/all_ready
execute if score $time timers matches 1.. run schedule function shop:shop_timer/shop_timer 1s
