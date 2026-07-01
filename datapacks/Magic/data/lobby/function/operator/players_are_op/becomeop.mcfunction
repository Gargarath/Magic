# Appelée par lobby:loop si on est en mode les admins sont opérateur et que y'a pas déjà un modo
# rend modo @s

execute if entity @a[scores={operator=2}] run return fail
execute unless entity @a[scores={operator=2}] run scoreboard players set @s operator 2
# permet de mettre @s en operateur sauf si y'en a déjà (même sur le même tick)

$tellraw @s [{"bold":false,"color":"gold","italic":false,"text":"$(tr_admin_became_op_1) "},{"color":"white","text":"\uE600"},{"bold":false,"color":"gold","italic":false,"text":"\n$(tr_admin_became_op_2)"}]
execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

function lobby:team_selector/give_lobby_team
# Donne la bonne équipe de lobby à @s
function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data

function lobby:operator/triggers/enable_op_triggers
# active les trigger pour @s
