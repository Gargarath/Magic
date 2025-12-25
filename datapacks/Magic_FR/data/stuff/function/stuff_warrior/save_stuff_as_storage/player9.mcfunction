# appelée par determine_player selon le numéro de sort de @s si il est warrior
# permet de save le stuff de @s sous forme de storage

execute if score @s weapon1 matches 0 run data modify storage stats:leaderboards by_player.9.weapon1 set value {"text":""}
execute if score @s weapon1 matches 1 run data modify storage stats:leaderboards by_player.9.weapon1 set from storage ressources warrior.weapon1.1.name
execute if score @s weapon1 matches 2 run data modify storage stats:leaderboards by_player.9.weapon1 set from storage ressources warrior.weapon1.2.name
execute if score @s weapon1 matches 3 run data modify storage stats:leaderboards by_player.9.weapon1 set from storage ressources warrior.weapon1.3.name
execute if score @s weapon1 matches 4 run data modify storage stats:leaderboards by_player.9.weapon1 set from storage ressources warrior.weapon1.4.name
execute if score @s weapon1 matches 5 run data modify storage stats:leaderboards by_player.9.weapon1 set from storage ressources warrior.weapon1.5.name
execute if score @s weapon1 matches 6 run data modify storage stats:leaderboards by_player.9.weapon1 set from storage ressources warrior.weapon1.6.name
execute if score @s weapon1 matches 7 run data modify storage stats:leaderboards by_player.9.weapon1 set from storage ressources warrior.weapon1.7.name
execute if score @s weapon1 matches 8 run data modify storage stats:leaderboards by_player.9.weapon1 set from storage ressources warrior.weapon1.8.name
execute if score @s weapon1 matches 9 run data modify storage stats:leaderboards by_player.9.weapon1 set from storage ressources warrior.weapon1.9.name
execute if score @s weapon1 matches 10 run data modify storage stats:leaderboards by_player.9.weapon1 set from storage ressources warrior.weapon1.10.name

execute if score @s spell1 matches 0 run data modify storage stats:leaderboards by_player.9.spell1 set value {"text":""}
execute if score @s spell1 matches 1 run data modify storage stats:leaderboards by_player.9.spell1 set from storage ressources warrior.spells.spell1lvl1.name
execute if score @s spell1 matches 2 run data modify storage stats:leaderboards by_player.9.spell1 set from storage ressources warrior.spells.spell1lvl2.name
execute if score @s spell1 matches 3 run data modify storage stats:leaderboards by_player.9.spell1 set from storage ressources warrior.spells.spell1lvl3.name

execute if score @s spell2 matches 0 run data modify storage stats:leaderboards by_player.9.spell2 set value {"text":""}
execute if score @s spell2 matches 1 run data modify storage stats:leaderboards by_player.9.spell2 set from storage ressources warrior.spells.spell2lvl1.name
execute if score @s spell2 matches 2 run data modify storage stats:leaderboards by_player.9.spell2 set from storage ressources warrior.spells.spell2lvl2.name
execute if score @s spell2 matches 3 run data modify storage stats:leaderboards by_player.9.spell2 set from storage ressources warrior.spells.spell2lvl3.name

execute if score @s spell3 matches 0 run data modify storage stats:leaderboards by_player.9.spell3 set value {"text":""}
execute if score @s spell3 matches 1 run data modify storage stats:leaderboards by_player.9.spell3 set from storage ressources warrior.spells.spell3lvl1.name