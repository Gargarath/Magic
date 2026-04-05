# appelée par main:launch_arena/launch_map_graveyard
# permet de tp @s et de setup son spawnpoint selon son équipe et numéro de joueur

spawnpoint @s[scores={Player=1}] 265 162 -232
# spawnpoint joueur 1
spawnpoint @s[scores={Player=2}] 181 162 -323
# spawnpoint joueur 2
spawnpoint @s[scores={Player=3}] 263 162 -232
# spawnpoint joueur 3
spawnpoint @s[scores={Player=4}] 183 162 -323
# spawnpoint joueur 4
spawnpoint @s[scores={Player=5}] 261 162 -232
# spawnpoint joueur 5
spawnpoint @s[scores={Player=6}] 185 162 -323
# spawnpoint joueur 6
spawnpoint @s[scores={Player=7}] 265 162 -234
# spawnpoint joueur 7
spawnpoint @s[scores={Player=8}] 181 162 -321
# spawnpoint joueur 8
spawnpoint @s[scores={Player=9}] 263 162 -234
# spawnpoint joueur 9
spawnpoint @s[scores={Player=10}] 183 162 -321
# spawnpoint joueur 10
spawnpoint @s[scores={Player=11}] 261 162 -234
# spawnpoint joueur 11
spawnpoint @s[scores={Player=12}] 185 162 -321
# spawnpoint joueur 12
spawnpoint @s[scores={Player=-1}] 223 178 -320
# spawnpoint spectateurs

tp @s[tag=red_team,scores={Player=1..}] 185 168 -323 0 5
tp @s[tag=blue_team,scores={Player=1..}] 251 168 -239 180 5