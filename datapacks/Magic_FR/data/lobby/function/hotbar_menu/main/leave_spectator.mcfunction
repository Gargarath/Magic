
# appelée par hotbar_menu/team_selector/check_rightclick si @s veut quitter les spectator
# enlève @s des spectator et l'informe

scoreboard players set @s usespell 0
execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

tellraw @s {entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.tr_left_spectator","bold":false,"color":"yellow"}


function lobby:team_selector/leave_team/leave_spectator
# enlève @s des spectator

## REND LES ITEMS

function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
# donne l'équipement du lobby à @s