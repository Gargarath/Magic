# appelée par hotbar_menu/team_selector/check_rightclick si @s veut rejoindre les red
# rend @s red et l'informe

function lobby:team_selector/join_team/red
# rend @s red

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

tellraw @s {"text":"Vous avez rejoint l'équipe rouge !","color":"red","bold":false}
function lobby:hotbar_menu/main/give_items