# appelée par hotbar_menu/team_selector/check_rightclick si @s veut rejoindre les red
# rend @s red et l'informe

function lobby:team_selector/join_team/red
# rend @s red

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

function lobby:team_selector/messages/became_team_red with entity @s EnderItems[0].components.minecraft:custom_data
function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
