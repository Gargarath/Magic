## appelée par XXXXX
# permet de reset ce qu'il y a sur l'alerte d'actionbar de @s

scoreboard players remove @s gui_actionbar_alert 1
# réduit le timer de @s

execute if score @s gui_actionbar_alert matches 0 run function main:gui/display/actionbar_clear
# si timer à 0 -> clear le timer