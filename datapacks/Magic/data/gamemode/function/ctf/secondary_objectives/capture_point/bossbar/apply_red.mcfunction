## appelée par gamemode:ctf/secondary_objectives/capture_point/bossbar/sync_red avec le storage point_capture:temp
# permet de montrer à @s sa bossbar de capture rouge avec son texte traduit

$bossbar set point_capture:viewer$(slot) value $(value)
$bossbar set point_capture:viewer$(slot) max $(max)
$bossbar set point_capture:viewer$(slot) color red
$bossbar set point_capture:viewer$(slot) style progress
$bossbar set point_capture:viewer$(slot) name {"text":"$(tr_point_capture)","bold":true,"color":"red"}
$bossbar set point_capture:viewer$(slot) players @s