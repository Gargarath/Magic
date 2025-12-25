## appelée dès qu'un joueur quitte les bleus (rejoint rouge, devient spec, est reset...)
# permet de réactualiser l'affiche des bleus sans @s

function main:stats/scoreboard/blue_team_info/clear_place/clear_place
# vide la place de @s

scoreboard players reset @s blue_place
# enleve la placement de @s