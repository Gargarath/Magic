# appelée par main:launch_arena/all_ready ou par start_game/ffa
# permet de lancer l'arêne bonbon


execute if score shop enable_loop matches 0 as @a[scores={Player=1..}] run function main:launch_arena/setspawn_and_tp/candyworld
# met les spawns et tp les joueurs (seulement si le shop est désactivé, donc si on est par manche et qu'il faut tp les joueurs)

execute if score shop enable_loop matches 0 run clone 19 95 17 21 96 19 -20 174 -794
# place les blocs invisibles rouges
execute if score shop enable_loop matches 0 run clone 19 95 17 21 96 19 -20 174 -686
# place les blocs invisibles bleus
execute if score shop enable_loop matches 0 run tp @a[scores={Player=-1}] @r[scores={Player=1..}]


execute if score $gamemode option_panel matches 1 run function main:launch_arena/reset_flags
execute if score $gamemode option_panel matches 1 run summon armor_stand -49 158 -767 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Spot_Red_flag"],DisabledSlots:4144959}
execute if score $gamemode option_panel matches 1 run summon armor_stand 11 158 -711 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Spot_Blue_flag"],DisabledSlots:4144959}

gamerule fall_damage false
# enlève les dégats de chutes

function main:launch_arena/setup_bossbar
# permet de mettre à jour et d'afficher la bossbar d'info du match
