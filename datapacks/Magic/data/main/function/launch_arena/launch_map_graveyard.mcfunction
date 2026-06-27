# appelée par main:launch_arena/all_ready ou par start_game/ffa
# permet de lancer l'arêne cimetière




execute if score $time_change option_panel matches 1 run time set 18000
# met la nuit si l'option de changement du temps est activé

execute if score $gamemode option_panel matches 0 run function main:launch_arena/respawn_markers/graveyard
# setup les marker de respawn si on est en mode FFA

execute if score shop enable_loop matches 0 as @a[scores={Player=1..}] run function main:launch_arena/setspawn_and_tp/graveyard
# met les spawns et tp les joueurs (seulement si le shop est désactivé, donc si on est par manche et qu'il faut tp les joueurs)

execute if score shop enable_loop matches 0 run clone 19 95 17 21 96 19 250 169 -240
# place les blocs invisibles bleus
execute if score shop enable_loop matches 0 run clone 19 95 17 21 96 19 184 169 -324
# place les blocs invisibles rouges
tp @a[scores={Player=-1}] @r[scores={Player=1..}]

execute if score $gamemode option_panel matches 1 run function main:launch_arena/reset_flags
execute if score $gamemode option_panel matches 1 run summon armor_stand 177 166.5 -286 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Spot_Red_flag"],DisabledSlots:4144959}
execute if score $gamemode option_panel matches 1 run summon armor_stand 259 166.5 -276 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Spot_Blue_flag"],DisabledSlots:4144959}


team modify red color reset
team modify blue color reset

function main:launch_arena/graveyard_epitaphs with storage lobby:language translate

team modify blue color blue
team modify red color red


tag @a[tag=targetable] remove targetable
tag @a[tag=target] remove target
# enleve les tags target et targetable à tous ceux qui les ont

function main:launch_arena/setup_bossbar
# permet de mettre à jour et d'afficher la bossbar d'info du match
