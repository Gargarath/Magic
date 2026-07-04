## appelée par check_rightclick quand @s utilise un item qu'il ne peut pas utiliser en mode spectateur


$tellraw @s {"bold":false,"color":"dark_red","text":"$(tr_cant_use_in_spec)"}
execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 0
