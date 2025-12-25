# appelée par lobby:loop permet de sortir du mode spectateur lorsque l'on été spectateur et qu'on traverse le portail "mode spectateur"

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

tellraw @s {"text":"Vous avez quitté le mode spectateur!","color":"dark_gray","bold":false}

tag @s remove spell_immune

tag @s[tag=blue_spectator] add blue_team
tag @s[tag=red_spectator] add red_team
tag @s remove red_spectator
tag @s remove blue_spectator
tag @s remove spectator
function lobby:team_selector/give_lobby_team
# Donne la bonne équipe de lobby à @s

execute if entity @s[tag=blue_team] run function lobby:team_selector/display_team_members/blue/new_member
# si @s est bleu -> le rajoute aux statues
execute if entity @s[tag=red_team] run function lobby:team_selector/display_team_members/red/new_member
# si @s est rouge -> le rajoute aux statues

scoreboard players set @s Player 0

function lobby:hotbar_menu/drop_item