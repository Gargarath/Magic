## appelee quand @s clique sur undo
# recule d'un etat dans l'historique puis reconstruit le build

scoreboard players remove @s shop_history_current 1
scoreboard players set @s shop_history_delta_mode 1
function shop:history/update_flags
function shop:history/restore_state with entity @s EnderItems[0].components.minecraft:custom_data

execute at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 100 0.9
