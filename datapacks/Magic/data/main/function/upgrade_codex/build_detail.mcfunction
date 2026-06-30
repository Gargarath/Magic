$function main:personnal_data/shop/set_item_data {class:"$(class)",item_category:"$(category)",level:"$(level)"}
data modify storage temp:codex view set value {}
data modify storage temp:codex view.current set from entity @s EnderItems[0].components.minecraft:custom_data.tr_codex_other_class
data modify storage temp:codex view.item set from storage temp:item data
$data modify storage temp:codex view.price set from storage temp:item data.shop_$(category)_price
$execute if entity @s[tag=$(class)] store result storage temp:codex view.current int 1 run scoreboard players get @s $(category)
execute store result storage temp:codex view.level int 1 run scoreboard players get @s codex_level
execute store result storage temp:codex view.max_level int 1 run scoreboard players get @s codex_max_level

# Matérialise tous les composants : les dialogs ne résolvent pas score/nbt/selector.
data modify storage temp:codex view.title set value {text:"",color:"gold",bold:true}
data modify storage temp:codex view.title.text set from storage temp:item data.item_name

data modify storage temp:codex view.inline_icon set value {text:""}
execute if score @s codex_category matches 2 if score @s codex_class matches 1 run data modify storage temp:codex view.inline_icon set value {text:""}
execute if score @s codex_category matches 2 if score @s codex_class matches 2 run data modify storage temp:codex view.inline_icon set value {text:""}
execute if score @s codex_category matches 2 if score @s codex_class matches 3 run data modify storage temp:codex view.inline_icon set value {text:""}
execute if score @s codex_category matches 2 if score @s codex_class matches 4 run data modify storage temp:codex view.inline_icon set value {text:""}
$execute if score @s codex_category matches 3 run data modify storage temp:codex view.inline_icon set value {atlas:"items",sprite:"item/$(class)/spell1/spell1lvl1_$(suffix)"}
$execute if score @s codex_category matches 4 run data modify storage temp:codex view.inline_icon set value {atlas:"items",sprite:"item/$(class)/spell2/spell2lvl1_$(suffix)"}
$execute if score @s codex_category matches 5 run data modify storage temp:codex view.inline_icon set value {atlas:"items",sprite:"item/$(class)/spell3/spell3lvl1_$(suffix)"}
execute if score @s codex_category matches 6 run data modify storage temp:codex view.inline_icon set value {atlas:"items",sprite:"item/iron_chestplate"}
execute if score @s codex_category matches 7 run data modify storage temp:codex view.inline_icon set value {atlas:"items",sprite:"item/iron_leggings"}
execute if score @s codex_category matches 8 run data modify storage temp:codex view.inline_icon set value {atlas:"items",sprite:"item/iron_boots"}

data modify storage temp:codex view.description set value [{text:"",color:"yellow"},{text:" ",color:"yellow"},{text:"",color:"yellow"},{text:" / ",color:"gray"},{text:"",color:"gray"},{text:"\n",color:"white"},{text:"",color:"gold"},{text:" ",color:"gold"},{text:"",color:"gold"},{text:" ",color:"gold"},{text:"",color:"gold"},{text:"\n\n",color:"white"}]
data modify storage temp:codex view.description[0].text set from entity @s EnderItems[0].components.minecraft:custom_data.tr_lobby_item_level
data modify storage temp:codex view.description[6].text set from entity @s EnderItems[0].components.minecraft:custom_data.tr_shop_item_overlay_price_1
data modify storage temp:codex view.description[10].text set from entity @s EnderItems[0].components.minecraft:custom_data.tr_shop_item_overlay_price_2
data modify storage temp:codex view.description append from storage temp:item data.lore
data modify storage temp:codex view.description append value {text:"\n",color:"white"}
data modify storage temp:codex view.description append value {text:"",color:"aqua"}
data modify storage temp:codex view.description[-1].text set from entity @s EnderItems[0].components.minecraft:custom_data.tr_codex_current_level
data modify storage temp:codex view.description append value {text:" ",color:"aqua"}
data modify storage temp:codex view.description append value {text:"",color:"aqua"}

data modify storage temp:codex view.previous set value {text:"",color:"white"}
data modify storage temp:codex view.previous.text set from entity @s EnderItems[0].components.minecraft:custom_data.tr_codex_previous
data modify storage temp:codex view.next set value {text:"",color:"white"}
data modify storage temp:codex view.next.text set from entity @s EnderItems[0].components.minecraft:custom_data.tr_codex_next
data modify storage temp:codex view.back set value {text:"",color:"yellow"}
data modify storage temp:codex view.back.text set from entity @s EnderItems[0].components.minecraft:custom_data.tr_codex_back_category

function main:upgrade_codex/finalize_detail with storage temp:codex view
