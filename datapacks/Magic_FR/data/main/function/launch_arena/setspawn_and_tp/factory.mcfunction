# appelée par main:launch_arena/launch_map_factory et reconnect_in_shop au nom des joueurs à tp
# permet de tp @s et de setup son spawnpoint selon son équipe et numéro de joueur

spawnpoint @s[scores={Player=1}] 272 138 15
# spawnpoint joueur 1
spawnpoint @s[scores={Player=2}] 370 138 1
# spawnpoint joueur 2
spawnpoint @s[scores={Player=3}] 272 138 13
# spawnpoint joueur 3
spawnpoint @s[scores={Player=4}] 370 138 3
# spawnpoint joueur 4
spawnpoint @s[scores={Player=5}] 272 138 11
# spawnpoint joueur 5
spawnpoint @s[scores={Player=6}] 370 138 5
# spawnpoint joueur 6
spawnpoint @s[scores={Player=7}] 272 138 9
# spawnpoint joueur 7
spawnpoint @s[scores={Player=8}] 370 138 7
# spawnpoint joueur 8
spawnpoint @s[scores={Player=9}] 272 138 7
# spawnpoint joueur 9
spawnpoint @s[scores={Player=10}] 370 138 9
# spawnpoint joueur 10
spawnpoint @s[scores={Player=11}] 272 138 5
# spawnpoint joueur 11
spawnpoint @s[scores={Player=12}] 370 138 11
# spawnpoint joueur 12
spawnpoint @s[scores={Player=-1}] 332 46 -21
# spawnpoint spectateurs

tp @s[team=red] 368 158 8 90 -5
tp @s[team=blue] 274 158 8 -90 -5