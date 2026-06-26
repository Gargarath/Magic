## appelée par check_place selon la place de @s
# actualise le temps de mort du joueur placé X dans la barre d'équipe

data modify storage stats:leaderboards red.player3.head merge value {"color":"red"}


scoreboard players operation $place_3 respawn_time = @s max_respawn_bar
scoreboard players operation $place_3 respawn_time -= @s respawn_time
# calcule combien il reste de tick au joueur place x (@s) pour arriver à son max

execute if score $place_3 respawn_time matches 1..20 run data modify storage stats:leaderboards red.player3.overlay set value {"shadow_color":0,"text":"\uE611"}
execute if score $place_3 respawn_time matches 20..39 run data modify storage stats:leaderboards red.player3.overlay set value {"shadow_color":0,"text":"\uE612"}
execute if score $place_3 respawn_time matches 40..59 run data modify storage stats:leaderboards red.player3.overlay set value {"shadow_color":0,"text":"\uE613"}
execute if score $place_3 respawn_time matches 60..79 run data modify storage stats:leaderboards red.player3.overlay set value {"shadow_color":0,"text":"\uE614"}
execute if score $place_3 respawn_time matches 80..99 run data modify storage stats:leaderboards red.player3.overlay set value {"shadow_color":0,"text":"\uE615"}
execute if score $place_3 respawn_time matches 100..119 run data modify storage stats:leaderboards red.player3.overlay set value {"shadow_color":0,"text":"\uE616"}
execute if score $place_3 respawn_time matches 120..139 run data modify storage stats:leaderboards red.player3.overlay set value {"shadow_color":0,"text":"\uE617"}
execute if score $place_3 respawn_time matches 140..159 run data modify storage stats:leaderboards red.player3.overlay set value {"shadow_color":0,"text":"\uE618"}
execute if score $place_3 respawn_time matches 160..179 run data modify storage stats:leaderboards red.player3.overlay set value {"shadow_color":0,"text":"\uE619"}
execute if score $place_3 respawn_time matches 180..199 run data modify storage stats:leaderboards red.player3.overlay set value {"shadow_color":0,"text":"\uE620"}
execute if score $place_3 respawn_time matches 200..219 run data modify storage stats:leaderboards red.player3.overlay set value {"shadow_color":0,"text":"\uE621"}
execute if score $place_3 respawn_time matches 220..239 run data modify storage stats:leaderboards red.player3.overlay set value {"shadow_color":0,"text":"\uE622"}
execute if score $place_3 respawn_time matches 240.. run data modify storage stats:leaderboards red.player3.overlay set value {"shadow_color":0,"text":"\uE623"}


function main:gui/display/refresh_gui
# refresh le gui