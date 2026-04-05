# appelée par ctf:loop quand il faut activer la vapeur rouge

execute if score red steam_timer matches 250.. run execute positioned -595.00 147.65 490.50 as @a[distance=..10] run playsound minecraft:weather.rain.above master @s -595.00 147 490.50 1 0 1
# fait un bruit dans la zone

execute positioned -594.82 147.00 490.76 run particle minecraft:cloud ~ ~0.5 ~ 0.25 0 0.25 0.05 1 force
execute positioned -596.40 147.00 491.67 run particle minecraft:cloud ~ ~0.5 ~ 0.25 0 0.25 0.05 1 force
execute positioned -594.1 146.5 492 run particle minecraft:cloud ~ ~0.5 ~ 0.25 0 0.25 0.05 1 force
execute positioned -593.70 146.00 490.66 run particle minecraft:cloud ~ ~0.5 ~ 0.25 0 0.25 0.05 1 force
# fait des particules de fumée

execute as @a[x=-594,y=147,z=490,dx=-3,dy=1,dz=2] run effect give @s minecraft:instant_damage 1 2 true
# inflige des dégâts dans la zone