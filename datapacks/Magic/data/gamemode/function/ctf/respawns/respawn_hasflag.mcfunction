# appelée par ctf:loop permet a celui qui est mort avec le drapeau de reset ses scores isAlive et de regagner ses pv

execute if score @s killfeed_died_checked < @s killfeed_died run function main:killfeed/not_another_entity/_determine_how_died
# si le killfeed n'a pas déterminé comment @s est mort (donc pas par une autre entité) -> determine comment il est mort

function main:reset/resetspells/respawn_reset
# reset tout ce qui est generique au niveau du respawn

effect give @s minecraft:instant_health 1 10 true
function main:effects/refresh_persistent
# donne la regen à @s

team join respawn_blue @s[team=blue]
team join respawn_red @s[team=red]
# fait passer @s dans l"équipe des morts

execute if entity @s[team=respawn_blue] run function gamemode:ctf/respawns/calculate_respawn_time_blue
execute if entity @s[team=respawn_red] run function gamemode:ctf/respawns/calculate_respawn_time_red
# calcule le temps de respawn selon l'équipe d'@s

tag @s remove killed_by_hand
# enlève le truc qui dit que @s est mort par une arme
