## appelée par le spell tempête de foudre si @s a lancé la tempête de foudre dans un spawn

execute at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 1
execute as @a run function main:ressource_pack_detector/display_something_else/show_another_message
title @s title {"text":""}
title @s subtitle {"text":"Pas de sorts dans les spawns !","color":"red","bold":true}
tag @s add no_more_thunder_delayed

schedule function ctf:anti_spawnkill/thunderstorm_inspawn_delayed 1t
