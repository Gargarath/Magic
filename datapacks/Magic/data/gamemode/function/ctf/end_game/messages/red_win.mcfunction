## appelée par gamemode:ctf/end_game/red_win avec les traductions personnelles de @s
# affiche le résultat de la victoire rouge dans la langue de @s

$execute if entity @s[team=spectator] run title @s title {"text":"$(tr_end_game_ctf_red_team_won)","bold":true,"color":"red"}
$execute if entity @s[team=blue] run title @s title {"text":"$(tr_end_game_ctf_defeat)","bold":true,"color":"dark_red"}
$execute if entity @s[team=respawn_blue] run title @s title {"text":"$(tr_end_game_ctf_defeat)","bold":true,"color":"dark_red"}
$execute if entity @s[team=red] run title @s title {"text":"$(tr_end_game_ctf_victory)","bold":true,"color":"gold"}
$execute if entity @s[team=respawn_red] run title @s title {"text":"$(tr_end_game_ctf_victory)","bold":true,"color":"gold"}
