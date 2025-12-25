# appelée par main:launch_arena/all_ready
# permet de lancer l'arêne Volcan

forceload add -539 443 -656 554
# Forceload la map

execute if score $time_change option_panel matches 1 run time set 12700
# met la fin de journée si l'option de changement du temps est activé

execute as @a[scores={Player=1..}] run function main:launch_arena/setspawn_and_tp/volcano
# met les spawns et tp les joueurs

clone 19 95 17 21 96 19 -647 160 504
# place les blocs invisibles rouges
clone 19 95 17 21 96 19 -551 160 493
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


summon armor_stand -636 148 529 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Spot_Red_flag"],DisabledSlots:4144959}
summon armor_stand -560 148 470 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Spot_Blue_flag"],DisabledSlots:4144959}

function main:launch_arena/setup_bossbar
# permet de mettre à jour et d'afficher la bossbar d'info du match
