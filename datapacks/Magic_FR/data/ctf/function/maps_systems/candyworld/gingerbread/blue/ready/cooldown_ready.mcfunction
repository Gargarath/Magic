## appelée par gingerbread_non_ready/cooldown

scoreboard players set cooldown_blue gingerbread -1
kill @e[type=minecraft:text_display,tag=gringerbread_cooldown_blue]
clone -18 161 -710 -11 170 -703 -52 197 -708
# tête devient contente
scoreboard players set ready_blue gingerbread 1

execute positioned -48 180 -709 run playsound minecraft:block.beacon.power_select master @a[distance=..25] ~ ~ ~ 100 1
clone -27 161 -775 -20 170 -768 7 197 -777