# Appelé par shop:loop permet a un joueur de devenir ready si il est en CTF

function shop:refresh/ready_button/ready with entity @s EnderItems[0].components.minecraft:custom_data
# met la room de @s en pret
execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1

team join ready_red @s[tag=red_team]
function main:locator_bar/team_updated
team join ready_blue @s[tag=blue_team]
function main:locator_bar/team_updated

scoreboard players set @s is_ready 1

execute if entity @s[tag=blue_team] run function main:stats/scoreboard/blue_team_info/overlays/ready/check_place
execute if entity @s[tag=red_team] run function main:stats/scoreboard/red_team_info/overlays/ready/check_place
# indique que @s est prêt sur la barre des joueurs (selon son équipe)

function shop:refresh_spec_ready_sign with storage lobby:language translate
# affiche le nombre de joueurs prêt sur le panneau spec