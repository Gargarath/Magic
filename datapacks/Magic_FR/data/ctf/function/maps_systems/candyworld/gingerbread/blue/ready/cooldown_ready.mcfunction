## appelée par gingerbread_non_ready/cooldown

scoreboard players set cooldown_blue gingerbread -1
kill @e[type=minecraft:text_display,tag=gringerbread_cooldown_blue]
clone -18 141 -710 -11 150 -703 -52 177 -708
# tête devient contente
scoreboard players set ready_blue gingerbread 1

execute positioned -48 160 -709 run playsound minecraft:block.beacon.power_select master @a[distance=..25] ~ ~ ~ 100 1
clone -27 141 -775 -20 150 -768 7 177 -777