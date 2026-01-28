## appelée par arena/respawn et quit_arena
## permet de refresh le leaderboard quand quelqu'un meurt ou quitte

scoreboard players reset * sort_arena_killcount
scoreboard players set $current_check sort_arena_killcount 0
# indique la position actuelle de détection

scoreboard players set @a[tag=in_lobby_arena,scores={Player=1..}] sort_arena_killcount -1
# ajoute tous les joueurs de la dernière game à la liste de ceux qui doivent être triés

execute unless score $sorting sort_arena_killcount matches 1 run function lobby:arena/leaderboard/sort/sorting_clock
# lance la boucle de tri si pas déjà en train de trier

execute as @a[tag=in_lobby_arena,scores={Player=1..}] run function main:gui/display/in_lobby/inarena
# actualise le gui de l'arène pour tout les joueurs dedans