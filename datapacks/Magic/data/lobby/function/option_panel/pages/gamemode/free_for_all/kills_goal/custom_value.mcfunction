## appelee par interact_with_menu/check_clicked_button si @s clique sur le bouton custom
# ouvre le dialog pour choisir une valeur custom

scoreboard players enable @s optn_kills_goal_custom
scoreboard players set @s optn_kills_goal_custom -1

data modify storage temp:dialog kills_goal set from entity @s EnderItems[0].components.minecraft:custom_data
data modify storage temp:dialog kills_goal.kills_goal_placeholder set value "$(kills_goal)"
function lobby:option_panel/pages/gamemode/free_for_all/kills_goal/show_custom_value with storage temp:dialog kills_goal
