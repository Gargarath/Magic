## appelée par gamemode:ctf/secondary_objectives/capture_point/point_state_0/make_point_blue
# permet de prévenir @s dans sa langue que l'équipe bleue contrôle l'objectif secondaire

$tellraw @s {"text":"$(tr_secondary_objective_blue_controls)","color":"blue"}
