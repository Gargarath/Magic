## Ajoute une alerte et pousse les deux précédentes vers le bas.

scoreboard players add @s ffa_ph_alert_1 0
scoreboard players add @s ffa_ph_alert_2 0
scoreboard players add @s ffa_ph_alert_3 0

$data remove storage minecraft:gui player.$(player).money_alert.slot3
$data modify storage minecraft:gui player.$(player).money_alert.slot3 set from storage minecraft:gui player.$(player).money_alert.slot2
$data modify storage minecraft:gui player.$(player).money_alert.slot3.render[2].nbt set value "player.$(player).money_alert.slot3.amount"
$data modify storage minecraft:gui player.$(player).money_alert.slot3.cancel[1].nbt set value "player.$(player).money_alert.slot3.amount"
$data remove storage minecraft:gui player.$(player).money_alert.slot2
$data modify storage minecraft:gui player.$(player).money_alert.slot2 set from storage minecraft:gui player.$(player).money_alert.slot1
$data modify storage minecraft:gui player.$(player).money_alert.slot2.render[2].nbt set value "player.$(player).money_alert.slot2.amount"
$data modify storage minecraft:gui player.$(player).money_alert.slot2.cancel[1].nbt set value "player.$(player).money_alert.slot2.amount"

scoreboard players operation @s ffa_ph_alert_3 = @s ffa_ph_alert_2
scoreboard players operation @s ffa_ph_alert_2 = @s ffa_ph_alert_1
scoreboard players set @s ffa_ph_alert_1 60

$data modify storage minecraft:gui player.$(player).money_alert.slot1.amount set from storage main:ffa_money_alert amount
$data modify storage minecraft:gui player.$(player).money_alert.slot1.render set value [{"text":"\uF000","font":"top_left_ffa_alert_1"},{"text":" +","color":"gold","bold":false},{"nbt":"player.$(player).money_alert.slot1.amount","storage":"minecraft:gui","color":"green","bold":false},{"text":" ","color":"green","bold":false},{"text":"\uE634","color":"white"},{"text":" - ","color":"gray"},$(reason),{"text":"\uF020","font":"top_left_ffa_alert_1"}]
$data modify storage minecraft:gui player.$(player).money_alert.slot1.cancel set value [{"text":" +","bold":false},{"nbt":"player.$(player).money_alert.slot1.amount","storage":"minecraft:gui","bold":false},{"text":" ","bold":false},{"text":"\uE634"},{"text":" - "},$(reason)]
