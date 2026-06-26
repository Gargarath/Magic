## appelée par loop_candyworld si @s est dans l'eau

function gamemode:ctf/maps_systems/candyworld/took_water_dmg
# indique que @s prend des dégâts d'eau (pour le killfeed)

damage @s 12
effect give @s minecraft:poison 1 0 true