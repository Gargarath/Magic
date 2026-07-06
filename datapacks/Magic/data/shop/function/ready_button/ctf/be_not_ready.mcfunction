# Appelé par shop:loop permet a un joueur de devenir non ready

function shop:refresh/ready_button/not_ready with entity @s EnderItems[0].components.minecraft:custom_data
# met la room de @s en pas pret

execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1

team join non_ready_red @s[team=ready_red]
function main:locator_bar/team_updated
team join non_ready_blue @s[team=ready_blue]
function main:locator_bar/team_updated

scoreboard players set @s is_ready 0

execute if entity @s[tag=blue_team] run function main:stats/scoreboard/blue_team_info/overlays/no_overlay_icon/check_place
execute if entity @s[tag=red_team] run function main:stats/scoreboard/red_team_info/overlays/no_overlay_icon/check_place
# indique que @s est pas prêt sur la barre des joueurs (selon son équipe)

function shop:refresh_spec_ready_sign with storage lobby:language translate
# affiche le nombre de joueurs prêt sur le panneau spec