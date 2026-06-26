## appelée par go_to_shop
# permet de clear l'overlay des joueurs connectés rouges

execute if entity @a[scores={red_place=1..}] run data modify storage stats:leaderboards red.player1.overlay set value "\uE709"
execute if entity @a[scores={red_place=1..}] run data modify storage stats:leaderboards red.player1.head merge value {"color":"white"}

execute if entity @a[scores={red_place=2..}] run data modify storage stats:leaderboards red.player2.overlay set value "\uE709"
execute if entity @a[scores={red_place=2..}] run data modify storage stats:leaderboards red.player2.head merge value {"color":"white"}

execute if entity @a[scores={red_place=3..}] run data modify storage stats:leaderboards red.player3.overlay set value "\uE709"
execute if entity @a[scores={red_place=3..}] run data modify storage stats:leaderboards red.player3.head merge value {"color":"white"}

execute if entity @a[scores={red_place=4..}] run data modify storage stats:leaderboards red.player4.overlay set value "\uE709"
execute if entity @a[scores={red_place=4..}] run data modify storage stats:leaderboards red.player4.head merge value {"color":"white"}

execute if entity @a[scores={red_place=5..}] run data modify storage stats:leaderboards red.player5.overlay set value "\uE709"
execute if entity @a[scores={red_place=5..}] run data modify storage stats:leaderboards red.player5.head merge value {"color":"white"}

execute if entity @a[scores={red_place=6..}] run data modify storage stats:leaderboards red.player6.overlay set value "\uE709"
execute if entity @a[scores={red_place=6..}] run data modify storage stats:leaderboards red.player6.head merge value {"color":"white"}