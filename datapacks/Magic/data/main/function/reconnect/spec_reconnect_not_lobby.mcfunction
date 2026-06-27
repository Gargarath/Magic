## appelée par someone_reconnected si @s se reco pas dans le lobby en spec
# le remet dans le lobby

execute unless score @s InShop matches 1 run return run function main:reconnect/put_back_in_lobby
# si pas dans le shop -> le met dans le lobby



# sinon -> reset shop et le met dans le lobby

scoreboard players set @s InShop 0

attribute @s minecraft:waypoint_receive_range base set 0
# enlève la locator bar de @s
attribute @s minecraft:entity_interaction_range base set 17
# augmente la portée d'interaction à @s (pour les menus)
attribute @s minecraft:block_interaction_range base set 4.5
# reset la portée d'interaction block à @s (utilisé dans le shop pour les panneaux du shop)

execute if score @s Player matches -1 run function main:reset/reset_spec_inshop
# reset les trigger de tous

effect clear @s minecraft:invisibility
effect clear @s minecraft:resistance

function main:reconnect/put_back_in_lobby
