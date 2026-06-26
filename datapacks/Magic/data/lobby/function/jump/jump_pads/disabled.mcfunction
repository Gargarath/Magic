## appelée par check_join si @s ne peut pas rejoindre les jumps car ils sont désactivés
## lui indique

$tellraw @s {"text":"$(tr_jump_disabled)","color":"gray","italic":true}

execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 1