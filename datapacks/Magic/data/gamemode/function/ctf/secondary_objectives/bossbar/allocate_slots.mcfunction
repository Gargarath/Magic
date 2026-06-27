## appelée par main:start_game/start_gamemode/ctf et main:reconnect/someone_reconnected
# permet de réattribuer un slot unique à chaque joueur connecté sans afficher les bossbars

function gamemode:ctf/secondary_objectives/bossbar/hide_all
scoreboard players set @a secondary_objective_slot 0
scoreboard players set $next secondary_objective_slot 0
execute as @a run function gamemode:ctf/secondary_objectives/bossbar/allocate_slot
