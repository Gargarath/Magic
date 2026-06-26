## appelée par check_join si @s ne peut pas rejoindre les maps car elle ont été désactivées
## lui indique

$tellraw @s {"color":"gray","italic":true,"text":"$(tr_lobby_map_visit_island_disabled)"}

execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 1