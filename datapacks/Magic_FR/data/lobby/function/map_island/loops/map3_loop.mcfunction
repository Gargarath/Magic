## appelée par lobby:loop si il y a au moins un joueur dans la map usine
# permet de faire la boucle de usine

execute as @a[tag=spec_map3] at @s unless entity @s[x=264,y=144,z=-35,dx=115,dy=32,dz=84] run tp @s 297.5 157 20.0
# tp les specs qui vont trop loins

function gamemode:ctf/maps_systems/factory/loop_factory
# lance le systeme de loop usine