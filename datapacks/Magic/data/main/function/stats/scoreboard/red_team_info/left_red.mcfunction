## appelée dès qu'un joueur quitte les rouges (rejoint rouge, devient spec, est reset...)
# permet de réactualiser l'affiche des rouges sans @s

function main:stats/scoreboard/red_team_info/clear_place/clear_place
# vide la place de @s

scoreboard players reset @s red_place
# enleve la placement de @s