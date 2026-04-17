## appelee quand @s clique sur redo
# rejoue l'etat suivant dans l'historique puis reconstruit le build

scoreboard players add @s shop_history_current 1
scoreboard players set @s shop_history_delta_mode 2
function shop:history/update_flags
function shop:history/restore_state with entity @s EnderItems[0].components.minecraft:custom_data

execute at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 100 1.2
