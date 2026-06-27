## appelée par enter_area si @s est joueur 6

execute store result bossbar gingerbread_kick_area:player6 value run scoreboard players get @s gingerbread
$bossbar set gingerbread_kick_area:player6 name {"text":"$(tr_gingerbread_warning)","color":"gold","bold":true}
bossbar set gingerbread_kick_area:player6 players @s
