scoreboard players enable @s optn_ph_per_kill_custom
scoreboard players set @s optn_ph_per_kill_custom -1
data modify storage temp:dialog ffa_ph_per_kill set from entity @s EnderItems[0].components.minecraft:custom_data
data modify storage temp:dialog ffa_ph_per_kill.value_placeholder set value "$(value)"
function lobby:option_panel/pages/shop/ffa_economy/ph_per_kill/show_custom_value with storage temp:dialog ffa_ph_per_kill
