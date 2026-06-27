## appelée par enter_area si @s est joueur 2

execute store result bossbar gingerbread_kick_area:player2 value run scoreboard players get @s gingerbread
$bossbar set gingerbread_kick_area:player2 name {"text":"$(tr_gingerbread_warning)","color":"gold","bold":true}
bossbar set gingerbread_kick_area:player2 players @s
