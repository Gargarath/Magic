## Finalise le nettoyage des objets de drapeau un tick après la reconnexion

function gamemode:ctf/clear_flag_items
scoreboard players set @s ctf_flag_carrier 0
tag @s remove reconnect_clear_flag_items
scoreboard players set @s IsAlive 0