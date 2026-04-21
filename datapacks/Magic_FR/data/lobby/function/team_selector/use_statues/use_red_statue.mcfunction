## appelée par lobby:loop quand @s marche sur le pad des rouges
# rend @s rouge

function lobby:team_selector/join_team/red
# rend @s rouge

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

tellraw @s {entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.tr_became_team_red",plain:true,"color":"red","bold":false}
function lobby:hotbar_menu/drop_item

