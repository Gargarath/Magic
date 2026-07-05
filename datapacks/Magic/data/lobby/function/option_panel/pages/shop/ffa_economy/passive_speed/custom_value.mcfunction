scoreboard players enable @s optn_passive_speed_custom
scoreboard players set @s optn_passive_speed_custom -1
data modify storage temp:dialog ffa_passive_speed set from entity @s EnderItems[0].components.minecraft:custom_data
data modify storage temp:dialog ffa_passive_speed.value_placeholder set value "$(value)"
function lobby:option_panel/pages/shop/ffa_economy/passive_speed/show_custom_value with storage temp:dialog ffa_passive_speed
