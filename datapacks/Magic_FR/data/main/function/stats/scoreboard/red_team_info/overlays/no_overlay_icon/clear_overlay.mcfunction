## appelée par go_to_shop
# permet de clear l'overlay des joueurs connectés rouges

execute if entity @a[scores={Player=1},tag=red_team] run data modify storage stats:leaderboards red.player1.overlay set value "\uE709"
execute if entity @a[scores={Player=1},tag=red_team] run data modify storage stats:leaderboards red.player1.head merge value {"color":"white"}

execute if entity @a[scores={Player=2},tag=red_team] run data modify storage stats:leaderboards red.player2.overlay set value "\uE709"
execute if entity @a[scores={Player=2},tag=red_team] run data modify storage stats:leaderboards red.player2.head merge value {"color":"white"}

execute if entity @a[scores={Player=3},tag=red_team] run data modify storage stats:leaderboards red.player3.overlay set value "\uE709"
execute if entity @a[scores={Player=3},tag=red_team] run data modify storage stats:leaderboards red.player3.head merge value {"color":"white"}

execute if entity @a[scores={Player=4},tag=red_team] run data modify storage stats:leaderboards red.player4.overlay set value "\uE709"
execute if entity @a[scores={Player=4},tag=red_team] run data modify storage stats:leaderboards red.player4.head merge value {"color":"white"}

execute if entity @a[scores={Player=5},tag=red_team] run data modify storage stats:leaderboards red.player5.overlay set value "\uE709"
execute if entity @a[scores={Player=5},tag=red_team] run data modify storage stats:leaderboards red.player5.head merge value {"color":"white"}

execute if entity @a[scores={Player=6},tag=red_team] run data modify storage stats:leaderboards red.player6.overlay set value "\uE709"
execute if entity @a[scores={Player=6},tag=red_team] run data modify storage stats:leaderboards red.player6.head merge value {"color":"white"}