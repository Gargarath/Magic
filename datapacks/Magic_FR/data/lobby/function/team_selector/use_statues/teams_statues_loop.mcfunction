## appelée par lobby:loop quand on est en mode CTF
# permet de rendre les statues pour choisir son équipe fonctionnelles

    # Bleu

execute positioned -10.5 99 -17.5 as @a[distance=..2,tag=!blue_team,team=!spectator,team=!spectator_op] run function lobby:team_selector/use_statues/use_blue_statue
execute positioned -10.5 99 -17.5 run particle dust{color:[0.000,0.000,1.000],scale:1} ~ ~ ~ 0.5 0.2 0.5 0 3 normal @a[tag=!blue_team,team=!spectator,team=!spectator_op]

execute store result score blue playercount if entity @a[tag=blue_team]
execute if score $max blue_member > blue playercount run function lobby:team_selector/display_team_members/blue/remove_member
# permet de compter le nombre de joueur bleu et d'actualiser les statues si certains leavent


    # Rouge

execute positioned 11.5 99 -17.5 as @a[distance=..2,tag=!red_team,team=!spectator,team=!spectator_op] run function lobby:team_selector/use_statues/use_red_statue
execute positioned 11.5 99 -17.5 run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.5 0.2 0.5 0 3 normal @a[tag=!red_team,team=!spectator,team=!spectator_op]

execute store result score red playercount if entity @a[tag=red_team]
execute store result score red playercount if entity @a[tag=red_team]
execute if score $max red_member > red playercount run function lobby:team_selector/display_team_members/red/remove_member
# permet de compter le nombre de joueur rouge et d'actualiser les statues si certains leavent