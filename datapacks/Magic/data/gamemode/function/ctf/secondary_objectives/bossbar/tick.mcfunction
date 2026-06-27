## appelée par gamemode:ctf/loop à chaque tick de la partie
# permet de synchroniser les valeurs et de rafraîchir les noms pendant une capture de point

scoreboard players set $refresh secondary_objective_slot 0
execute if score on point_capture matches 1 run scoreboard players set $refresh secondary_objective_slot 1
function gamemode:ctf/secondary_objectives/bossbar/sync_all
scoreboard players set $refresh secondary_objective_slot 0
