# appelée par hotbar_menu/team_selector/check_rightclick si @s veut rejoindre les blue
# rend @s blue et l'informe

function lobby:team_selector/join_team/blue
# rend @s blue

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

tellraw @s {"bold":false,"color":"blue",entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.tr_became_team_blue",plain:true}
function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data

