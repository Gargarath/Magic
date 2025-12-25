## appelée par loop_candyworld si le pain d'épice rouge est dispo

execute positioned 10.00 180.20 -767.99 run function ctf:maps_systems/candyworld/gingerbread/red/ready/particle_area
# affiche les particules
execute as @a[x=9.60,y=180.00,z=-768.60,dx=0.3,dy=1,dz=0.3,tag=!gingerbread_area_red,scores={trapped=-1,hooked_w=-1},gamemode=adventure] run function ctf:maps_systems/candyworld/gingerbread/red/ready/timer_before_kick/enter_area
# si un joueur entre dans la zone lui affiche la bossbar
execute as @a[tag=gingerbread_area_red] unless entity @s[x=9.60,y=180.00,z=-768.60,dx=0.3,dy=1,dz=0.3,gamemode=adventure] run function ctf:maps_systems/candyworld/gingerbread/red/ready/timer_before_kick/exit_area
# si un joueur quitte la zone, lui enlève la bossbar
execute as @a[x=9.60,y=180.00,z=-768.60,dx=0.3,dy=1,dz=0.3,scores={trapped=-1,hooked_w=-1},gamemode=adventure] run function ctf:maps_systems/candyworld/gingerbread/red/ready/timer_before_kick/in_area_clock
# si un joueur est dans la zone, lui actualise la bossbar