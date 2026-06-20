## appelee par interact_with_menu/check_clicked_button si @s clique sur le bouton custom
# ouvre le dialog pour choisir une valeur custom

scoreboard players enable @s optn_shop_timer_custom
scoreboard players set @s optn_shop_timer_custom -1

data modify storage temp:dialog shop_timer set from entity @s EnderItems[0].components.minecraft:custom_data
data modify storage temp:dialog shop_timer.shop_timer_placeholder set value "$(shop_timer)"
function lobby:option_panel/pages/gamemode/capture_the_flag/shop_timer/show_custom_value with storage temp:dialog shop_timer
