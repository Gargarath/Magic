# appelée par main:launch_arena/all_ready ou par start_game/ffa
# permet de lancer l'arêne cimetière




execute if score $time_change option_panel matches 1 run time set 18000
# met la nuit si l'option de changement du temps est activé

execute if score shop enable_loop matches 0 run execute as @a[scores={Player=1..}] run function main:launch_arena/setspawn_and_tp/graveyard
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


execute unless entity @a[scores={Player=1}] run data merge block 233 168 -302 {front_text:{messages:["Ci-gît,","René","Le pouilleux.",""]}}
execute if entity @a[scores={Player=1}] run data merge block 233 168 -302 {front_text:{messages:["Ci-gît,",{"selector":"@a[scores={Player=1}]"},"Le pouilleux.",""]}}
execute unless entity @a[scores={Player=2}] run data merge block 187 170 -238 {front_text:{messages:["Ci-gît,","Benoit","L'irrésistible.",""]}}
execute if entity @a[scores={Player=2}] run data merge block 187 170 -238 {front_text:{messages:["Ci-gît,",{"selector":"@a[scores={Player=2}]"},"L'irrésistible.",""]}}
execute unless entity @a[scores={Player=3}] run data merge block 238 168 -238 {front_text:{messages:["Ci-gît,","Augustin","L'homme au","cerveau immense."]}}
execute if entity @a[scores={Player=3}] run data merge block 238 168 -238 {front_text:{messages:["Ci-gît,",{"selector":"@a[scores={Player=3}]"},"L'homme au","cerveau immense."]}}
execute unless entity @a[scores={Player=4}] run data merge block 194 168 -303 {front_text:{messages:["Ci-gît,","Gérard","Le prolétaire.",""]}}
execute if entity @a[scores={Player=4}] run data merge block 194 168 -303 {front_text:{messages:["Ci-gît,",{"selector":"@a[scores={Player=4}]"},"Le prolétaire.",""]}}
execute unless entity @a[scores={Player=5}] run data merge block 254 168 -300 {front_text:{messages:["Ci-gît,","Hugues","Le misérable.",""]}}
execute if entity @a[scores={Player=5}] run data merge block 254 168 -300 {front_text:{messages:["Ci-gît,",{"selector":"@a[scores={Player=5}]"},"Le misérable.",""]}}
execute unless entity @a[scores={Player=6}] run data merge block 182 168 -262 {front_text:{messages:["Ci-gît,","Nico","L'idiot.",""]}}
execute if entity @a[scores={Player=6}] run data merge block 182 168 -262 {front_text:{messages:["Ci-gît,",{"selector":"@a[scores={Player=6}]"},"L'idiot.",""]}}
execute unless entity @a[scores={Player=7}] run data merge block 254 170 -324 {front_text:{messages:["Ci-gît,","Archibald","Le magnifique.",""]}}
execute if entity @a[scores={Player=7}] run data merge block 254 170 -324 {front_text:{messages:["Ci-gît,",{"selector":"@a[scores={Player=7}]"},"Le magnifique.",""]}}
execute unless entity @a[scores={Player=8}] run data merge block 182 170 -238 {front_text:{messages:["Ci-gît,","Basile","Le cruel.",""]}}
execute if entity @a[scores={Player=8}] run data merge block 182 170 -238 {front_text:{messages:["Ci-gît,",{"selector":"@a[scores={Player=8}]"},"Le cruel.",""]}}
execute unless entity @a[scores={Player=9}] run data merge block 249 170 -324 {front_text:{messages:["Ci-gît,","Maxime","Le richissime.",""]}}
execute if entity @a[scores={Player=9}] run data merge block 249 170 -324 {front_text:{messages:["Ci-gît,",{"selector":"@a[scores={Player=9}]"},"Le richissime.",""]}}
execute unless entity @a[scores={Player=10}] run data merge block 203 168 -260 {front_text:{messages:["Ci-gît,","Kevin","Le deumeuré.",""]}}
execute if entity @a[scores={Player=10}] run data merge block 203 168 -260 {front_text:{messages:["Ci-gît,",{"selector":"@a[scores={Player=10}]"},"Le deumeuré.",""]}}
execute unless entity @a[scores={Player=11}] run data merge block 198 168 -324 {front_text:{messages:["Ci-gît,","Jacob","L'influent.",""]}}
execute if entity @a[scores={Player=11}] run data merge block 198 168 -324 {front_text:{messages:["Ci-gît,",{"selector":"@a[scores={Player=11}]"},"L'influent.",""]}}
execute unless entity @a[scores={Player=12}] run data merge block 242 168 -259 {front_text:{messages:["Ci-gît,","Martial","Le dodu.",""]}}
execute if entity @a[scores={Player=12}] run data merge block 242 168 -259 {front_text:{messages:["Ci-gît,",{"selector":"@a[scores={Player=12}]"},"Le dodu.",""]}}

team modify blue color blue
team modify red color red


tag @a[tag=targetable] remove targetable
tag @a[tag=target] remove target
# enleve les tags target et targetable à tous ceux qui les ont

function main:launch_arena/setup_bossbar
# permet de mettre à jour et d'afficher la bossbar d'info du match
