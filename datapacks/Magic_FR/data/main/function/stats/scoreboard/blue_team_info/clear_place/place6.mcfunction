## appelée par clear_place et remove_member
# clear la place X

data modify storage stats:leaderboards blue.player6.head set value "\uE708"
data modify storage stats:leaderboards blue.player6.class.icon set value "\uE709"
data modify storage stats:leaderboards blue.player6.overlay set value "\uE709"
scoreboard players reset @a[scores={blue_place=6}] blue_place