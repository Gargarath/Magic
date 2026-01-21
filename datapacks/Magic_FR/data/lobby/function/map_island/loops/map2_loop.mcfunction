## appelée par lobby:loop si il y a au moins un joueur dans la map cimetière
# permet de faire la boucle de cimetière

execute as @a[tag=spec_map2] at @s unless entity @s[x=161,y=150,z=-349,dx=125,dy=150,dz=135] run tp @s 218 172 -312
# tp les specs qui vont trop loins

function ctf:maps_systems/graveyard/loop_graveyard
# lance le systeme de loop cimetière