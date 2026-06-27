## appelée par main:load et main:reset/setupbossbar lors de l'initialisation
# permet de créer les sources invisibles et les 32 bossbars individuelles de capture

bossbar remove point_capture_blue
bossbar remove point_capture_red
bossbar add point_capture:state_blue ""
bossbar add point_capture:state_red ""
bossbar set point_capture:state_blue color blue
bossbar set point_capture:state_red color red
bossbar add point_capture:viewer1 ""
bossbar add point_capture:viewer2 ""
bossbar add point_capture:viewer3 ""
bossbar add point_capture:viewer4 ""
bossbar add point_capture:viewer5 ""
bossbar add point_capture:viewer6 ""
bossbar add point_capture:viewer7 ""
bossbar add point_capture:viewer8 ""
bossbar add point_capture:viewer9 ""
bossbar add point_capture:viewer10 ""
bossbar add point_capture:viewer11 ""
bossbar add point_capture:viewer12 ""
bossbar add point_capture:viewer13 ""
bossbar add point_capture:viewer14 ""
bossbar add point_capture:viewer15 ""
bossbar add point_capture:viewer16 ""
bossbar add point_capture:viewer17 ""
bossbar add point_capture:viewer18 ""
bossbar add point_capture:viewer19 ""
bossbar add point_capture:viewer20 ""
bossbar add point_capture:viewer21 ""
bossbar add point_capture:viewer22 ""
bossbar add point_capture:viewer23 ""
bossbar add point_capture:viewer24 ""
bossbar add point_capture:viewer25 ""
bossbar add point_capture:viewer26 ""
bossbar add point_capture:viewer27 ""
bossbar add point_capture:viewer28 ""
bossbar add point_capture:viewer29 ""
bossbar add point_capture:viewer30 ""
bossbar add point_capture:viewer31 ""
bossbar add point_capture:viewer32 ""
function gamemode:ctf/secondary_objectives/capture_point/bossbar/hide_all
data modify storage secondary_objective:system point_capture_viewers set value 1b
