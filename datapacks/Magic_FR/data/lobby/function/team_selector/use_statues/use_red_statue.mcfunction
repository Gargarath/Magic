## appelée par lobby:loop quand @s marche sur le pad des rouges
# rend @s rouge

function lobby:team_selector/join_team/red
# rend @s rouge

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

tellraw @s {"text":"Vous avez rejoint l'équipe rouge !","color":"red","bold":false}
function lobby:hotbar_menu/drop_item

