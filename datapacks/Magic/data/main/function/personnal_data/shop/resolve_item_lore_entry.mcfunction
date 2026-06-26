# appelee par set_item_data
# lit une entree du lore_template puis lance sa resolution

$execute if data storage temp:item data.lore_template[$(index)] run data modify storage temp:item current_lore set from storage temp:item data.lore_template[$(index)]
$execute if data storage temp:item data.lore_template[$(index)] run function main:personnal_data/shop/resolve_item_lore_current
