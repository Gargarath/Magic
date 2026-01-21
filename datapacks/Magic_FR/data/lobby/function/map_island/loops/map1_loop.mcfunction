## appelée par lobby:loop si il y a au moins un joueur dans la map pirate
# permet de faire la boucle de pirate

execute as @a[tag=spec_map1] at @s unless entity @s[x=170,y=60,z=420,dx=199,dy=150,dz=156] run tp @s 268 114 498
# tp les specs qui vont trop loins

function ctf:maps_systems/pirate/loop_pirate
# lance le systeme de loop pirate