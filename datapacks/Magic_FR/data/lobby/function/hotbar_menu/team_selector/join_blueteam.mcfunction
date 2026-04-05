# appelée par hotbar_menu/team_selector/check_rightclick si @s veut rejoindre les blue
# rend @s blue et l'informe

function lobby:team_selector/join_team/blue
# rend @s blue

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

tellraw @s {"bold":false,"color":"blue","text":"Vous avez rejoint l'équipe bleue"}
function lobby:hotbar_menu/main/give_items

