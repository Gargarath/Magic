# appelée par ctf:secondary_objectives/bossfight/ruin_map/bossfight_loop
# permet de faire remporter l'objectif secondaire aux bleus

execute as @a run function gamemode:ctf/secondary_objectives/messages/red_completed with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a[team=blue] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 100 0
execute as @a[team=red] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 0
execute as @a[team=spectator] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 0
# indique aux équipes que l'équipe rouge a récupérée l'objectif secondaire

scoreboard players set is_over secnd_objective 1
# indique que l'objectif secondaire est fini (pour les joueurs qui se reconnectent)

function gamemode:ctf/secondary_objectives/red_won
# affiche sur la barre que les rouges ont gagné un objectif en plus

function gamemode:ctf/secondary_objectives/bossfight/ruin_map/objective_complete
# arrête l'objectif secondaire