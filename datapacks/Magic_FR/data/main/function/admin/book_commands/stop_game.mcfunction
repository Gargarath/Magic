## appelée par main:loop quand @s a activé le trigger
## permet d'arrêter la partie

scoreboard players reset @s admin_stop_game
# clear le detecteur d'utilisation du trigger

scoreboard players enable @s admin_stop_game
# permet à @s de réutiliser le trigger

function main:admin/stopgame
# lance la fonction d'arrêt de game