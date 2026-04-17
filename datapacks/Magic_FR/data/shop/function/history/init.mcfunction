## appelee a l'ouverture d'un shop
# reset l'historique d'achats de @s et sauvegarde l'etat de depart

scoreboard players set @s shop_history_current 0
scoreboard players set @s shop_history_max 0
scoreboard players set @s shop_history_can_undo 0
scoreboard players set @s shop_history_can_redo 0

$data remove storage shop:history player.$(player)
$function shop:history/save_state_slot {player:$(player),slot:0}
$function shop:history/refresh_buttons {player:$(player)}
