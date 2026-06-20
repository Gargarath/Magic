## appelee par interact_with_menu/check_clicked_button si @s clique sur le bouton custom
# ouvre le dialog pour choisir une valeur custom

scoreboard players enable @s optn_ph_per_obj_custom
scoreboard players set @s optn_ph_per_obj_custom -1

data modify storage temp:dialog ph_per_obj set from entity @s EnderItems[0].components.minecraft:custom_data
data modify storage temp:dialog ph_per_obj.ph_per_obj_placeholder set value "$(ph_per_obj)"
function lobby:option_panel/pages/shop/ph_per_obj/show_custom_value with storage temp:dialog ph_per_obj
