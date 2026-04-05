# appelée par main:launch_arena/launch_map_ruin
# permet de tp @s et de setup son spawnpoint selon son équipe et numéro de joueur

spawnpoint @s[scores={Player=1}] -529 121 -49
# spawnpoint joueur 1
spawnpoint @s[scores={Player=2}] -509 121 -173
# spawnpoint joueur 2
spawnpoint @s[scores={Player=3}] -527 121 -49
# spawnpoint joueur 3
spawnpoint @s[scores={Player=4}] -511 121 -173
# spawnpoint joueur 4
spawnpoint @s[scores={Player=5}] -525 121 -49
# spawnpoint joueur 5
spawnpoint @s[scores={Player=6}] -513 121 -173
# spawnpoint joueur 6
spawnpoint @s[scores={Player=7}] -529 121 -51
# spawnpoint joueur 7
spawnpoint @s[scores={Player=8}] -509 121 -171
# spawnpoint joueur 8
spawnpoint @s[scores={Player=9}] -527 121 -51
# spawnpoint joueur 9
spawnpoint @s[scores={Player=10}] -511 121 -171
# spawnpoint joueur 10
spawnpoint @s[scores={Player=11}] -525 121 -51
# spawnpoint joueur 11
spawnpoint @s[scores={Player=12}] -513 121 -171
# spawnpoint joueur 12
spawnpoint @s[scores={Player=-1}] -523 157 -60
# spawnpoint spectateurs


tp @s[tag=red_team,scores={Player=1..}] -510.5 151 -163.5 10.5 -2
tp @s[tag=blue_team,scores={Player=1..}] -526.5 151 -57.5 -169.5 -2