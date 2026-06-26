## appelée par check_join si @s ne peut pas rejoindre l'arène car elle est désactivée
## lui indique

$tellraw @s {"color":"gray","italic":true,"text":"$(tr_arena_disabled)"}

execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 1