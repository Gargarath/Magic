# Construit l'aperçu natif montré dans le dialog depuis la même donnée que le shop.
$data modify storage temp:codex view.display_item set value {id:"minecraft:$(item_id)",count:1,components:{"minecraft:custom_model_data":{strings:["$(custommodeldata)"]}}}
data modify storage temp:codex view.display_item.components."minecraft:custom_name" set from storage temp:item data.item_name
data modify storage temp:codex view.display_item.components."minecraft:lore" set from storage temp:item data.lore
