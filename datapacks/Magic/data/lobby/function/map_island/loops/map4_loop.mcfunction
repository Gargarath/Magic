## appelée par lobby:loop si il y a au moins un joueur dans la map volcan
# permet de faire la boucle de volcan

execute as @a[tag=spec_map4] at @s unless entity @s[x=-664,y=131,z=441,dx=134,dy=150,dz=116] run tp @s -611 160 483
# tp les specs qui vont trop loins

function gamemode:ctf/maps_systems/volcano/loop_volcano
# lance le systeme de loop volcan