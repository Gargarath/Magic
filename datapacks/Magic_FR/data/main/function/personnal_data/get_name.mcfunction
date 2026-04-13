## appelée quand besoin du nom de @s

summon minecraft:item_display ~ ~ ~ {UUID:[I;129,0,0,129]}
loot replace entity 81-0-0-0-81 contents loot player_head
data modify storage temp name set from entity 81-0-0-0-81 item.components."minecraft:profile".name
kill 81-0-0-0-81