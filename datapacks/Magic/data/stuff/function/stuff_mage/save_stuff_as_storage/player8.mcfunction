# appelée par determine_player selon le numéro de sort de @s si il est mage
# permet de save le stuff de @s sous forme de storage

$execute if score @s weapon1 matches 0 run data modify storage stats:leaderboards by_player.8.weapon1 set value {"text":"$(tr_mage_weapon1_0_name)","color":"white"}
$execute if score @s weapon1 matches 1 run data modify storage stats:leaderboards by_player.8.weapon1 set value {"text":"$(tr_mage_weapon1_1_name)","color":"white"}
$execute if score @s weapon1 matches 2 run data modify storage stats:leaderboards by_player.8.weapon1 set value {"text":"$(tr_mage_weapon1_2_name)","color":"white"}
$execute if score @s weapon1 matches 3 run data modify storage stats:leaderboards by_player.8.weapon1 set value {"text":"$(tr_mage_weapon1_3_name)","color":"white"}
$execute if score @s weapon1 matches 4 run data modify storage stats:leaderboards by_player.8.weapon1 set value {"text":"$(tr_mage_weapon1_4_name)","color":"white"}
$execute if score @s weapon1 matches 5 run data modify storage stats:leaderboards by_player.8.weapon1 set value {"text":"$(tr_mage_weapon1_5_name)","color":"white"}
$execute if score @s weapon1 matches 6 run data modify storage stats:leaderboards by_player.8.weapon1 set value {"text":"$(tr_mage_weapon1_6_name)","color":"white"}
$execute if score @s weapon1 matches 7 run data modify storage stats:leaderboards by_player.8.weapon1 set value {"text":"$(tr_mage_weapon1_7_name)","color":"white"}
$execute if score @s weapon1 matches 8 run data modify storage stats:leaderboards by_player.8.weapon1 set value {"text":"$(tr_mage_weapon1_8_name)","color":"white"}
$execute if score @s weapon1 matches 9 run data modify storage stats:leaderboards by_player.8.weapon1 set value {"text":"$(tr_mage_weapon1_9_name)","color":"white"}
$execute if score @s weapon1 matches 10 run data modify storage stats:leaderboards by_player.8.weapon1 set value {"text":"$(tr_mage_weapon1_10_name)","color":"white"}
data modify storage stats:leaderboards by_player.8.key_slot3 set from storage stats:leaderboards by_player.8.weapon1

execute if score @s spell1 matches 0 run data modify storage stats:leaderboards by_player.8.spell1 set value {"text":""}
$execute if score @s spell1 matches 1 run data modify storage stats:leaderboards by_player.8.spell1 set value {"text":"$(tr_mage_spell1_1_name)","color":"red"}
$execute if score @s spell1 matches 2 run data modify storage stats:leaderboards by_player.8.spell1 set value {"text":"$(tr_mage_spell1_2_name)","color":"red"}
$execute if score @s spell1 matches 3 run data modify storage stats:leaderboards by_player.8.spell1 set value {"text":"$(tr_mage_spell1_3_name)","color":"red"}

execute if score @s spell2 matches 0 run data modify storage stats:leaderboards by_player.8.spell2 set value {"text":""}
$execute if score @s spell2 matches 1 run data modify storage stats:leaderboards by_player.8.spell2 set value {"text":"$(tr_mage_spell2_1_name)","color":"yellow"}
$execute if score @s spell2 matches 2 run data modify storage stats:leaderboards by_player.8.spell2 set value {"text":"$(tr_mage_spell2_2_name)","color":"yellow"}
$execute if score @s spell2 matches 3 run data modify storage stats:leaderboards by_player.8.spell2 set value {"text":"$(tr_mage_spell2_3_name)","color":"yellow"}

execute if score @s spell3 matches 0 run data modify storage stats:leaderboards by_player.8.spell3 set value {"text":""}
$execute if score @s spell3 matches 1 run data modify storage stats:leaderboards by_player.8.spell3 set value {"text":"$(tr_mage_spell3_1_name)","color":"dark_purple"}
