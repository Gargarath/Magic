# appelée par hotbar_menu/team_selector/check_rightclick si @s choisi la couleur X
# rend @s blue et l'informe

scoreboard players set @s opt_color 4
scoreboard players set @s hotbar_menu 0

function lobby:team_selector/give_lobby_team

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

tellraw @s [{"bold":false,"color":"white","text":"Vous avez choisis la couleur : "},{"bold":false,"color":"aqua","text":"bleue claire"}]
function lobby:hotbar_menu/main/give_items