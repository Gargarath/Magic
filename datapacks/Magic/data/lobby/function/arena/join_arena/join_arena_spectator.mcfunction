## appelée par check_join si @s veut rejoindre l'arène en spectateur
## lui fait rejoindre


gamemode spectator @s
# met @s en gamemode spectateur

execute unless entity @a[scores={Player=1..}] run tp @s -7.0 77.00 18.5 206 4.75
execute if entity @a[scores={Player=1..}] at @r[scores={Player=1..}] positioned ~ ~1 ~1 facing entity @p[scores={Player=1..}] eyes run tp @s ~ ~ ~ ~ 45
# tp @s dans l'arène

tag @s add in_lobby_arena
# indique que @s est dans le lobby d'arene

tag @s add display_killfeed
# permet à @s de voir le killfeed


execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100 1

function main:gui/display/refresh_gui
# refresh le gui