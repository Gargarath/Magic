## appelée par gamemode:ctf/secondary_objectives/capture_point/point_state_0/make_point_red
# permet de prévenir @s dans sa langue que l'équipe rouge contrôle l'objectif secondaire

$tellraw @s {"text":"$(tr_secondary_objective_red_controls)","color":"red"}
