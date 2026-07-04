## appelée au lancement du FFA et après chaque mort
# Trie les joueurs selon leurs éliminations et alimente le stockage de l'actionbar.

scoreboard players reset * sort_ffa_killcount
scoreboard players set $current_check sort_ffa_killcount 0
scoreboard players set @a[scores={Player=1..12}] sort_ffa_killcount -1

function gamemode:ffa/leaderboard/sort/sorting_clock
