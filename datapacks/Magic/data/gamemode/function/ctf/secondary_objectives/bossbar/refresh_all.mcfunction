## appelée par les lancements d'objectif, reconnexions et changements nécessitant un rafraîchissement complet
# permet de resynchroniser la valeur et le rendu traduit de toutes les bossbars individuelles

scoreboard players set $refresh secondary_objective_slot 1
function gamemode:ctf/secondary_objectives/bossbar/sync_all
scoreboard players set $refresh secondary_objective_slot 0
