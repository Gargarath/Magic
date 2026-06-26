## appelée par les displays au nom de l'armor_stand
# permet de personaliser le stuff de l'armor_stand selon ce qu'avait le joueur

execute if score @s leaderboard_stand_class matches 1 run function main:stats/leaderboard/display/give_equipement/warrior
execute if score @s leaderboard_stand_class matches 2 run function main:stats/leaderboard/display/give_equipement/archer
execute if score @s leaderboard_stand_class matches 3 run function main:stats/leaderboard/display/give_equipement/mage
execute if score @s leaderboard_stand_class matches 4 run function main:stats/leaderboard/display/give_equipement/rogue