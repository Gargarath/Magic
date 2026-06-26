## appelée par rien
## permet de reset les classements de jump


function lobby:jump/jump1/reset_leaderboard
function lobby:jump/jump2/reset_leaderboard
function lobby:jump/jump3/reset_leaderboard

data modify storage stats:jump temp.head.player.id set value {"color":"white","player":{"id":[]}}