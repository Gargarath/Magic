# appelée par ctf:secondary_objectives/bossfight/graveyard_map/summon_golem/summon_golem quand on est au round 3
# permet de summon le golem selon le nombre de joueurs lorsqu'on est au round 3

execute if score min_players golem matches 1 run attribute @e[type=iron_golem,tag=golem,limit=1] minecraft:max_health base set 150
execute if score min_players golem matches 1 run bossbar set minecraft:secondary_objective max 150
# invoque un golem avec 300hp si l'équipe avec le moins de joueur possède 1 joueur

execute if score min_players golem matches 2 run attribute @e[type=iron_golem,tag=golem,limit=1] minecraft:max_health base set 300
execute if score min_players golem matches 2 run bossbar set minecraft:secondary_objective max 300
# invoque un golem avec 300hp si l'équipe avec le moins de joueur possède 2 joueurs

execute if score min_players golem matches 3 run attribute @e[type=iron_golem,tag=golem,limit=1] minecraft:max_health base set 450
execute if score min_players golem matches 3 run bossbar set minecraft:secondary_objective max 450
# invoque un golem avec 300hp si l'équipe avec le moins de joueur possède 3 joueurs

execute if score min_players golem matches 4 run attribute @e[type=iron_golem,tag=golem,limit=1] minecraft:max_health base set 600
execute if score min_players golem matches 4 run bossbar set minecraft:secondary_objective max 600
# invoque un golem avec 300hp si l'équipe avec le moins de joueur possède 4 joueurs

execute if score min_players golem matches 5 run attribute @e[type=iron_golem,tag=golem,limit=1] minecraft:max_health base set 750
execute if score min_players golem matches 5 run bossbar set minecraft:secondary_objective max 750
# invoque un golem avec 300hp si l'équipe avec le moins de joueur possède 5 joueurs

execute if score min_players golem matches 6.. run attribute @e[type=iron_golem,tag=golem,limit=1] minecraft:max_health base set 900
execute if score min_players golem matches 6.. run bossbar set minecraft:secondary_objective max 900
# invoque un golem avec 300hp si l'équipe avec le moins de joueur possède 6 joueurs ou plus