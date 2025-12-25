## appelée par check_place ou empty_place
# permet de save les données de @s

team leave @s
data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={red_place=1},limit=1]"},"","",""]}}
data modify storage stats:leaderboards red.player1.name set from block 14 97 13 front_text.messages[0]
function lobby:team_selector/give_lobby_team
# save le nom de @s

data modify storage stats:leaderboards red.player1.head set value {"shadow_color":0,"color":"white","player":{"id":[]}}
data modify storage stats:leaderboards red.player1.head.player.id set from entity @s UUID
# save la tête de @s

execute if score @s class_id matches 0 run data modify storage stats:leaderboards red.player1.class.icon set value "\uE709"
execute if score @s class_id matches 1 run data modify storage stats:leaderboards red.player1.class.icon set value "\uE601"
execute if score @s class_id matches 2 run data modify storage stats:leaderboards red.player1.class.icon set value "\uE602"
execute if score @s class_id matches 3 run data modify storage stats:leaderboards red.player1.class.icon set value "\uE603"
execute if score @s class_id matches 4 run data modify storage stats:leaderboards red.player1.class.icon set value "\uE604"
# save la classe de @s