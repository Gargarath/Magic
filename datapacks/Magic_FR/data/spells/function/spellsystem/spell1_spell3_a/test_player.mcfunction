# appelée par usespell1_a ou usespell3_a si @s utilise la flèche explo et la flèche de glace
# permet de détecter le numéro de joueur de @s pour lui donner la flèche de glace explosive adaptée

execute if score @s Player matches 1 run function stuff:stuff_archer/arrows/combined_arrow/player1/check_combination
execute if score @s Player matches 2 run function stuff:stuff_archer/arrows/combined_arrow/player2/check_combination
execute if score @s Player matches 3 run function stuff:stuff_archer/arrows/combined_arrow/player3/check_combination
execute if score @s Player matches 4 run function stuff:stuff_archer/arrows/combined_arrow/player4/check_combination
execute if score @s Player matches 5 run function stuff:stuff_archer/arrows/combined_arrow/player5/check_combination
execute if score @s Player matches 6 run function stuff:stuff_archer/arrows/combined_arrow/player6/check_combination
execute if score @s Player matches 7 run function stuff:stuff_archer/arrows/combined_arrow/player7/check_combination
execute if score @s Player matches 8 run function stuff:stuff_archer/arrows/combined_arrow/player8/check_combination
execute if score @s Player matches 9 run function stuff:stuff_archer/arrows/combined_arrow/player9/check_combination
execute if score @s Player matches 10 run function stuff:stuff_archer/arrows/combined_arrow/player10/check_combination
execute if score @s Player matches 11 run function stuff:stuff_archer/arrows/combined_arrow/player11/check_combination
execute if score @s Player matches 12 run function stuff:stuff_archer/arrows/combined_arrow/player12/check_combination

execute if score @s Player matches 1 run data modify storage gui player.1.actionbar.alert set value ["",{"text":"Votre prochaine flèche explosera","bold":false,"color":"dark_red"},{"text":" et gèlera sa cible !","bold":false,"color":"aqua"}]
execute if score @s Player matches 2 run data modify storage gui player.2.actionbar.alert set value ["",{"text":"Votre prochaine flèche explosera","bold":false,"color":"dark_red"},{"text":" et gèlera sa cible !","bold":false,"color":"aqua"}]
execute if score @s Player matches 3 run data modify storage gui player.3.actionbar.alert set value ["",{"text":"Votre prochaine flèche explosera","bold":false,"color":"dark_red"},{"text":" et gèlera sa cible !","bold":false,"color":"aqua"}]
execute if score @s Player matches 4 run data modify storage gui player.4.actionbar.alert set value ["",{"text":"Votre prochaine flèche explosera","bold":false,"color":"dark_red"},{"text":" et gèlera sa cible !","bold":false,"color":"aqua"}]
execute if score @s Player matches 5 run data modify storage gui player.5.actionbar.alert set value ["",{"text":"Votre prochaine flèche explosera","bold":false,"color":"dark_red"},{"text":" et gèlera sa cible !","bold":false,"color":"aqua"}]
execute if score @s Player matches 6 run data modify storage gui player.6.actionbar.alert set value ["",{"text":"Votre prochaine flèche explosera","bold":false,"color":"dark_red"},{"text":" et gèlera sa cible !","bold":false,"color":"aqua"}]
execute if score @s Player matches 7 run data modify storage gui player.7.actionbar.alert set value ["",{"text":"Votre prochaine flèche explosera","bold":false,"color":"dark_red"},{"text":" et gèlera sa cible !","bold":false,"color":"aqua"}]
execute if score @s Player matches 8 run data modify storage gui player.8.actionbar.alert set value ["",{"text":"Votre prochaine flèche explosera","bold":false,"color":"dark_red"},{"text":" et gèlera sa cible !","bold":false,"color":"aqua"}]
execute if score @s Player matches 9 run data modify storage gui player.9.actionbar.alert set value ["",{"text":"Votre prochaine flèche explosera","bold":false,"color":"dark_red"},{"text":" et gèlera sa cible !","bold":false,"color":"aqua"}]
execute if score @s Player matches 10 run data modify storage gui player.10.actionbar.alert set value ["",{"text":"Votre prochaine flèche explosera","bold":false,"color":"dark_red"},{"text":" et gèlera sa cible !","bold":false,"color":"aqua"}]
execute if score @s Player matches 11 run data modify storage gui player.11.actionbar.alert set value ["",{"text":"Votre prochaine flèche explosera","bold":false,"color":"dark_red"},{"text":" et gèlera sa cible !","bold":false,"color":"aqua"}]
execute if score @s Player matches 12 run data modify storage gui player.12.actionbar.alert set value ["",{"text":"Votre prochaine flèche explosera","bold":false,"color":"dark_red"},{"text":" et gèlera sa cible !","bold":false,"color":"aqua"}]
scoreboard players set @s gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick