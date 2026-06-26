# appelée par ctf:secondary_objectives/bossfight/candyworld_map/summon_cherry/summon_cherry quand on est au round 1
# permet de summon la cerise selon le nombre de joueurs lorsqu'on est au round 1

execute if score min_players living_cherry matches 1 run attribute @e[type=slime,tag=living_cherry,limit=1] minecraft:max_health base set 100
execute if score min_players living_cherry matches 1 run bossbar set minecraft:secondary_objective max 100
# invoque une cerise avec 300hp si l'équipe avec le moins de joueur possède 1 joueur

execute if score min_players living_cherry matches 2 run attribute @e[type=slime,tag=living_cherry,limit=1] minecraft:max_health base set 200
execute if score min_players living_cherry matches 2 run bossbar set minecraft:secondary_objective max 200
# invoque une cerise avec 600hp si l'équipe avec le moins de joueur possède 2 joueurs

execute if score min_players living_cherry matches 3 run attribute @e[type=slime,tag=living_cherry,limit=1] minecraft:max_health base set 300
execute if score min_players living_cherry matches 3 run bossbar set minecraft:secondary_objective max 300
# invoque une cerise avec 900hp si l'équipe avec le moins de joueur possède 3 joueurs

execute if score min_players living_cherry matches 4 run attribute @e[type=slime,tag=living_cherry,limit=1] minecraft:max_health base set 400
execute if score min_players living_cherry matches 4 run bossbar set minecraft:secondary_objective max 400
# invoque une cerise avec 1200hp si l'équipe avec le moins de joueur possède 4 joueurs

execute if score min_players living_cherry matches 5 run attribute @e[type=slime,tag=living_cherry,limit=1] minecraft:max_health base set 500
execute if score min_players living_cherry matches 5 run bossbar set minecraft:secondary_objective max 500
# invoque une cerise avec 1500hp si l'équipe zavec le moins de joueur possède 5 joueurs

execute if score min_players living_cherry matches 6.. run attribute @e[type=slime,tag=living_cherry,limit=1] minecraft:max_health base set 600
execute if score min_players living_cherry matches 6.. run bossbar set minecraft:secondary_objective max 600
# invoque une cerise avec 1800hp si l'équipe avec le moins de joueur possède 6 joueurs ou plus

attribute @e[type=slime,tag=living_cherry,limit=1] minecraft:attack_damage base set 2