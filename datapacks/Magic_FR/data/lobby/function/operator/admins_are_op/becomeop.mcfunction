# Appelée par lobby:loop permet de donner le livre de commande au joueur qui vient d'etre op si on est en mode les admins sont opérateur

tellraw @s {"bold":false,"color":"gold","italic":false,"text":"Vous êtes devenu modérateur.\nVous avez désormais accès au livre d'admin et au menu d'option."}
execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2
scoreboard players set @s operator 2
function lobby:team_selector/give_lobby_team
# Donne la bonne équipe de lobby à @s
execute if score @s hotbar_menu matches 0..2 run function lobby:hotbar_menu/main/give_items

function lobby:operator/triggers/enable_op_triggers
# active les trigger pour @s