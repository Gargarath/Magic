# Appelé par shop:loop permet a un joueur de devenir non ready

execute at @s positioned ~ ~-9 ~ at @e[tag=room,distance=..10] positioned ~ ~9 ~ run data merge block ~4 ~1 ~ {front_text:{messages:[{"text":" ","click_event":{"action":"run_command","command":"/trigger ready_sign add 1"}},{"text":"Pas prêt","color":"black","bold":true},{"text":"x","color":"dark_red","bold":true},""]}}
execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1

team join non_ready_red @s[team=ready_red]
team join non_ready_blue @s[team=ready_blue]

scoreboard players set @s ready_sign 0
scoreboard players enable @s ready_sign
scoreboard players set @s is_ready 0

execute if entity @s[tag=blue_team] run function main:stats/scoreboard/blue_team_info/overlays/no_overlay_icon/check_place
execute if entity @s[tag=red_team] run function main:stats/scoreboard/red_team_info/overlays/no_overlay_icon/check_place
# indique que @s est pas prêt sur la barre des joueurs (selon son équipe)

function shop:refresh_spec_ready_sign
# affiche le nombre de joueurs prêt sur le panneau spec