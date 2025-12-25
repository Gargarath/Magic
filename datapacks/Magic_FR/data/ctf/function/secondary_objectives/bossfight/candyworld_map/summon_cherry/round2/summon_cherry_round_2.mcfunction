# appelée par ctf:secondary_objectives/bossfight/candyworld_map/summon_cherry/summon_cherry quand on est au round 2
# permet de summon la cerise selon le nombre de joueurs lorsqu'on est au round 2

execute if score min_players living_cherry matches 1 run attribute @e[type=slime,tag=living_cherry,limit=1] minecraft:max_health base set 125
execute if score min_players living_cherry matches 1 run bossbar set minecraft:secondary_objective max 125
# invoque une cerise avec 350hp si l'équipe avec le moins de joueur possède 1 joueur

execute if score min_players living_cherry matches 2 run attribute @e[type=slime,tag=living_cherry,limit=1] minecraft:max_health base set 250
execute if score min_players living_cherry matches 2 run bossbar set minecraft:secondary_objective max 250
# invoque une cerise avec 700hp si l'équipe avec le moins de joueur possède 2 joueurs

execute if score min_players living_cherry matches 3 run attribute @e[type=slime,tag=living_cherry,limit=1] minecraft:max_health base set 375
execute if score min_players living_cherry matches 3 run bossbar set minecraft:secondary_objective max 375
# invoque une cerise avec 1050hp si l'équipe avec le moins de joueur possède 3 joueurs

execute if score min_players living_cherry matches 4 run attribute @e[type=slime,tag=living_cherry,limit=1] minecraft:max_health base set 500
execute if score min_players living_cherry matches 4 run bossbar set minecraft:secondary_objective max 500
# invoque une cerise avec 1400hp si l'équipe avec le moins de joueur possède 4 joueurs

execute if score min_players living_cherry matches 5 run attribute @e[type=slime,tag=living_cherry,limit=1] minecraft:max_health base set 625
execute if score min_players living_cherry matches 5 run bossbar set minecraft:secondary_objective max 625
# invoque une cerise avec 1750hp si l'équipe avec le moins de joueur possède 5 joueurs

execute if score min_players living_cherry matches 6.. run attribute @e[type=slime,tag=living_cherry,limit=1] minecraft:max_health base set 750
execute if score min_players living_cherry matches 6.. run bossbar set minecraft:secondary_objective max 750
# invoque une cerise avec 2100hp si l'équipe avec le moins de joueur possède 6 joueurs ou plus

attribute @e[type=slime,tag=living_cherry,limit=1] minecraft:attack_damage base set 3