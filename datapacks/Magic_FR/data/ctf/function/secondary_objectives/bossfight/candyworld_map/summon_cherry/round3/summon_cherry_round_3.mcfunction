# appelée par ctf:secondary_objectives/bossfight/candyworld_map/summon_cherry/summon_cherry quand on est au round 3
# permet de summon la cerise selon le nombre de joueurs lorsqu'on est au round 3

execute if score min_players living_cherry matches 1 run attribute @e[type=slime,tag=living_cherry,limit=1] minecraft:max_health base set 150
execute if score min_players living_cherry matches 1 run bossbar set minecraft:secondary_objective max 150
# invoque une cerise avec 400hp si l'équipe avec le moins de joueur possède 1 joueur

execute if score min_players living_cherry matches 2 run attribute @e[type=slime,tag=living_cherry,limit=1] minecraft:max_health base set 300
execute if score min_players living_cherry matches 2 run bossbar set minecraft:secondary_objective max 300
# invoque une cerise avec 800hp si l'équipe avec le moins de joueur possède 2 joueurs

execute if score min_players living_cherry matches 3 run attribute @e[type=slime,tag=living_cherry,limit=1] minecraft:max_health base set 450
execute if score min_players living_cherry matches 3 run bossbar set minecraft:secondary_objective max 450
# invoque une cerise avec 1200hp si l'équipe avec le moins de joueur possède 3 joueurs

execute if score min_players living_cherry matches 4 run attribute @e[type=slime,tag=living_cherry,limit=1] minecraft:max_health base set 600
execute if score min_players living_cherry matches 4 run bossbar set minecraft:secondary_objective max 600
# invoque une cerise avec 1600hp si l'équipe avec le moins de joueur possède 4 joueurs

execute if score min_players living_cherry matches 5 run attribute @e[type=slime,tag=living_cherry,limit=1] minecraft:max_health base set 750
execute if score min_players living_cherry matches 5 run bossbar set minecraft:secondary_objective max 750
# invoque une cerise avec 2000hp si l'équipe avec le moins de joueur possède 5 joueurs

execute if score min_players living_cherry matches 6.. run attribute @e[type=slime,tag=living_cherry,limit=1] minecraft:max_health base set 900
execute if score min_players living_cherry matches 6.. run bossbar set minecraft:secondary_objective max 900
# invoque une cerise avec 2400hp si l'équipe avec le moins de joueur possède 6 joueurs ou plus

attribute @e[type=slime,tag=living_cherry,limit=1] minecraft:attack_damage base set 4