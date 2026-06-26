## appelee quand @s veut tout redo dans l'historique du shop
# saute directement au dernier etat rejouable puis reconstruit une seule fois

$data merge entity @n[type=minecraft:interaction,tag=shop_redo_all_$(player)] {interaction:0b}

execute unless score @s shop_history_can_redo matches 1 run return 0

scoreboard players operation @s shop_history_current = @s shop_history_max
scoreboard players set @s shop_history_price 0
scoreboard players set @s shop_history_delta_mode 3
function shop:history/update_flags
function shop:history/restore_state with entity @s EnderItems[0].components.minecraft:custom_data

execute at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 100 1.2
