## appelée par lobby:loop si il y a au moins un joueur dans la map ruine
# permet de faire la boucle de ruine

execute as @a[tag=spec_map5] at @s unless entity @s[x=-589,y=144,z=-202,dx=140,dy=150,dz=190] run tp @s -528.5 161 -51.5
# tp les specs qui vont trop loins

function ctf:maps_systems/ruin/loop_ruin
# lance le systeme de loop ruine