## appelée par loop_candyworld si le pain d'épice bleu est dispo

execute positioned -47.00 160.20 -709.00 run function gamemode:ctf/maps_systems/candyworld/gingerbread/blue/ready/particle_area
# affiche les particules
execute as @a[x=-47.60,y=160.00,z=-709.60,dx=0.3,dy=1,dz=0.3,tag=!gingerbread_area_blue,scores={trapped=-1,hooked_w=-1},gamemode=adventure] run function gamemode:ctf/maps_systems/candyworld/gingerbread/blue/ready/timer_before_kick/enter_area
# si un joueur entre dans la zone lui affiche la bossbar
execute as @a[tag=gingerbread_area_blue] unless entity @s[x=-47.60,y=160.00,z=-709.60,dx=0.3,dy=1,dz=0.3,gamemode=adventure] run function gamemode:ctf/maps_systems/candyworld/gingerbread/blue/ready/timer_before_kick/exit_area
# si un joueur quitte la zone, lui enlève la bossbar
execute as @a[x=-47.60,y=160.00,z=-709.60,dx=0.3,dy=1,dz=0.3,scores={trapped=-1,hooked_w=-1},gamemode=adventure] run function gamemode:ctf/maps_systems/candyworld/gingerbread/blue/ready/timer_before_kick/in_area_clock
# si un joueur est dans la zone, lui actualise la bossbar