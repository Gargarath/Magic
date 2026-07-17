# appelée par ctf:loop lorsque @s n'est plus freeze (score de freeze =0) ou par ctf:respawns quand @s meurt en étant freeze
# permet à @s de ne plus être freeze et de pouvoir cap les drapeaux de nouveau


scoreboard players set @s freeze -1
# met le score de freeze de @s à -1
execute if entity @s[type=player] run function stuff:status_items/refresh_overlay
execute unless entity @s[type=player] run item replace entity @s armor.head with air
# enleve le bloc de glace sur la tête de @s

execute if score @s Player matches 1 run bossbar set frozen:player1 players
execute if score @s Player matches 2 run bossbar set frozen:player2 players
execute if score @s Player matches 3 run bossbar set frozen:player3 players
execute if score @s Player matches 4 run bossbar set frozen:player4 players
execute if score @s Player matches 5 run bossbar set frozen:player5 players
execute if score @s Player matches 6 run bossbar set frozen:player6 players
execute if score @s Player matches 7 run bossbar set frozen:player7 players
execute if score @s Player matches 8 run bossbar set frozen:player8 players
execute if score @s Player matches 9 run bossbar set frozen:player9 players
execute if score @s Player matches 10 run bossbar set frozen:player10 players
execute if score @s Player matches 11 run bossbar set frozen:player11 players
execute if score @s Player matches 12 run bossbar set frozen:player12 players
# enlève la bossbar "Vous êtes gelé !" à @s selon son numéro de joueur

tag @s remove cant_pickup_flag
# enlève le tag de @s qui lui empêche de ramasser les drapeaux
