# appelée par shop:shop_is_ready lorsqu'il y a 10 joueurs dans la partie, permet alors d'afficher les panneaux pour les observer

$setblock 2 -48 61 oak_wall_sign[facing=north]{front_text:{messages:[{"text":"$(tr_shop_spec)","color":"white","bold":true,"click_event":{"action":"run_command","command":"trigger spec_player1 add 1"}},"",{"nbt":"by_player.1.name","storage":"stats:leaderboards","interpret":true},""]},is_waxed:1b} replace
# place le panneau pour observer le joueur 1

$setblock 1 -48 61 oak_wall_sign[facing=north]{front_text:{messages:[{"text":"$(tr_shop_spec)","color":"white","bold":true,"click_event":{"action":"run_command","command":"trigger spec_player2 add 1"}},"",{"nbt":"by_player.2.name","storage":"stats:leaderboards","interpret":true},""]},is_waxed:1b} replace
# place le panneau pour observer le joueur 2

$setblock 0 -48 61 oak_wall_sign[facing=north]{front_text:{messages:[{"text":"$(tr_shop_spec)","color":"white","bold":true,"click_event":{"action":"run_command","command":"trigger spec_player3 add 1"}},"",{"nbt":"by_player.3.name","storage":"stats:leaderboards","interpret":true},""]},is_waxed:1b} replace
# place le panneau pour observer le joueur 3

$setblock -1 -48 61 oak_wall_sign[facing=north]{front_text:{messages:[{"text":"$(tr_shop_spec)","color":"white","bold":true,"click_event":{"action":"run_command","command":"trigger spec_player4 add 1"}},"",{"nbt":"by_player.4.name","storage":"stats:leaderboards","interpret":true},""]},is_waxed:1b} replace
# place le panneau pour observer le joueur 4

$setblock -2 -48 61 oak_wall_sign[facing=north]{front_text:{messages:[{"text":"$(tr_shop_spec)","color":"white","bold":true,"click_event":{"action":"run_command","command":"trigger spec_player5 add 1"}},"",{"nbt":"by_player.5.name","storage":"stats:leaderboards","interpret":true},""]},is_waxed:1b} replace
# place le panneau pour observer le joueur 5

$setblock 2 -49 61 oak_wall_sign[facing=north]{front_text:{messages:[{"text":"$(tr_shop_spec)","color":"white","bold":true,"click_event":{"action":"run_command","command":"trigger spec_player6 add 1"}},"",{"nbt":"by_player.6.name","storage":"stats:leaderboards","interpret":true},""]},is_waxed:1b} replace
# place le panneau pour observer le joueur 6

$setblock 1 -49 61 oak_wall_sign[facing=north]{front_text:{messages:[{"text":"$(tr_shop_spec)","color":"white","bold":true,"click_event":{"action":"run_command","command":"trigger spec_player7 add 1"}},"",{"nbt":"by_player.7.name","storage":"stats:leaderboards","interpret":true},""]},is_waxed:1b} replace
# place le panneau pour observer le joueur 7

$setblock 0 -49 61 oak_wall_sign[facing=north]{front_text:{messages:[{"text":"$(tr_shop_spec)","color":"white","bold":true,"click_event":{"action":"run_command","command":"trigger spec_player8 add 1"}},"",{"nbt":"by_player.8.name","storage":"stats:leaderboards","interpret":true},""]},is_waxed:1b} replace
# place le panneau pour observer le joueur 8

$setblock -1 -49 61 oak_wall_sign[facing=north]{front_text:{messages:[{"text":"$(tr_shop_spec)","color":"white","bold":true,"click_event":{"action":"run_command","command":"trigger spec_player9 add 1"}},"",{"nbt":"by_player.9.name","storage":"stats:leaderboards","interpret":true},""]},is_waxed:1b} replace
# place le panneau pour observer le joueur 9

$setblock -2 -49 61 oak_wall_sign[facing=north]{front_text:{messages:[{"text":"$(tr_shop_spec)","color":"white","bold":true,"click_event":{"action":"run_command","command":"trigger spec_player10 add 1"}},"",{"nbt":"by_player.10.name","storage":"stats:leaderboards","interpret":true},""]},is_waxed:1b} replace
# place le panneau pour observer le joueur 10

scoreboard players enable @a[scores={Player=-1}] spec_player1
scoreboard players enable @a[scores={Player=-1}] spec_player2
scoreboard players enable @a[scores={Player=-1}] spec_player3
scoreboard players enable @a[scores={Player=-1}] spec_player4
scoreboard players enable @a[scores={Player=-1}] spec_player5
scoreboard players enable @a[scores={Player=-1}] spec_player6
scoreboard players enable @a[scores={Player=-1}] spec_player7
scoreboard players enable @a[scores={Player=-1}] spec_player8
scoreboard players enable @a[scores={Player=-1}] spec_player9
scoreboard players enable @a[scores={Player=-1}] spec_player10
# rend ces panneaux cliquables