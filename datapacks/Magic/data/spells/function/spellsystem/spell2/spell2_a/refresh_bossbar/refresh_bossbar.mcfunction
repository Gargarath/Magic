# appelée par spell:loop permet de réduire le score de trapped de @s et de refresh sa bossbar selon quel joueur il est

scoreboard players remove @s trapped 1
# eneleve 1 de score de trapped à @s

execute if score @s Player matches 1 run function spells:spellsystem/spell2/spell2_a/refresh_bossbar/player/player1
execute if score @s Player matches 2 run function spells:spellsystem/spell2/spell2_a/refresh_bossbar/player/player2
execute if score @s Player matches 3 run function spells:spellsystem/spell2/spell2_a/refresh_bossbar/player/player3
execute if score @s Player matches 4 run function spells:spellsystem/spell2/spell2_a/refresh_bossbar/player/player4
execute if score @s Player matches 5 run function spells:spellsystem/spell2/spell2_a/refresh_bossbar/player/player5
execute if score @s Player matches 6 run function spells:spellsystem/spell2/spell2_a/refresh_bossbar/player/player6
execute if score @s Player matches 7 run function spells:spellsystem/spell2/spell2_a/refresh_bossbar/player/player7
execute if score @s Player matches 8 run function spells:spellsystem/spell2/spell2_a/refresh_bossbar/player/player8
execute if score @s Player matches 9 run function spells:spellsystem/spell2/spell2_a/refresh_bossbar/player/player9
execute if score @s Player matches 10 run function spells:spellsystem/spell2/spell2_a/refresh_bossbar/player/player10
execute if score @s Player matches 11 run function spells:spellsystem/spell2/spell2_a/refresh_bossbar/player/player11
execute if score @s Player matches 12 run function spells:spellsystem/spell2/spell2_a/refresh_bossbar/player/player12
# refresh la bossbar attribuée à @s

execute if score @s in_trap_number matches 1 store result bossbar trapped_someone:player1 value run scoreboard players get @s trapped
execute if score @s in_trap_number matches 2 store result bossbar trapped_someone:player2 value run scoreboard players get @s trapped
execute if score @s in_trap_number matches 3 store result bossbar trapped_someone:player3 value run scoreboard players get @s trapped
execute if score @s in_trap_number matches 4 store result bossbar trapped_someone:player4 value run scoreboard players get @s trapped
execute if score @s in_trap_number matches 5 store result bossbar trapped_someone:player5 value run scoreboard players get @s trapped
execute if score @s in_trap_number matches 6 store result bossbar trapped_someone:player6 value run scoreboard players get @s trapped
execute if score @s in_trap_number matches 7 store result bossbar trapped_someone:player7 value run scoreboard players get @s trapped
execute if score @s in_trap_number matches 8 store result bossbar trapped_someone:player8 value run scoreboard players get @s trapped
execute if score @s in_trap_number matches 9 store result bossbar trapped_someone:player9 value run scoreboard players get @s trapped
execute if score @s in_trap_number matches 10 store result bossbar trapped_someone:player10 value run scoreboard players get @s trapped
execute if score @s in_trap_number matches 11 store result bossbar trapped_someone:player11 value run scoreboard players get @s trapped
execute if score @s in_trap_number matches 12 store result bossbar trapped_someone:player12 value run scoreboard players get @s trapped