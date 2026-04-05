# appelée par ctf:loop quand il faut activer la vapeur rouge

execute if score blue steam_timer matches 250.. positioned -600.0 147.65 509.5 as @a[distance=..10] run playsound minecraft:weather.rain.above master @s -600.0 147 509.5 1 0 1
# fait un bruit dans la zone

execute positioned -600.18 147 509.24 run particle minecraft:cloud ~ ~0.5 ~ 0.25 0 0.25 0.05 1 force
execute positioned -598.60 147 508.33 run particle minecraft:cloud ~ ~0.5 ~ 0.25 0 0.25 0.05 1 force
execute positioned -600.9 146.5 507 run particle minecraft:cloud ~ ~0.5 ~ 0.25 0 0.25 0.05 1 force
execute positioned -601.3 146 509.34 run particle minecraft:cloud ~ ~0.5 ~ 0.25 0 0.25 0.05 1 force
# fait des particules de fumée

execute as @a[x=-602,y=147,z=509,dx=3,dy=1,dz=-2] run effect give @s minecraft:instant_damage 1 2 true
# inflige des dégâts dans la zone