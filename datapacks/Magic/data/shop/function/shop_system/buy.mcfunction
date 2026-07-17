## appelee par test quand @s peut acheter
# lui fait acheter l'item

tag @s remove save_inventory
tag @s add inventory_rebuilding

execute at @s run playsound minecraft:block.note_block.hat master @s

$scoreboard players remove @s PH $(price)
# enleve le cout en PH a @s

$scoreboard players add @s shop_history_money_spend $(price)
# ajoute au nombre d'argent dépensé de @s

$scoreboard players add @s $(item_category) 1
# ajoute 1 au niveau d'item de @s

function shop:shop_system/apply_configured_scores with entity @s EnderItems[0].components.minecraft:custom_data
# applique les scores configures sur l'entree achetee

$function stuff:stuff_$(class)/$(item_category)/lvl$(item_level) with entity @s EnderItems[0].components.minecraft:custom_data
# donne l'item en question a @s

$function stuff:stuff_$(class)/save_stuff_as_storage/determine_player with entity @s EnderItems[0].components.minecraft:custom_data
# actualise les noms traduits utilises par le HUD apres la modification des scores

function main:items_positions/save_spell_order_in_gui with entity @s EnderItems[0].components.minecraft:custom_data
# actualise les raccourcis du HUD selon l'ordre configure par @s

$function shop:shop_system/apply_armor_trim/$(class)
# reapplique le trim de classe/equipe si l'item achete est une armure

$function shop:apply_ffa_player_trim {class:"$(class)"}
# adapte la matiere du trim a la couleur du joueur en FFA

execute unless score $build_reset option_panel matches 0 run function shop:history/push_state with entity @s EnderItems[0].components.minecraft:custom_data
# ajoute le nouvel etat a l'historique de @s (sauf si on est en mode pas de undo)

function shop:refresh/money/refresh_money
# actualise le compteur de sous de @s
$function shop:refresh/items/$(item_category) with entity @s EnderItems[0].components.minecraft:custom_data
# actualise l'item que @s vient d'acheter (prix / level / item)
function shop:look_at/display_infos/display_infos with entity @s EnderItems[0].components.minecraft:custom_data
# actualise l'overlay de @s

tag @s remove inventory_rebuilding
tag @s add save_inventory
