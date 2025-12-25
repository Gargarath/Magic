## appelée par loop_pirate si @s est dans l'eau

function ctf:maps_systems/pirate/took_water_dmg
# indique que @s prend des dégâts d'eau (pour le killfeed)

damage @s 12 minecraft:magic
effect give @s minecraft:poison 1 0 true