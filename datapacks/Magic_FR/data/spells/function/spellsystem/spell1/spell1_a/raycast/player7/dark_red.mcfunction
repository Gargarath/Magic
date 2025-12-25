## appelée par onground/test_player
# permet de lancer des raycast dans la bonne direction pour check si il y a un joueur

scoreboard players add @s explo_position_a 1
execute positioned ^ ^ ^0.5 if block ~ ~ ~ #traversable_blocs run particle minecraft:dust{color:[0.66,0.0,0.0],scale:1.0} ~ ~ ~ 0 0 0 0 1 force @a
execute as @e[type=#spellable,distance=..1,team=!spectator] run tag @s add in_explo7
execute if score @s explo_position_a < @a[scores={Player=7},limit=1] explo_max_range_a positioned ^ ^ ^0.5 if block ~ ~ ~ #traversable_blocs run function spells:spellsystem/spell1/spell1_a/raycast/player7/dark_red