# appelée par reset_gstats_all
# permet de reset les classements des stats

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

$data modify storage stats:global $(mode).$(stat).$(class) set value { \
  "1": {"head":{"color":"white","player":{"id":[]}},"name":{"text":""},"score":0}, \
  "2": {"head":{"color":"white","player":{"id":[]}},"name":{"text":""},"score":0}, \
  "3": {"head":{"color":"white","player":{"id":[]}},"name":{"text":""},"score":0}, \
  "4": {"head":{"color":"white","player":{"id":[]}},"name":{"text":""},"score":0}, \
  "5": {"head":{"color":"white","player":{"id":[]}},"name":{"text":""},"score":0} \
}
