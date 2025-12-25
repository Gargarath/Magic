## appelée par ginger_ready_loop si @s entre dans la zone de propulsion pain d'épice

scoreboard players set @s gingerbread 15
execute if score @s Player matches 1 run function ctf:maps_systems/candyworld/gingerbread/red/ready/timer_before_kick/enter_area_players/player1
execute if score @s Player matches 2 run function ctf:maps_systems/candyworld/gingerbread/red/ready/timer_before_kick/enter_area_players/player2
execute if score @s Player matches 3 run function ctf:maps_systems/candyworld/gingerbread/red/ready/timer_before_kick/enter_area_players/player3
execute if score @s Player matches 4 run function ctf:maps_systems/candyworld/gingerbread/red/ready/timer_before_kick/enter_area_players/player4
execute if score @s Player matches 5 run function ctf:maps_systems/candyworld/gingerbread/red/ready/timer_before_kick/enter_area_players/player5
execute if score @s Player matches 6 run function ctf:maps_systems/candyworld/gingerbread/red/ready/timer_before_kick/enter_area_players/player6
execute if score @s Player matches 7 run function ctf:maps_systems/candyworld/gingerbread/red/ready/timer_before_kick/enter_area_players/player7
execute if score @s Player matches 8 run function ctf:maps_systems/candyworld/gingerbread/red/ready/timer_before_kick/enter_area_players/player8
execute if score @s Player matches 9 run function ctf:maps_systems/candyworld/gingerbread/red/ready/timer_before_kick/enter_area_players/player9
execute if score @s Player matches 10 run function ctf:maps_systems/candyworld/gingerbread/red/ready/timer_before_kick/enter_area_players/player10
execute if score @s Player matches 11 run function ctf:maps_systems/candyworld/gingerbread/red/ready/timer_before_kick/enter_area_players/player11
execute if score @s Player matches 12 run function ctf:maps_systems/candyworld/gingerbread/red/ready/timer_before_kick/enter_area_players/player12

tag @s add gingerbread_area_red