## appelée par go_to_shop
# permet de clear l'overlay des joueurs connectés bleus

execute if entity @a[scores={blue_place=1..}] run data modify storage stats:leaderboards blue.player1.overlay set value "\uE709"
execute if entity @a[scores={blue_place=1..}] run data modify storage stats:leaderboards blue.player1.head merge value {"color":"white"}

execute if entity @a[scores={blue_place=2..}] run data modify storage stats:leaderboards blue.player2.overlay set value "\uE709"
execute if entity @a[scores={blue_place=2..}] run data modify storage stats:leaderboards blue.player2.head merge value {"color":"white"}

execute if entity @a[scores={blue_place=3..}] run data modify storage stats:leaderboards blue.player3.overlay set value "\uE709"
execute if entity @a[scores={blue_place=3..}] run data modify storage stats:leaderboards blue.player3.head merge value {"color":"white"}

execute if entity @a[scores={blue_place=4..}] run data modify storage stats:leaderboards blue.player4.overlay set value "\uE709"
execute if entity @a[scores={blue_place=4..}] run data modify storage stats:leaderboards blue.player4.head merge value {"color":"white"}

execute if entity @a[scores={blue_place=5..}] run data modify storage stats:leaderboards blue.player5.overlay set value "\uE709"
execute if entity @a[scores={blue_place=5..}] run data modify storage stats:leaderboards blue.player5.head merge value {"color":"white"}

execute if entity @a[scores={blue_place=6..}] run data modify storage stats:leaderboards blue.player6.overlay set value "\uE709"
execute if entity @a[scores={blue_place=6..}] run data modify storage stats:leaderboards blue.player6.head merge value {"color":"white"}