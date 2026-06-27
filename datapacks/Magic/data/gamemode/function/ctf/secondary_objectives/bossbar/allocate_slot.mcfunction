## appelée par gamemode:ctf/secondary_objectives/bossbar/allocate_slots
# permet de donner à @s le prochain slot de bossbar disponible

scoreboard players add $next secondary_objective_slot 1
scoreboard players operation @s secondary_objective_slot = $next secondary_objective_slot
