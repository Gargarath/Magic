# appelée par ctf:loop toutes les secondes, permet d'actualiser les bossbar des joueurs morts uniquement.

execute if score @s respawn_time < @s max_respawn_bar run scoreboard players add @s respawn_time 1
# ajoute 1 de score de respawn time si @s n'est pas au max de sa barre de respawn

function gamemode:ctf/respawns/bossbar/refresh_name with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s Player matches 1 run function gamemode:ctf/respawns/bossbar/refreshbossbar/refreshbossbar_player1
# si le joueur 1 est en attente de respawn alors on actualise sa bossbar.
execute if score @s Player matches 2 run function gamemode:ctf/respawns/bossbar/refreshbossbar/refreshbossbar_player2
# si le joueur 2 est en attente de respawn alors on actualise sa bossbar.
execute if score @s Player matches 3 run function gamemode:ctf/respawns/bossbar/refreshbossbar/refreshbossbar_player3
# si le joueur 3 est en attente de respawn alors on actualise sa bossbar.
execute if score @s Player matches 4 run function gamemode:ctf/respawns/bossbar/refreshbossbar/refreshbossbar_player4
# si le joueur 4 est en attente de respawn alors on actualise sa bossbar.
execute if score @s Player matches 5 run function gamemode:ctf/respawns/bossbar/refreshbossbar/refreshbossbar_player5
# si le joueur 5 est en attente de respawn alors on actualise sa bossbar.
execute if score @s Player matches 6 run function gamemode:ctf/respawns/bossbar/refreshbossbar/refreshbossbar_player6
# si le joueur 6 est en attente de respawn alors on actualise sa bossbar.
execute if score @s Player matches 7 run function gamemode:ctf/respawns/bossbar/refreshbossbar/refreshbossbar_player7
# si le joueur 7 est en attente de respawn alors on actualise sa bossbar.
execute if score @s Player matches 8 run function gamemode:ctf/respawns/bossbar/refreshbossbar/refreshbossbar_player8
# si le joueur 8 est en attente de respawn alors on actualise sa bossbar.
execute if score @s Player matches 9 run function gamemode:ctf/respawns/bossbar/refreshbossbar/refreshbossbar_player9
# si le joueur 9 est en attente de respawn alors on actualise sa bossbar.
execute if score @s Player matches 10 run function gamemode:ctf/respawns/bossbar/refreshbossbar/refreshbossbar_player10
# si le joueur 10 est en attente de respawn alors on actualise sa bossbar.
execute if score @s Player matches 11 run function gamemode:ctf/respawns/bossbar/refreshbossbar/refreshbossbar_player11
# si le joueur 11 est en attente de respawn alors on actualise sa bossbar.
execute if score @s Player matches 12 run function gamemode:ctf/respawns/bossbar/refreshbossbar/refreshbossbar_player12
# si le joueur 12 est en attente de respawn alors on actualise sa bossbar.

execute if entity @s[tag=blue_team] run function main:stats/scoreboard/blue_team_info/overlays/respawn_time/check_place
execute if entity @s[tag=red_team] run function main:stats/scoreboard/red_team_info/overlays/respawn_time/check_place
# met à jours ses infos d'équipe selon sa classe

execute as @s if score @s respawn_time = @s max_respawn_bar run function gamemode:ctf/respawns/no_more_respawn_time
# lance la fonction qui re tp au bon spawn au nom des joueurs qui n'ont plus de temps de respawn

