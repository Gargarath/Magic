# appelée par main:launch_arena/all_ready ou par start_game/ffa
# permet de lancer l'arêne pirate


execute if score $gamemode option_panel matches 0 run function main:launch_arena/respawn_markers/pirate
# setup les marker de respawn si on est en mode FFA
execute if score shop enable_loop matches 0 as @a[scores={Player=1..}] run function main:launch_arena/setspawn_and_tp/pirate
# met les spawns et tp les joueurs (seulement si le shop est désactivé, donc si on est par manche et qu'il faut tp les joueurs)

execute if score shop enable_loop matches 0 run clone 19 95 17 21 96 19 205 86 481
# place les blocs invisibles rouges
execute if score shop enable_loop matches 0 run clone 19 95 17 21 96 19 329 86 513
# place les blocs invisibles bleus
tp @a[scores={Player=-1}] @r[scores={Player=1..}]

execute if score $gamemode option_panel matches 1 if score $gamemode option_panel matches 1 run function main:launch_arena/reset_flags
execute if score $gamemode option_panel matches 1 run summon armor_stand 206 88 502 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Spot_Red_flag"],DisabledSlots:4144959}
execute if score $gamemode option_panel matches 1 run summon armor_stand 330 88 494 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Spot_Blue_flag"],DisabledSlots:4144959}

kill @e[tag=red_tnt]
kill @e[tag=blue_tnt]


function main:launch_arena/setup_bossbar
# permet de mettre à jour et d'afficher la bossbar d'info du match
