# appelée par ctf:secondary_objectives/bossfight/graveyard_map/summon_golem/summon_golem quand on est au round 2
# permet de summon le golem selon le nombre de joueurs lorsqu'on est au round 2
execute if score min_players golem matches 1 run attribute @e[type=iron_golem,tag=golem,limit=1] minecraft:max_health base set 125
execute if score min_players golem matches 1 run bossbar set secondary_objective:state max 125
# invoque un golem avec 300hp si l'équipe avec le moins de joueur possède 1 joueur

execute if score min_players golem matches 2 run attribute @e[type=iron_golem,tag=golem,limit=1] minecraft:max_health base set 250
execute if score min_players golem matches 2 run bossbar set secondary_objective:state max 250
# invoque un golem avec 300hp si l'équipe avec le moins de joueur possède 2 joueurs

execute if score min_players golem matches 3 run attribute @e[type=iron_golem,tag=golem,limit=1] minecraft:max_health base set 375
execute if score min_players golem matches 3 run bossbar set secondary_objective:state max 375
# invoque un golem avec 300hp si l'équipe avec le moins de joueur possède 3 joueurs

execute if score min_players golem matches 4 run attribute @e[type=iron_golem,tag=golem,limit=1] minecraft:max_health base set 500
execute if score min_players golem matches 4 run bossbar set secondary_objective:state max 500
# invoque un golem avec 300hp si l'équipe avec le moins de joueur possède 4 joueurs

execute if score min_players golem matches 5 run attribute @e[type=iron_golem,tag=golem,limit=1] minecraft:max_health base set 625
execute if score min_players golem matches 5 run bossbar set secondary_objective:state max 625
# invoque un golem avec 300hp si l'équipe avec le moins de joueur possède 5 joueurs

execute if score min_players golem matches 6.. run attribute @e[type=iron_golem,tag=golem,limit=1] minecraft:max_health base set 750
execute if score min_players golem matches 6.. run bossbar set secondary_objective:state max 750
# invoque un golem avec 300hp si l'équipe avec le moins de joueur possède 6 joueurs ou plus