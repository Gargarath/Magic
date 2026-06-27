## appelée par gamemode:ctf/secondary_objectives/capture_point/bossbar/sync_blue avec le storage point_capture:temp
# permet de montrer à @s sa bossbar de capture bleue avec son texte traduit

$bossbar set point_capture:viewer$(slot) value $(value)
$bossbar set point_capture:viewer$(slot) max $(max)
$bossbar set point_capture:viewer$(slot) color blue
$bossbar set point_capture:viewer$(slot) style progress
$bossbar set point_capture:viewer$(slot) name {"text":"$(tr_point_capture)","bold":true,"color":"blue"}
$bossbar set point_capture:viewer$(slot) players @s
