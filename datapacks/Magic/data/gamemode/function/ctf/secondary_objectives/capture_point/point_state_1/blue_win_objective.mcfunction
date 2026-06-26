# appelée par ctf:secondary_objectives/capture_point/pirate_map/capture_point_loop si la barre des bleus à atteint son maximum -> permet aux bleus de remporter l'objectifs secondaire

tellraw @a {"text":"L'équipe bleue a réussie l'objectif secondaire !","color":"blue","bold":false}
execute as @a[team=red] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 100 0
execute as @a[team=blue] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 0
execute as @a[team=spectator] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 0
# indique aux équipes que l'équipe bleue a récupérée l'objectif secondaire

scoreboard players set is_over secnd_objective 1
# indique que l'objectif secondaire est fini (pour les joueurs qui se reconnectent)

function gamemode:ctf/secondary_objectives/blue_won
# affiche sur la barre que les bleus ont gagné un objectif en plus

function gamemode:ctf/secondary_objectives/capture_point/objective_complete
# arrête l'objectif secondaire