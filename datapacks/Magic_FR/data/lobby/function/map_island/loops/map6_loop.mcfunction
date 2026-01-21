## appelée par lobby:loop si il y a au moins un joueur dans la map bonbon
# permet de faire la boucle de bonbon

execute as @a[tag=spec_map6] at @s unless entity @s[x=-82,y=173,z=-804,dx=126,dy=150,dz=135] run tp @s 5.5 190 -761
# tp les specs qui vont trop loins

function ctf:maps_systems/candyworld/loop_candyworld
# lance le systeme de loop bonbon