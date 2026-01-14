# appelée jamais, utilisé par admin
# permet de reset les classements des stats

scoreboard players set $rank1 gstat_warrior_score 0
scoreboard players set $rank2 gstat_warrior_score 0
scoreboard players set $rank3 gstat_warrior_score 0
scoreboard players set $rank4 gstat_warrior_score 0
scoreboard players set $rank5 gstat_warrior_score 0

data modify storage stats:global warrior.1.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:global warrior.2.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:global warrior.3.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:global warrior.4.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:global warrior.5.head set value {"color":"white","player":{"id":[]}}

data modify storage stats:global warrior.1.name set value ""
data modify storage stats:global warrior.2.name set value ""
data modify storage stats:global warrior.3.name set value ""
data modify storage stats:global warrior.4.name set value ""
data modify storage stats:global warrior.5.name set value ""


scoreboard players set $rank1 gstat_archer_score 0
scoreboard players set $rank2 gstat_archer_score 0
scoreboard players set $rank3 gstat_archer_score 0
scoreboard players set $rank4 gstat_archer_score 0
scoreboard players set $rank5 gstat_archer_score 0

data modify storage stats:global archer.1.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:global archer.2.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:global archer.3.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:global archer.4.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:global archer.5.head set value {"color":"white","player":{"id":[]}}

data modify storage stats:global archer.1.name set value ""
data modify storage stats:global archer.2.name set value ""
data modify storage stats:global archer.3.name set value ""
data modify storage stats:global archer.4.name set value ""
data modify storage stats:global archer.5.name set value ""

scoreboard players set $rank1 gstat_mage_score 0
scoreboard players set $rank2 gstat_mage_score 0
scoreboard players set $rank3 gstat_mage_score 0
scoreboard players set $rank4 gstat_mage_score 0
scoreboard players set $rank5 gstat_mage_score 0

data modify storage stats:global mage.1.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:global mage.2.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:global mage.3.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:global mage.4.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:global mage.5.head set value {"color":"white","player":{"id":[]}}

data modify storage stats:global mage.1.name set value ""
data modify storage stats:global mage.2.name set value ""
data modify storage stats:global mage.3.name set value ""
data modify storage stats:global mage.4.name set value ""
data modify storage stats:global mage.5.name set value ""

scoreboard players set $rank1 gstat_rogue_score 0
scoreboard players set $rank2 gstat_rogue_score 0
scoreboard players set $rank3 gstat_rogue_score 0
scoreboard players set $rank4 gstat_rogue_score 0
scoreboard players set $rank5 gstat_rogue_score 0

data modify storage stats:global rogue.1.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:global rogue.2.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:global rogue.3.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:global rogue.4.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:global rogue.5.head set value {"color":"white","player":{"id":[]}}

data modify storage stats:global rogue.1.name set value ""
data modify storage stats:global rogue.2.name set value ""
data modify storage stats:global rogue.3.name set value ""
data modify storage stats:global rogue.4.name set value ""
data modify storage stats:global rogue.5.name set value ""

function main:stats/leaderboard/summon_leaderboard/marker_leaderboard/classes/summon_statues