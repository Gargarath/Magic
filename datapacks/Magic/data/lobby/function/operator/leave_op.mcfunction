# Appelée par lobby/option_panelpages/lobby/operator_access au noms des joueurs modo
# permet d'enlever @s des modérateur

$tellraw @s [{"bold":false,"color":"red","italic":false,"text":"$(tr_admin_not_op_anymore_1) "},{"text":"\uE600","color":"white"},{"bold":false,"color":"red","italic":false,"text":"$(tr_admin_not_op_anymore_2)"}]
execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2
scoreboard players set @s operator 0

execute if score @s InLobby matches 1 run function lobby:team_selector/give_lobby_team
# Donne la bonne équipe de lobby à @s si il est dans le lobby

clear @s *[minecraft:custom_data={admin_item:1b}]
# clear les objets d'admin de @s

function lobby:operator/triggers/reset_op_triggers
# enlève les trigger pour @s