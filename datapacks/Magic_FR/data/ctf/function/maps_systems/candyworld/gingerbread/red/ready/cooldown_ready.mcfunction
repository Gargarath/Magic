## appelée par gingerbread_non_ready/cooldown

scoreboard players set cooldown_red gingerbread -1
kill @e[type=minecraft:text_display,tag=gringerbread_cooldown_red]
clone -27 141 -775 -20 150 -768 7 177 -777
# tête devient contente
scoreboard players set ready_red gingerbread 1

execute positioned 10 160 -769 run playsound minecraft:block.beacon.power_select master @a[distance=..25] ~ ~ ~ 100 1