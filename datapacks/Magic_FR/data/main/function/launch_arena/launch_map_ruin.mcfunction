# appelée par main:launch_arena/all_ready ou par start_game/ffa
# permet de lancer l'arêne Ruine



execute if score $time_change option_panel matches 1 run time set 13400
# met la fin de journée si l'option de changement du temps est activé

execute if score shop enable_loop matches 0 run execute as @a[scores={Player=1..}] run function main:launch_arena/setspawn_and_tp/ruin
# met les spawns et tp les joueurs (seulement si le shop est désactivé, donc si on est par manche et qu'il faut tp les joueurs)

execute if score shop enable_loop matches 0 run clone 19 95 17 21 96 19 -512 152 -165
# place les blocs invisibles rouges
execute if score shop enable_loop matches 0 run clone 19 95 17 21 96 19 -528 152 -59
# place les blocs invisibles bleus
tp @a[scores={Player=-1}] @r[scores={Player=1..}]

execute if score $gamemode option_panel matches 1 run function main:launch_arena/reset_flags
execute if score $gamemode option_panel matches 1 run summon armor_stand -493 149 -128 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Spot_Red_flag"],DisabledSlots:4144959}
execute if score $gamemode option_panel matches 1 run summon armor_stand -545 149 -94 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Spot_Blue_flag"],DisabledSlots:4144959}

function main:launch_arena/setup_bossbar
# permet de mettre à jour et d'afficher la bossbar d'info du match
