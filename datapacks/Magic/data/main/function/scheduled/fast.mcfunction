# Controles non critiques executes a 10 Hz.

# Lobby : particules decoratives et clics du panneau d'options.
execute if score lobby enable_loop matches 1 positioned 14.5 54.0 -9.50 run particle minecraft:happy_villager ~ ~ ~ 0.5 0 0.5 0 5 force @a[tag=in_lobby_arena]
execute if score lobby enable_loop matches 1 run particle minecraft:dust{"color":[0,0.0,0.0],"scale":1} 1 81.5 -22.7 -0.5 0.6 0 0 10 force @a[tag=in_lobby_arena]
execute if score lobby enable_loop matches 1 run particle minecraft:dust{"color":[0.55,0.0,1.0],"scale":1.5} 1 81.5 -22.7 -0.5 0.6 0 0 5 force @a[tag=in_lobby_arena]
execute if score lobby enable_loop matches 1 run particle minecraft:dust{"color":[0,0.0,0.0],"scale":1} -0.9 55.3 20.70 -0.5 0.6 0 0 10 force @a[tag=in_lobby_arena]
execute if score lobby enable_loop matches 1 run particle minecraft:dust{"color":[0.55,0.0,1.0],"scale":1.5} -0.9 55.3 20.70 -0.5 0.6 0 0 5 force @a[tag=in_lobby_arena]
execute if score lobby enable_loop matches 1 as @e[type=minecraft:interaction,tag=optn_menu_left_clickable] if data entity @s attack on attacker run function lobby:option_panel/interact_with_menu/left_click_on_menu
execute if score lobby enable_loop matches 1 at @e[type=marker,tag=leaderboard_place_deadliest_player] run particle dust{color:[0.588,0.035,0.071],scale:2} ~ ~-0.3 ~ 0.7 0 0.7 0 3 normal @a[tag=in_podium]
execute if score lobby enable_loop matches 1 if data storage minecraft:matchinfo {last_game_gamemode:0b} at @e[type=marker,tag=leaderboard_place_objectives_player] run particle dust{color:[1.0,0.745,0.035],scale:2} ~ ~-0.3 ~ 0.7 0 0.7 0 3 normal @a[tag=in_podium]
execute if score lobby enable_loop matches 1 if data storage minecraft:matchinfo {last_game_gamemode:1b} at @e[type=marker,tag=leaderboard_place_objectives_player] run particle dust{color:[0.208,0.965,0.988],scale:2} ~ ~-0.3 ~ 0.7 0 0.7 0 3 normal @a[tag=in_podium]
execute if score lobby enable_loop matches 1 at @e[type=marker,tag=jump_pads] run particle happy_villager ~ ~ ~ 1 0 1 0 2 normal

# Shop : maintien des spectateurs dans leur salle.
execute if score shop enable_loop matches 1 at @n[type=marker,tag=shop_room_1] positioned ~ ~1 ~ run tp @a[tag=spec_room1,distance=6..] ~ ~ ~
execute if score shop enable_loop matches 1 at @n[type=marker,tag=shop_room_2] positioned ~ ~1 ~ run tp @a[tag=spec_room2,distance=6..] ~ ~ ~
execute if score shop enable_loop matches 1 at @n[type=marker,tag=shop_room_3] positioned ~ ~1 ~ run tp @a[tag=spec_room3,distance=6..] ~ ~ ~
execute if score shop enable_loop matches 1 at @n[type=marker,tag=shop_room_4] positioned ~ ~1 ~ run tp @a[tag=spec_room4,distance=6..] ~ ~ ~
execute if score shop enable_loop matches 1 at @n[type=marker,tag=shop_room_5] positioned ~ ~1 ~ run tp @a[tag=spec_room5,distance=6..] ~ ~ ~
execute if score shop enable_loop matches 1 at @n[type=marker,tag=shop_room_6] positioned ~ ~1 ~ run tp @a[tag=spec_room6,distance=6..] ~ ~ ~
execute if score shop enable_loop matches 1 at @n[type=marker,tag=shop_room_7] positioned ~ ~1 ~ run tp @a[tag=spec_room7,distance=6..] ~ ~ ~
execute if score shop enable_loop matches 1 at @n[type=marker,tag=shop_room_8] positioned ~ ~1 ~ run tp @a[tag=spec_room8,distance=6..] ~ ~ ~
execute if score shop enable_loop matches 1 at @n[type=marker,tag=shop_room_9] positioned ~ ~1 ~ run tp @a[tag=spec_room9,distance=6..] ~ ~ ~
execute if score shop enable_loop matches 1 at @n[type=marker,tag=shop_room_10] positioned ~ ~1 ~ run tp @a[tag=spec_room10,distance=6..] ~ ~ ~
execute if score shop enable_loop matches 1 at @n[type=marker,tag=shop_room_11] positioned ~ ~1 ~ run tp @a[tag=spec_room11,distance=6..] ~ ~ ~
execute if score shop enable_loop matches 1 at @n[type=marker,tag=shop_room_12] positioned ~ ~1 ~ run tp @a[tag=spec_room12,distance=6..] ~ ~ ~

# CTF : controles secondaires, hors logique de drapeaux et de combat.
execute if score ctf enable_loop matches 1 as @a[team=blue] at @s run function gamemode:ctf/anti_spawnkill/anti_spawnkill_blue
execute if score ctf enable_loop matches 1 as @a[team=red] at @s run function gamemode:ctf/anti_spawnkill/anti_spawnkill_red
execute if score ctf enable_loop matches 1 as @e[type=arrow] at @s if block ~ ~-45 ~ #spawn_protectors run tp @s 0 50 0
execute if score ctf enable_loop matches 1 as @e[type=lingering_potion,tag=smoke_bomb] at @s if block ~ ~-45 ~ #spawn_protectors run tp @s 0 50 0
execute if score ctf enable_loop matches 1 as @a[scores={respawn_time=0..}] run function gamemode:ctf/respawns/bossbar/refreshbossbar

schedule function main:scheduled/fast 2t replace
