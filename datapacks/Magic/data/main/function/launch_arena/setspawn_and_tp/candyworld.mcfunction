# appelée par main:launch_arena/launch_map_candyworld
# permet de tp @s et de setup son spawnpoint selon son équipe et numéro de joueur

spawnpoint @s[scores={Player=1}] -17 147 -684
# spawnpoint joueur 1
spawnpoint @s[scores={Player=2}] -21 147 -794
# spawnpoint joueur 2
spawnpoint @s[scores={Player=3}] -19 147 -684
# spawnpoint joueur 3
spawnpoint @s[scores={Player=4}] -19 147 -794
# spawnpoint joueur 4
spawnpoint @s[scores={Player=5}] -21 147 -684
# spawnpoint joueur 5
spawnpoint @s[scores={Player=6}] -17 147 -794
# spawnpoint joueur 6
spawnpoint @s[scores={Player=7}] -17 147 -686
# spawnpoint joueur 7
spawnpoint @s[scores={Player=8}] -21 147 -792
# spawnpoint joueur 8
spawnpoint @s[scores={Player=9}] -19 147 -686
# spawnpoint joueur 9
spawnpoint @s[scores={Player=10}] -19 147 -792
# spawnpoint joueur 10
spawnpoint @s[scores={Player=11}] -21 147 -686
# spawnpoint joueur 11
spawnpoint @s[scores={Player=12}] -17 147 -792
# spawnpoint joueur 12
spawnpoint @s[scores={Player=-1}] 12 198 -738 90 0
# spawnpoint spectateurs


tp @s[tag=red_team,scores={Player=1..}] -19 173 -793 0 5
tp @s[tag=blue_team,scores={Player=1..}] -19 173 -685 180 5