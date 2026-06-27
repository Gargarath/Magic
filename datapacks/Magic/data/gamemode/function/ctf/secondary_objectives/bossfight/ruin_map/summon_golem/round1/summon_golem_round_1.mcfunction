# appelée par ctf:secondary_objectives/bossfight/ruin_map/summon_golem/summon_golem quand on est au round 1
# permet de summon le golem selon le nombre de joueurs lorsqu'on est au round 1

execute if score min_players golem matches 1 run attribute @e[type=iron_golem,tag=golem,limit=1] minecraft:max_health base set 100
execute if score min_players golem matches 1 run bossbar set secondary_objective:state max 100
# invoque un golem avec 300hp si l'équipe avec le moins de joueur possède 1 joueur

execute if score min_players golem matches 2 run attribute @e[type=iron_golem,tag=golem,limit=1] minecraft:max_health base set 200
execute if score min_players golem matches 2 run bossbar set secondary_objective:state max 200
# invoque un golem avec 600hp si l'équipe avec le moins de joueur possède 2 joueurs

execute if score min_players golem matches 3 run attribute @e[type=iron_golem,tag=golem,limit=1] minecraft:max_health base set 300
execute if score min_players golem matches 3 run bossbar set secondary_objective:state max 300
# invoque un golem avec 900hp si l'équipe avec le moins de joueur possède 3 joueurs

execute if score min_players golem matches 4 run attribute @e[type=iron_golem,tag=golem,limit=1] minecraft:max_health base set 400
execute if score min_players golem matches 4 run bossbar set secondary_objective:state max 400
# invoque un golem avec 1200hp si l'équipe avec le moins de joueur possède 4 joueurs

execute if score min_players golem matches 5 run attribute @e[type=iron_golem,tag=golem,limit=1] minecraft:max_health base set 500
execute if score min_players golem matches 5 run bossbar set secondary_objective:state max 500
# invoque un golem avec 1500hp si l'équipe avec le moins de joueur possède 5 joueurs

execute if score min_players golem matches 6.. run attribute @e[type=iron_golem,tag=golem,limit=1] minecraft:max_health base set 600
execute if score min_players golem matches 6.. run bossbar set secondary_objective:state max 600
# invoque un golem avec 1800hp si l'équipe avec le moins de joueur possède 6 joueurs ou plus