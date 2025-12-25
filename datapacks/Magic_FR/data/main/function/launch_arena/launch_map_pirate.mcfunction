# appelée par main:launch_arena/all_ready
# permet de lancer l'arêne pirate

forceload add 355 555 190 440
# Forceload la map

execute as @a[scores={Player=1..}] run function main:launch_arena/setspawn_and_tp/pirate
# met les spawns et tp les joueurs

clone 19 95 17 21 96 19 205 86 481
# place les blocs invisibles rouges
clone 19 95 17 21 96 19 329 86 513
# place les blocs invisibles bleus
tp @a[scores={Player=-1}] @r[scores={Player=1..}]

kill @e[tag=Spot_Red_flag]
kill @e[tag=Spot_Blue_flag]
kill @e[tag=Red_banner]
kill @e[tag=Blue_banner]
kill @e[tag=Red_flag]
kill @e[tag=Blue_flag]
tag @e remove Has_Blue_flag
tag @e remove Has_Red_flag

kill @e[tag=red_tnt]
kill @e[tag=blue_tnt]

summon armor_stand 206 88 502 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Spot_Red_flag"],DisabledSlots:4144959}
summon armor_stand 330 88 494 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Spot_Blue_flag"],DisabledSlots:4144959}


function main:launch_arena/setup_bossbar
# permet de mettre à jour et d'afficher la bossbar d'info du match
