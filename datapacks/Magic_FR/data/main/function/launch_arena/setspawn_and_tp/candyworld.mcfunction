# appelée par main:launch_arena/launch_map_candyworld et reconnect_in_shop au nom des joueurs à tp
# permet de tp @s et de setup son spawnpoint selon son équipe et numéro de joueur

spawnpoint @s[scores={Player=1}] -17 167 -684
# spawnpoint joueur 1
spawnpoint @s[scores={Player=2}] -21 167 -794
# spawnpoint joueur 2
spawnpoint @s[scores={Player=3}] -19 167 -684
# spawnpoint joueur 3
spawnpoint @s[scores={Player=4}] -19 167 -794
# spawnpoint joueur 4
spawnpoint @s[scores={Player=5}] -21 167 -684
# spawnpoint joueur 5
spawnpoint @s[scores={Player=6}] -17 167 -794
# spawnpoint joueur 6
spawnpoint @s[scores={Player=7}] -17 167 -686
# spawnpoint joueur 7
spawnpoint @s[scores={Player=8}] -21 167 -792
# spawnpoint joueur 8
spawnpoint @s[scores={Player=9}] -19 167 -686
# spawnpoint joueur 9
spawnpoint @s[scores={Player=10}] -19 167 -792
# spawnpoint joueur 10
spawnpoint @s[scores={Player=11}] -21 167 -686
# spawnpoint joueur 11
spawnpoint @s[scores={Player=12}] -17 167 -792
# spawnpoint joueur 12
spawnpoint @s[scores={Player=-1}] 12 198 -738 90 0
# spawnpoint spectateurs


tp @s[team=red] -19 193 -793 0 5
tp @s[team=blue] -19 193 -685 180 5