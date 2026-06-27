## appelée par gamemode:ctf/messages/flag/announce_player et gamemode:ctf/messages/flag/announce_all
# permet d'afficher à @s la variante traduite correspondant au type d'annonce de drapeau

$execute if score $flag_message_type variables matches 1 run tellraw @s ["",{"nbt":"flag_message.actor_name","storage":"gamemode:ctf","interpret":true},{"text":"$(tr_ctf_flag_red_captured)","bold":false,"color":"red"}]
$execute if score $flag_message_type variables matches 2 run tellraw @s ["",{"nbt":"flag_message.actor_name","storage":"gamemode:ctf","interpret":true},{"text":"$(tr_ctf_flag_blue_captured)","bold":false,"color":"blue"}]
$execute if score $flag_message_type variables matches 3 run tellraw @s ["",{"nbt":"flag_message.actor_name","storage":"gamemode:ctf","interpret":true},{"text":"$(tr_ctf_flag_red_returned_by_player)","bold":false,"color":"dark_blue"}]
$execute if score $flag_message_type variables matches 4 run tellraw @s ["",{"nbt":"flag_message.actor_name","storage":"gamemode:ctf","interpret":true},{"text":"$(tr_ctf_flag_blue_returned_by_player)","bold":false,"color":"dark_red"}]
$execute if score $flag_message_type variables matches 5 run tellraw @s ["",{"nbt":"flag_message.actor_name","storage":"gamemode:ctf","interpret":true},{"text":"$(tr_ctf_flag_red_returned_by_player)","bold":false,"color":"dark_red"}]
$execute if score $flag_message_type variables matches 6 run tellraw @s ["",{"nbt":"flag_message.actor_name","storage":"gamemode:ctf","interpret":true},{"text":"$(tr_ctf_flag_blue_returned_by_player)","bold":false,"color":"dark_blue"}]
$execute if score $flag_message_type variables matches 7 run tellraw @s {"text":"$(tr_ctf_flag_red_returned)","bold":false,"color":"dark_red"}
$execute if score $flag_message_type variables matches 8 run tellraw @s {"text":"$(tr_ctf_flag_blue_returned)","bold":false,"color":"dark_blue"}
$execute if score $flag_message_type variables matches 9 run tellraw @s {"text":"$(tr_ctf_flag_red_dropped)","bold":false,"color":"red"}
$execute if score $flag_message_type variables matches 10 run tellraw @s {"text":"$(tr_ctf_flag_blue_dropped)","bold":false,"color":"blue"}
