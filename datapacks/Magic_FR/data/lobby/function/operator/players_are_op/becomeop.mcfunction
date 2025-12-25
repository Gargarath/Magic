# Appelée par lobby:loop si on est en mode les admins sont opérateur et que y'a pas déjà un modo
# rend modo @s

execute if entity @a[scores={operator=2}] run return fail
execute unless entity @a[scores={operator=2}] run scoreboard players set @s operator 2
# permet de mettre @s en operateur sauf si y'en a déjà (même sur le même tick)

tellraw @s {"bold":false,"color":"gold","italic":false,"text":"Vous êtes devenu \uE600.\nVous avez désormais accès au livre d'admin et au menu d'option."}
execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

function lobby:team_selector/give_lobby_team
# Donne la bonne équipe de lobby à @s
execute if score @s hotbar_menu matches 0..2 run function lobby:hotbar_menu/main/give_items

function lobby:operator/triggers/enable_op_triggers
# active les trigger pour @s