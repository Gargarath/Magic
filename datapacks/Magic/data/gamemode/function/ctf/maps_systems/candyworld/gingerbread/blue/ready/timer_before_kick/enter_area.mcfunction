## appelée par ginger_ready_loop si @s entre dans la zone de propulsion pain d'épice

scoreboard players set @s gingerbread 15
execute if score @s Player matches 1 run function gamemode:ctf/maps_systems/candyworld/gingerbread/blue/ready/timer_before_kick/enter_area_players/player1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 2 run function gamemode:ctf/maps_systems/candyworld/gingerbread/blue/ready/timer_before_kick/enter_area_players/player2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 3 run function gamemode:ctf/maps_systems/candyworld/gingerbread/blue/ready/timer_before_kick/enter_area_players/player3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 4 run function gamemode:ctf/maps_systems/candyworld/gingerbread/blue/ready/timer_before_kick/enter_area_players/player4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 5 run function gamemode:ctf/maps_systems/candyworld/gingerbread/blue/ready/timer_before_kick/enter_area_players/player5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 6 run function gamemode:ctf/maps_systems/candyworld/gingerbread/blue/ready/timer_before_kick/enter_area_players/player6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 7 run function gamemode:ctf/maps_systems/candyworld/gingerbread/blue/ready/timer_before_kick/enter_area_players/player7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 8 run function gamemode:ctf/maps_systems/candyworld/gingerbread/blue/ready/timer_before_kick/enter_area_players/player8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 9 run function gamemode:ctf/maps_systems/candyworld/gingerbread/blue/ready/timer_before_kick/enter_area_players/player9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 10 run function gamemode:ctf/maps_systems/candyworld/gingerbread/blue/ready/timer_before_kick/enter_area_players/player10 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 11 run function gamemode:ctf/maps_systems/candyworld/gingerbread/blue/ready/timer_before_kick/enter_area_players/player11 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 12 run function gamemode:ctf/maps_systems/candyworld/gingerbread/blue/ready/timer_before_kick/enter_area_players/player12 with entity @s EnderItems[0].components.minecraft:custom_data

tag @s add gingerbread_area_blue
