# Affiche le message de teamkill bleu dans la langue de @s.

$execute if entity @s[team=respawn_blue] run title @s subtitle {"text":"$(tr_teamkill_own_team_eliminated)","italic":true}
$execute if entity @s[team=red] run title @s subtitle {"text":"$(tr_teamkill_enemy_team_eliminated)","italic":true}
$execute if entity @s[team=spectator] run title @s subtitle {"text":"$(tr_teamkill_blue_team_eliminated)","italic":true,"color":"blue"}
$execute if entity @s[team=respawn_red] run title @s subtitle {"text":"$(tr_teamkill_enemy_team_eliminated)","italic":true}
