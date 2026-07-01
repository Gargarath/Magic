# Appelée par lobby/option_panelpages/lobby/operator_access au noms des joueurs modo
# permet d'enlever @s des modérateur

$tellraw @s [{"bold":false,"color":"red","italic":false,"text":"$(tr_admin_not_op_anymore_1) "},{"text":"\uE600","color":"white"},{"bold":false,"color":"red","italic":false,"text":"$(tr_admin_not_op_anymore_2)"}]
execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2
scoreboard players set @s operator 0

execute if score @s InLobby matches 1 run function lobby:team_selector/give_lobby_team
# Donne la bonne équipe de lobby à @s si il est dans le lobby

function main:inventory_menu/op_menu/cleanup_op_menu_items
clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_op_menu:1b}]
scoreboard players set @s inventory_page 0
# retire le menu de moderation de @s

function lobby:operator/triggers/reset_op_triggers
# enlève les trigger pour @s
