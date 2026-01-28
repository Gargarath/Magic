# appelée par ctf:loop permet de finir la partie ou d'aller au shop selon la manche

function main:launch_arena/countdown/reset_countdown
# reset le countdown de lancement de partie (si utilisé par commande pendant le countdown)

execute if score round bossbar matches 1..2 run function main:round_end/go_to_shop
# Lance un deuxième round à la fin du round 1 ou 2

execute if score round bossbar matches 3 if score Bleus Flag_posed = Rouges Flag_posed run function main:round_end/go_to_shop
# Lance un troisième round si les deux équipes sont a égalité à la fin du round 3
execute if score round bossbar matches 3 if score Bleus Flag_posed > Rouges Flag_posed run function ctf:end_game/blue_win
# Déclare l'équipe bleue vainqueur si les bleus ont capturés plus de drapeaux que les rouges au total à la fin de la manche 3
execute if score round bossbar matches 3 if score Bleus Flag_posed < Rouges Flag_posed run function ctf:end_game/red_win
# Déclare l'équipe rouge vainqueur si les bleus ont capturés moins de drapeaux que les rouges au total à la fin de la manche 3


execute if score round bossbar matches 4 if score Bleus Flag_posed = Rouges Flag_posed run function ctf:end_game/draw
# Déclare l'équipe rouge vainqueur si les bleus ont capturés moins de drapeaux que les rouges au total à la fin de la manche 4