## appelée par main:load lors de la première initialisation du système
# permet de créer les slots, les sources invisibles et les 32 bossbars individuelles

scoreboard objectives add secondary_objective_slot dummy
bossbar remove secondary_objective
bossbar remove secondary_objective_blue
bossbar remove secondary_objective_red
bossbar add secondary_objective:state ""
bossbar add secondary_objective:state_blue ""
bossbar add secondary_objective:state_red ""
bossbar add secondary_objective:viewer1 ""
bossbar add secondary_objective:viewer2 ""
bossbar add secondary_objective:viewer3 ""
bossbar add secondary_objective:viewer4 ""
bossbar add secondary_objective:viewer5 ""
bossbar add secondary_objective:viewer6 ""
bossbar add secondary_objective:viewer7 ""
bossbar add secondary_objective:viewer8 ""
bossbar add secondary_objective:viewer9 ""
bossbar add secondary_objective:viewer10 ""
bossbar add secondary_objective:viewer11 ""
bossbar add secondary_objective:viewer12 ""
bossbar add secondary_objective:viewer13 ""
bossbar add secondary_objective:viewer14 ""
bossbar add secondary_objective:viewer15 ""
bossbar add secondary_objective:viewer16 ""
bossbar add secondary_objective:viewer17 ""
bossbar add secondary_objective:viewer18 ""
bossbar add secondary_objective:viewer19 ""
bossbar add secondary_objective:viewer20 ""
bossbar add secondary_objective:viewer21 ""
bossbar add secondary_objective:viewer22 ""
bossbar add secondary_objective:viewer23 ""
bossbar add secondary_objective:viewer24 ""
bossbar add secondary_objective:viewer25 ""
bossbar add secondary_objective:viewer26 ""
bossbar add secondary_objective:viewer27 ""
bossbar add secondary_objective:viewer28 ""
bossbar add secondary_objective:viewer29 ""
bossbar add secondary_objective:viewer30 ""
bossbar add secondary_objective:viewer31 ""
bossbar add secondary_objective:viewer32 ""
function gamemode:ctf/secondary_objectives/bossbar/hide_all
data modify storage secondary_objective:system installed set value 1b
