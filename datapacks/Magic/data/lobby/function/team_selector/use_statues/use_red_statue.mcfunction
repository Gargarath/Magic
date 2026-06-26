## appelée par lobby:loop quand @s marche sur le pad des rouges
# rend @s rouge

function lobby:team_selector/join_team/red
# rend @s rouge

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

function lobby:team_selector/messages/became_team_red with entity @s EnderItems[0].components.minecraft:custom_data
function lobby:hotbar_menu/drop_item

