## appelée par jump/reset_leaderboard
## reset le classement du jump 1


scoreboard players set $rank1 jump1_score 1000000
scoreboard players set $rank2 jump1_score 1000000
scoreboard players set $rank3 jump1_score 1000000
scoreboard players set $rank4 jump1_score 1000000
scoreboard players set $rank5 jump1_score 1000000
scoreboard players set $rank6 jump1_score 1000000

scoreboard players set @a jump1_score_pr 1000000
scoreboard players reset * jump1_fall_pr

data modify storage stats:jump 1.rank6.min10 set value 0
data modify storage stats:jump 1.rank6.min01 set value 0
data modify storage stats:jump 1.rank6.sec10 set value 0
data modify storage stats:jump 1.rank6.sec01 set value 0
data modify storage stats:jump 1.rank6.dec10 set value 0
data modify storage stats:jump 1.rank6.dec01 set value 0

data modify storage stats:jump 1.rank6.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:jump 1.rank6.name set value ""


data modify storage stats:jump 1.rank5.min10 set value 0
data modify storage stats:jump 1.rank5.min01 set value 0
data modify storage stats:jump 1.rank5.sec10 set value 0
data modify storage stats:jump 1.rank5.sec01 set value 0
data modify storage stats:jump 1.rank5.dec10 set value 0
data modify storage stats:jump 1.rank5.dec01 set value 0

data modify storage stats:jump 1.rank5.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:jump 1.rank5.name set value ""


data modify storage stats:jump 1.rank4.min10 set value 0
data modify storage stats:jump 1.rank4.min01 set value 0
data modify storage stats:jump 1.rank4.sec10 set value 0
data modify storage stats:jump 1.rank4.sec01 set value 0
data modify storage stats:jump 1.rank4.dec10 set value 0
data modify storage stats:jump 1.rank4.dec01 set value 0

data modify storage stats:jump 1.rank4.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:jump 1.rank4.name set value ""


data modify storage stats:jump 1.rank3.min10 set value 0
data modify storage stats:jump 1.rank3.min01 set value 0
data modify storage stats:jump 1.rank3.sec10 set value 0
data modify storage stats:jump 1.rank3.sec01 set value 0
data modify storage stats:jump 1.rank3.dec10 set value 0
data modify storage stats:jump 1.rank3.dec01 set value 0

data modify storage stats:jump 1.rank3.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:jump 1.rank3.name set value ""


data modify storage stats:jump 1.rank2.min10 set value 0
data modify storage stats:jump 1.rank2.min01 set value 0
data modify storage stats:jump 1.rank2.sec10 set value 0
data modify storage stats:jump 1.rank2.sec01 set value 0
data modify storage stats:jump 1.rank2.dec10 set value 0
data modify storage stats:jump 1.rank2.dec01 set value 0

data modify storage stats:jump 1.rank2.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:jump 1.rank2.name set value ""


data modify storage stats:jump 1.rank1.min10 set value 0
data modify storage stats:jump 1.rank1.min01 set value 0
data modify storage stats:jump 1.rank1.sec10 set value 0
data modify storage stats:jump 1.rank1.sec01 set value 0
data modify storage stats:jump 1.rank1.dec10 set value 0
data modify storage stats:jump 1.rank1.dec01 set value 0

data modify storage stats:jump 1.rank1.head set value {"color":"white","player":{"id":[]}}
data modify storage stats:jump 1.rank1.name set value ""


function lobby:jump/jump1/setup_jump