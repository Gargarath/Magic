## appelée par setup_leaderboard_endgame
# permet d'actualiser les stats des leaderbaord globaux sur la stat final score

scoreboard players set $rank1 gstat_warrior_score 0
scoreboard players set $rank2 gstat_warrior_score 0
scoreboard players set $rank3 gstat_warrior_score 0
scoreboard players set $rank4 gstat_warrior_score 0
scoreboard players set $rank5 gstat_warrior_score 0

scoreboard players set $rank1 gstat_archer_score 0
scoreboard players set $rank2 gstat_archer_score 0
scoreboard players set $rank3 gstat_archer_score 0
scoreboard players set $rank4 gstat_archer_score 0
scoreboard players set $rank5 gstat_archer_score 0

scoreboard players set $rank1 gstat_mage_score 0
scoreboard players set $rank2 gstat_mage_score 0
scoreboard players set $rank3 gstat_mage_score 0
scoreboard players set $rank4 gstat_mage_score 0
scoreboard players set $rank5 gstat_mage_score 0

scoreboard players set $rank1 gstat_rogue_score 0
scoreboard players set $rank2 gstat_rogue_score 0
scoreboard players set $rank3 gstat_rogue_score 0
scoreboard players set $rank4 gstat_rogue_score 0
scoreboard players set $rank5 gstat_rogue_score 0

# stock les data des record dans un scoreboard en fonction du mode

$execute store result score $rank1 gstat_warrior_score run data get storage stats:global $(mode).stat_final_score.warrior.1.score 1
$execute store result score $rank2 gstat_warrior_score run data get storage stats:global $(mode).stat_final_score.warrior.2.score 1
$execute store result score $rank3 gstat_warrior_score run data get storage stats:global $(mode).stat_final_score.warrior.3.score 1
$execute store result score $rank4 gstat_warrior_score run data get storage stats:global $(mode).stat_final_score.warrior.4.score 1
$execute store result score $rank5 gstat_warrior_score run data get storage stats:global $(mode).stat_final_score.warrior.5.score 1

$execute store result score $rank1 gstat_archer_score run data get storage stats:global $(mode).stat_final_score.archer.1.score 1
$execute store result score $rank2 gstat_archer_score run data get storage stats:global $(mode).stat_final_score.archer.2.score 1
$execute store result score $rank3 gstat_archer_score run data get storage stats:global $(mode).stat_final_score.archer.3.score 1
$execute store result score $rank4 gstat_archer_score run data get storage stats:global $(mode).stat_final_score.archer.4.score 1
$execute store result score $rank5 gstat_archer_score run data get storage stats:global $(mode).stat_final_score.archer.5.score 1

$execute store result score $rank1 gstat_mage_score run data get storage stats:global $(mode).stat_final_score.mage.1.score 1
$execute store result score $rank2 gstat_mage_score run data get storage stats:global $(mode).stat_final_score.mage.2.score 1
$execute store result score $rank3 gstat_mage_score run data get storage stats:global $(mode).stat_final_score.mage.3.score 1
$execute store result score $rank4 gstat_mage_score run data get storage stats:global $(mode).stat_final_score.mage.4.score 1
$execute store result score $rank5 gstat_mage_score run data get storage stats:global $(mode).stat_final_score.mage.5.score 1

$execute store result score $rank1 gstat_rogue_score run data get storage stats:global $(mode).stat_final_score.rogue.1.score 1
$execute store result score $rank2 gstat_rogue_score run data get storage stats:global $(mode).stat_final_score.rogue.2.score 1
$execute store result score $rank3 gstat_rogue_score run data get storage stats:global $(mode).stat_final_score.rogue.3.score 1
$execute store result score $rank4 gstat_rogue_score run data get storage stats:global $(mode).stat_final_score.rogue.4.score 1
$execute store result score $rank5 gstat_rogue_score run data get storage stats:global $(mode).stat_final_score.rogue.5.score 1

execute as @a[scores={played_last_game=1..}] run function main:stats/leaderboard/sort_gstats/sort_final_score/get_data

# refresh les gstat
$function main:stats/leaderboard/display/gstats/refresh_gstats {mode:"$(mode)",stat:"stat_final_score"}