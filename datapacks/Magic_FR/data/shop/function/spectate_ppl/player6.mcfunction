# appelée par shop:loop permet à @s qui vient de cliquer sur le panneau du joueur 6 de spec le joueur 6

gamemode spectator @s
execute at @e[type=marker,tag=shop_room_6] run tp @s ~ ~1.5 ~0.5 0 20
tag @s add spec_room6
scoreboard players set @s spec_player6 0
scoreboard players enable @s spec_player6
# permet à @s de réutiliser le panneau ou de cliquer dans le chat de nouveau

scoreboard players enable @s spec_stop
# permet à @s de cliquer pour sortir du mode spec

tellraw @s [{"color":"gray","italic":true,"text":"Vous observez "},{"bold":false,"hover_event":{"action":"show_text","value":[{"text":"","color":"gray","italic":true}]},"interpret":true,"italic":true,"nbt":"by_player.6.name","storage":"stats:leaderboards"}," ",{"click_event":{"action":"run_command","command":"/trigger spec_stop add 1"},"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Cliquez ici pour arrêter d'observer.","color":"gray","italic":true}]},"italic":true,"text":"cliquez ici","underlined":true},{"color":"gray","italic":true,"text":" pour arrêter d'observer ce joueur."}]
# donne à @s le message cliquable pour arrêter d'observer
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100 1