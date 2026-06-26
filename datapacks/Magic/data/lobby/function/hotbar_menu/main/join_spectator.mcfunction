# appelée par hotbar_menu/team_selector/check_rightclick si @s veut rejoindre les spectator
# rend @s spectator et l'informe

scoreboard players set @s usespell 0

function lobby:team_selector/join_team/spectator
# rend @s spectator

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2


function lobby:hotbar_menu/main/messages/joined_spectator with entity @s EnderItems[0].components.minecraft:custom_data
# Indique à @s qu'il est en spec

function lobby:hotbar_menu/main/give_spectator_item with entity @s EnderItems[0].components.minecraft:custom_data
# donne l'équipement du lobby à @s