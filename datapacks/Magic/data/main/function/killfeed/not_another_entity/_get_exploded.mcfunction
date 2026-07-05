# appelé par _determine_who_killed si @s s'est fait tuer par un allié

## affiche par qui est mort @s selon son numéro de joueur
execute if score @s Player matches 1 run function main:killfeed/not_another_entity/killed_by_ally/player1
execute if score @s Player matches 2 run function main:killfeed/not_another_entity/killed_by_ally/player2
execute if score @s Player matches 3 run function main:killfeed/not_another_entity/killed_by_ally/player3
execute if score @s Player matches 4 run function main:killfeed/not_another_entity/killed_by_ally/player4
execute if score @s Player matches 5 run function main:killfeed/not_another_entity/killed_by_ally/player5
execute if score @s Player matches 6 run function main:killfeed/not_another_entity/killed_by_ally/player6
execute if score @s Player matches 7 run function main:killfeed/not_another_entity/killed_by_ally/player7
execute if score @s Player matches 8 run function main:killfeed/not_another_entity/killed_by_ally/player8
execute if score @s Player matches 9 run function main:killfeed/not_another_entity/killed_by_ally/player9
execute if score @s Player matches 10 run function main:killfeed/not_another_entity/killed_by_ally/player10
execute if score @s Player matches 11 run function main:killfeed/not_another_entity/killed_by_ally/player11
execute if score @s Player matches 12 run function main:killfeed/not_another_entity/killed_by_ally/player12
# ici on réutilise by ally mais en fait c'est pas le cas

scoreboard players operation $indirect_killer ffa_bounty_calc = @s last_caster
scoreboard players set $bounty_payout ffa_bounty_calc 0
execute if score $gamemode option_panel matches 0 if score @s last_caster matches 1..12 run function gamemode:ffa/bounty/prepare_claim with entity @s EnderItems[0].components.minecraft:custom_data

execute if score $gamemode option_panel matches 0 as @a[scores={Player=1..12}] if score @s Player = $indirect_killer ffa_bounty_calc run function gamemode:ffa/bounty/indirect_player_kill

# Conserve le comportement historique hors FFA.
execute unless score $gamemode option_panel matches 0 if score @s last_caster matches 1 run scoreboard players add @a[scores={Player=1}] stat_killcount_player 1
execute unless score $gamemode option_panel matches 0 if score @s last_caster matches 2 run scoreboard players add @a[scores={Player=2}] stat_killcount_player 1
execute unless score $gamemode option_panel matches 0 if score @s last_caster matches 3 run scoreboard players add @a[scores={Player=3}] stat_killcount_player 1
execute unless score $gamemode option_panel matches 0 if score @s last_caster matches 4 run scoreboard players add @a[scores={Player=4}] stat_killcount_player 1
execute unless score $gamemode option_panel matches 0 if score @s last_caster matches 5 run scoreboard players add @a[scores={Player=5}] stat_killcount_player 1
execute unless score $gamemode option_panel matches 0 if score @s last_caster matches 6 run scoreboard players add @a[scores={Player=6}] stat_killcount_player 1
execute unless score $gamemode option_panel matches 0 if score @s last_caster matches 7 run scoreboard players add @a[scores={Player=7}] stat_killcount_player 1
execute unless score $gamemode option_panel matches 0 if score @s last_caster matches 8 run scoreboard players add @a[scores={Player=8}] stat_killcount_player 1
execute unless score $gamemode option_panel matches 0 if score @s last_caster matches 9 run scoreboard players add @a[scores={Player=9}] stat_killcount_player 1
execute unless score $gamemode option_panel matches 0 if score @s last_caster matches 10 run scoreboard players add @a[scores={Player=10}] stat_killcount_player 1
execute unless score $gamemode option_panel matches 0 if score @s last_caster matches 11 run scoreboard players add @a[scores={Player=11}] stat_killcount_player 1
execute unless score $gamemode option_panel matches 0 if score @s last_caster matches 12 run scoreboard players add @a[scores={Player=12}] stat_killcount_player 1
# ajoute un kill au joueur qui a tué @s

execute if score $gamemode option_panel matches 0 if score @s last_caster matches 1..12 run function gamemode:ffa/leaderboard/refresh_leaderboard
