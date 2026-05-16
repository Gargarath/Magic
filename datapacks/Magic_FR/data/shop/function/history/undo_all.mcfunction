## appelee quand @s veut tout annuler dans l'historique du shop
# saute directement au premier etat puis reconstruit une seule fois

$data merge entity @n[type=minecraft:interaction,tag=shop_undo_all_$(player)] {interaction:0b}

execute unless score @s shop_history_can_undo matches 1 run return run function shop:history/cant_undo with entity @s EnderItems[0].components.minecraft:custom_data

scoreboard players set @s shop_history_current 0
scoreboard players set @s shop_history_price 0
scoreboard players set @s shop_history_delta_mode 3
function shop:history/update_flags
function shop:history/restore_state with entity @s EnderItems[0].components.minecraft:custom_data

execute at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 100 0.9
