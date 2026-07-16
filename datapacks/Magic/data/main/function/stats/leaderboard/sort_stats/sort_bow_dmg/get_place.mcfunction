## appelée par sorting_clock -> permet de save la place de @s

scoreboard players operation @s sort_bow_dmg10 = $current_check sort_bow_dmg10
# donne son classement à @s

execute store result storage temp:sort rank int 1 run scoreboard players get @s sort_bow_dmg10
execute store result storage temp:sort player int 1 run scoreboard players get @s Player_last_game
# stocke temporairement les info de @s

function main:stats/leaderboard/sort_stats/sort_bow_dmg/save_place with storage temp:sort
# appelle le save de place avec les infos de @s

scoreboard players set @s played_last_game 1
# indique que @s n'a plus besoin d'être testé pour le classement des kills
