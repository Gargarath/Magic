# appelée par shop:loop au nom du joueur qui a cliqué pour sortir du mode spec

tag @s remove spec_room1
tag @s remove spec_room2
tag @s remove spec_room3
tag @s remove spec_room4
tag @s remove spec_room5
tag @s remove spec_room6
tag @s remove spec_room7
tag @s remove spec_room8
tag @s remove spec_room9
tag @s remove spec_room10
tag @s remove spec_room11
tag @s remove spec_room12
# enleve le tag de la room de @s ainsi il ne sera plus tp en boucle si il s'ecarte trop de la room qu'il était en train de spec

scoreboard players set @s spec_stop 0
# reset le score de spec_stop de @s pour éviter que cette fonction ne soit appelée en boucle

execute at @e[type=marker,tag=shop_room0] run tp @s ~ ~ ~ 0 -5
gamemode adventure @s
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100 1
tellraw @s ["",{"text":"\nVous avez arrêté d'observer.","italic":true,"color":"gray"}]
