## ## appelée par option_panel/pages/arena/arena_off et autres quand @s quitte l'arène et est spec
# clear les données d'arènes de @s

function main:reset/reset_arena
# indique que @s n'est plus dans l'arène

gamemode adventure @s
# remet @s en gamemode aventure

tp @s 0.5 100 0.5 180 0

execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100 1

function main:gui/display/refresh_gui
# refresh le gui