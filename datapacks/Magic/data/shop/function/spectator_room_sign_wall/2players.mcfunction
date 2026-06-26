# appelée par shop:shop_is_ready lorsqu'il y a 2 joueurs dans la partie, permet alors d'afficher les panneaux pour les observer
$setblock 1 -48 61 oak_wall_sign[facing=north]{front_text:{messages:[{"text":"$(tr_shop_spec)","color":"white","bold":true,"click_event":{"action":"run_command","command":"trigger spec_player1 add 1"}},"",{"nbt":"by_player.1.name","storage":"stats:leaderboards","interpret":true},""]},is_waxed:1b} replace
# place le panneau pour observer le joueur 1

$setblock -1 -48 61 oak_wall_sign[facing=north]{front_text:{messages:[{"text":"$(tr_shop_spec)","color":"white","bold":true,"click_event":{"action":"run_command","command":"trigger spec_player2 add 1"}},"",{"nbt":"by_player.2.name","storage":"stats:leaderboards","interpret":true},""]},is_waxed:1b} replace
# place le panneau pour observer le joueur 2

scoreboard players enable @a[scores={Player=-1}] spec_player1
scoreboard players enable @a[scores={Player=-1}] spec_player2
# rend ces panneaux cliquables