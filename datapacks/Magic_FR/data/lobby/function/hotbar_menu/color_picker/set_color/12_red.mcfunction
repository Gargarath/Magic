# appelée par hotbar_menu/team_selector/check_rightclick si @s choisi la couleur X
# rend @s blue et l'informe

scoreboard players set @s opt_color 12
scoreboard players set @s hotbar_menu 0

function lobby:team_selector/give_lobby_team

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

$tellraw @s [{"bold":false,"color":"white","text":"$(tr_color_change_text) "},{"bold":false,"color":"red","text":"$(tr_color_picker_12)"}]
function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data