## appelée par les determine spell order quand les noms des keyvinds change (langue ou ordre different)
# permet de changer les string des keybinds

## ENREGISTRE CA DANS LES STORAGE POUR DISPLAY

# Joueur 1
$execute if score @s key_slot1 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.$(player).key_slot1 set from storage stats:leaderboards by_player.$(player).spell1
$execute if score @s key_slot1 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.$(player).key_slot1 set from storage stats:leaderboards by_player.$(player).spell2
$execute if score @s key_slot1 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.$(player).key_slot1 set from storage stats:leaderboards by_player.$(player).spell3


$execute if score @s key_slot2 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.$(player).key_slot2 set from storage stats:leaderboards by_player.$(player).spell1
$execute if score @s key_slot2 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.$(player).key_slot2 set from storage stats:leaderboards by_player.$(player).spell2
$execute if score @s key_slot2 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.$(player).key_slot2 set from storage stats:leaderboards by_player.$(player).spell3

$execute if score @s key_slot3 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.$(player).key_slot3 set from storage stats:leaderboards by_player.$(player).spell1
$execute if score @s key_slot3 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.$(player).key_slot3 set from storage stats:leaderboards by_player.$(player).spell2
$execute if score @s key_slot3 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.$(player).key_slot3 set from storage stats:leaderboards by_player.$(player).spell3
$execute if entity @s[tag=!warrior,tag=!rogue] run data modify storage stats:leaderboards by_player.$(player).key_slot3 set from storage stats:leaderboards by_player.$(player).weapon1

function main:gui/display/refresh_gui
# refresh le gui