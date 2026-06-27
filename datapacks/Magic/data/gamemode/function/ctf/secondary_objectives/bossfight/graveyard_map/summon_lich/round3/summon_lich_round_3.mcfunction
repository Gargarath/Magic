# appelée par ctf:secondary_objectives/bossfight/graveyard_map/summon_lich/summon_lich quand on est au round 3
# permet de summon la liche selon le nombre de joueurs lorsqu'on est au round 3

execute if score min_players lich matches 1 run attribute @e[type=wither_skeleton,tag=lich,limit=1] minecraft:max_health base set 150
execute if score min_players lich matches 1 run bossbar set secondary_objective:state max 150
# invoque une liche avec 350hp si l'équipe avec le moins de joueur possède 1 joueur

execute if score min_players lich matches 2 run attribute @e[type=wither_skeleton,tag=lich,limit=1] minecraft:max_health base set 300
execute if score min_players lich matches 2 run bossbar set secondary_objective:state max 300
# invoque une liche avec 700hp si l'équipe avec le moins de joueur possède 2 joueurs

execute if score min_players lich matches 3 run attribute @e[type=wither_skeleton,tag=lich,limit=1] minecraft:max_health base set 450
execute if score min_players lich matches 3 run bossbar set secondary_objective:state max 450
# invoque une liche avec 1050hp si l'équipe avec le moins de joueur possède 3 joueurs

execute if score min_players lich matches 4 run attribute @e[type=wither_skeleton,tag=lich,limit=1] minecraft:max_health base set 600
execute if score min_players lich matches 4 run bossbar set secondary_objective:state max 600
# invoque une liche avec 1400hp si l'équipe avec le moins de joueur possède 4 joueurs

execute if score min_players lich matches 5 run attribute @e[type=wither_skeleton,tag=lich,limit=1] minecraft:max_health base set 750
execute if score min_players lich matches 5 run bossbar set secondary_objective:state max 750
# invoque une liche avec 1750hp si l'équipe avec le moins de joueur possède 5 joueurs

execute if score min_players lich matches 6.. run attribute @e[type=wither_skeleton,tag=lich,limit=1] minecraft:max_health base set 900
execute if score min_players lich matches 6.. run bossbar set secondary_objective:state max 900
# invoque une liche avec 2100hp si l'équipe avec le moins de joueur possède 6 joueurs ou plus