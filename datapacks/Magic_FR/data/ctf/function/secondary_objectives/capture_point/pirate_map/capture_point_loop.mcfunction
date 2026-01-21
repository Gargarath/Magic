# appelée par ctf:loop permet de gerer les detections selon qui capture le point de la map pirate

          # PARTICULES

execute if score state point_capture matches 0 at @e[tag=objective_border] run particle minecraft:dust{"color":[1.0,0.0,1.0],"scale":1.0} ~ ~2.25 ~ 0 0 0 0 1 normal
# affiche du rose sur l'objectif secondaire si personne ne l'a encore capturé
execute if score state point_capture matches 1 at @e[tag=objective_border] run particle minecraft:dust{"color":[0.0,0.0,1.0],"scale":1.0} ~ ~2.25 ~ 0 0 0 0 1 normal
# affiche du bleu sur l'objectif secondaire si les bleus l'ont capturé
execute if score state point_capture matches 2 at @e[tag=objective_border] run particle minecraft:dust{"color":[1.0,0.0,0.0],"scale":1.0} ~ ~2.25 ~ 0 0 0 0 1 normal
# affiche du rouge sur l'objectif secondaire si les rouges l'ont capturé
        
        # BOSSBAR
        
function ctf:secondary_objectives/capture_point/refresh_bossbar

         # Récuperer le point

execute as @a[x=265.5,y=94,z=494.5,dx=6.1,dy=4,dz=6.1,scores={trapped=-1}] run scoreboard players add @s stat_obj_time 1

# bleus
execute unless score state point_capture matches 1 as @a[x=265.5,y=94,z=494.5,dx=6.1,dy=4,dz=6.1,team=blue,scores={trapped=-1}] unless entity @a[x=265.5,y=94,z=494.5,dx=6.1,dy=4,dz=6.1,team=red,scores={trapped=-1}] run function ctf:secondary_objectives/capture_point/point_state_0/blue_cap
# si le point n'est pas bleu et qu'un joueur bleu va dessus et qu'il n'y a pas de joueurs rouges -> lance la fonction qui permet au bleu de cap le point
execute unless score state point_capture matches 1 if score capture_blue point_capture matches 1.. unless entity @a[x=265.5,y=94,z=494.5,dx=6.1,dy=4,dz=6.1,team=blue,scores={trapped=-1}] run function ctf:secondary_objectives/capture_point/point_state_0/no_more_blue_on_point
# si le point n'est pas bleu et qu'il n'y a plus de joueurs bleus dessus -> lance la fonction qui reset la cap du point des bleus
execute unless score state point_capture matches 1 if score capture_blue point_capture >= max_capture_blue point_capture run function ctf:secondary_objectives/capture_point/point_state_0/make_point_blue
# fait devenir le point bleu si les bleus ont capturé le point (= leur score de cap = leur score max de cap)

# rouges
execute unless score state point_capture matches 2 as @a[x=265.5,y=94,z=494.5,dx=6.1,dy=4,dz=6.1,team=red,scores={trapped=-1}] unless entity @a[x=265.5,y=94,z=494.5,dx=6.1,dy=4,dz=6.1,team=blue,scores={trapped=-1}] run function ctf:secondary_objectives/capture_point/point_state_0/red_cap
# si le point n'est pas rouge et qu'un joueur rouge va dessus et qu'il n'y a pas de joueurs bleus -> lance la fonction qui permet au rouges de cap le point
execute unless score state point_capture matches 2 if score capture_red point_capture matches 1.. unless entity @a[x=265.5,y=94,z=494.5,dx=6.1,dy=4,dz=6.1,team=red,scores={trapped=-1}] run function ctf:secondary_objectives/capture_point/point_state_0/no_more_red_on_point
# si le point n'est pas rouge et qu'il n'y a plus de joueurs rouges dessus -> lance la fonction qui reset la cap du point des rouges
execute unless score state point_capture matches 2 if score capture_red point_capture >= max_capture_red point_capture run function ctf:secondary_objectives/capture_point/point_state_0/make_point_red
# fait devenir le point rouge si les rouge ont capturé le point (= leur score de cap = leur score max de cap)

# barres de capture
execute unless score state point_capture matches 1 run bossbar set minecraft:point_capture_blue players @a[x=265.5,y=94,z=494.5,dx=6.1,dy=4,dz=6.1,team=blue]
execute unless score state point_capture matches 2 run bossbar set minecraft:point_capture_red players @a[x=265.5,y=94,z=494.5,dx=6.1,dy=4,dz=6.1,team=red]
# affiche la barre de capture de leur équipe à ceux qui capturent

         # STATE 1 = l'équipe bleue contrôle le point

execute if score state point_capture matches 1 as @a[x=265.5,y=94,z=494.5,dx=6.1,dy=4,dz=6.1,scores={trapped=-1},team=blue] unless entity @a[x=265.5,y=94,z=494.5,dx=6.1,dy=4,dz=6.1,scores={trapped=-1},team=red] run function ctf:secondary_objectives/capture_point/point_state_1/blue_cap_point
# si l'équipe bleue contrôle le point et qu'un joueur bleu est dessus, monte le score des bleus
execute if score state point_capture matches 1 if score blue point_capture >= max_blue point_capture run function ctf:secondary_objectives/capture_point/point_state_1/blue_win_objective
# Les bleus gagnent l'objectif secondaire si leur score atteint son maximum



         # STATE 2 = l'équipe rouge contrôle le point

execute if score state point_capture matches 2 as @a[x=265.5,y=94,z=494.5,dx=6.1,dy=4,dz=6.1,scores={trapped=-1},team=red] unless entity @a[x=265.5,y=94,z=494.5,dx=6.1,dy=4,dz=6.1,scores={trapped=-1},team=blue] run function ctf:secondary_objectives/capture_point/point_state_2/red_cap_point
# si l'équipe rouge contrôle le point et qu'un joueur rouge est dessus, monte le score des rouge
execute if score state point_capture matches 2 if score red point_capture >= max_red point_capture run function ctf:secondary_objectives/capture_point/point_state_2/red_win_objective
# Les rouges gagnent l'objectif secondaire si leur score atteint son maximum