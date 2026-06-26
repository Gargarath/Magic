# appelée jamais, utilisé par admin
# permet de reset les classements des stats

data modify storage stats:global ffa set value {}
data modify storage stats:global ctf set value {}
data modify storage stats:global ffa.stat_final_score set value {}
data modify storage stats:global ctf.stat_final_score set value {}

function main:stats/reset_gstats {mode:"$()",stat:"stat_final_score",class:"warrior"}
function main:stats/reset_gstats {mode:"ffa",stat:"stat_final_score",class:"archer"}
function main:stats/reset_gstats {mode:"ffa",stat:"stat_final_score",class:"mage"}
function main:stats/reset_gstats {mode:"ffa",stat:"stat_final_score",class:"rogue"}

function main:stats/reset_gstats {mode:"ctf",stat:"stat_final_score",class:"warrior"}
function main:stats/reset_gstats {mode:"ctf",stat:"stat_final_score",class:"archer"}
function main:stats/reset_gstats {mode:"ctf",stat:"stat_final_score",class:"mage"}
function main:stats/reset_gstats {mode:"ctf",stat:"stat_final_score",class:"rogue"}

function main:stats/leaderboard/summon_leaderboard/marker_leaderboard/classes/summon_statues