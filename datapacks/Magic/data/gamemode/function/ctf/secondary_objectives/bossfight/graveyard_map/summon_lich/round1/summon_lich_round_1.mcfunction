# appelée par ctf:secondary_objectives/bossfight/graveyard_map/summon_lich/summon_lich quand on est au round 1
# permet de summon la liche selon le nombre de joueurs lorsqu'on est au round 1

execute if score min_players lich matches 1 run attribute @e[type=wither_skeleton,tag=lich,limit=1] minecraft:max_health base set 100
execute if score min_players lich matches 1 run bossbar set minecraft:secondary_objective max 100
# invoque une liche avec 250hp si l'équipe avec le moins de joueur possède 1 joueur

execute if score min_players lich matches 2 run attribute @e[type=wither_skeleton,tag=lich,limit=1] minecraft:max_health base set 200
execute if score min_players lich matches 2 run bossbar set minecraft:secondary_objective max 200
# invoque une liche avec 500hp si l'équipe avec le moins de joueur possède 2 joueurs

execute if score min_players lich matches 3 run attribute @e[type=wither_skeleton,tag=lich,limit=1] minecraft:max_health base set 300
execute if score min_players lich matches 3 run bossbar set minecraft:secondary_objective max 300
# invoque une liche avec 750hp si l'équipe avec le moins de joueur possède 3 joueurs

execute if score min_players lich matches 4 run attribute @e[type=wither_skeleton,tag=lich,limit=1] minecraft:max_health base set 400
execute if score min_players lich matches 4 run bossbar set minecraft:secondary_objective max 400
# invoque une liche avec 1000hp si l'équipe avec le moins de joueur possède 4 joueurs

execute if score min_players lich matches 5 run attribute @e[type=wither_skeleton,tag=lich,limit=1] minecraft:max_health base set 500
execute if score min_players lich matches 5 run bossbar set minecraft:secondary_objective max 500
# invoque une liche avec 1250hp si l'équipe avec le moins de joueur possède 5 joueurs

execute if score min_players lich matches 6.. run attribute @e[type=wither_skeleton,tag=lich,limit=1] minecraft:max_health base set 600
execute if score min_players lich matches 6.. run bossbar set minecraft:secondary_objective max 600
# invoque une liche avec 1500hp si l'équipe avec le moins de joueur possède 6 joueurs ou plus