# appelee par resolve_item_lore_entry
# transforme l'entree courante en text component final

execute if data storage temp:item current_lore.key run function main:personnal_data/shop/resolve_item_lore_key with storage temp:item current_lore
execute unless data storage temp:item current_lore.key run data modify storage temp:item data.lore append value {"text":""}
execute unless data storage temp:item current_lore.key run data modify storage temp:item data.lore_text append value ""
data remove storage temp:item current_lore
execute store result score @s shop_lore_line run data get storage temp:item index 1
scoreboard players add @s shop_lore_line 1
execute store result storage temp:item index int 1 run scoreboard players get @s shop_lore_line
function main:personnal_data/shop/resolve_item_lore_entry with storage temp:item
