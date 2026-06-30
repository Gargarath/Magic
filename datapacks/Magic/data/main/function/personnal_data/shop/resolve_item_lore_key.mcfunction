# appelee par resolve_item_lore_current
# remplace une cle de traduction par le texte du joueur

data modify storage temp:item resolved_lore set from storage temp:item current_lore
$data modify storage temp:item resolved_lore.text set from entity @s EnderItems[0].components.minecraft:custom_data.$(key)
data remove storage temp:item resolved_lore.key
data modify storage temp:item data.lore append from storage temp:item resolved_lore
data modify storage temp:item data.lore_text append from storage temp:item resolved_lore.text
data modify storage temp:item data.lore append value "\n "
data remove storage temp:item resolved_lore
