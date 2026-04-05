## appelée par detect_in_water quand @s rentre dans de l'eau

function gamemode:ctf/maps_systems/pirate/took_water_dmg
# indique que @s prend des dégâts d'eau (pour le killfeed)

damage @s 6 minecraft:magic
effect give @s minecraft:poison 1 0 true