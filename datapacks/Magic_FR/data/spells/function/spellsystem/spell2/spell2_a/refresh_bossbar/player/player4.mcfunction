# appelée par spell:spellsystem/spell2/spell2_a/refresh_bossbar/refresh_bossbar permet d'actualiser la bossbar de @s

execute store result bossbar trapped:player4 value run scoreboard players get @s trapped

execute if score @s trap_number_a matches 2 store result bossbar trapped_someone:player2 value run scoreboard players get @s trapped
execute if score @s trap_number_a matches 3 store result bossbar trapped_someone:player3 value run scoreboard players get @s trapped
execute if score @s trap_number_a matches 1 store result bossbar trapped_someone:player1 value run scoreboard players get @s trapped
execute if score @s trap_number_a matches 5 store result bossbar trapped_someone:player5 value run scoreboard players get @s trapped
execute if score @s trap_number_a matches 6 store result bossbar trapped_someone:player6 value run scoreboard players get @s trapped
execute if score @s trap_number_a matches 7 store result bossbar trapped_someone:player7 value run scoreboard players get @s trapped
execute if score @s trap_number_a matches 8 store result bossbar trapped_someone:player8 value run scoreboard players get @s trapped
execute if score @s trap_number_a matches 9 store result bossbar trapped_someone:player9 value run scoreboard players get @s trapped
execute if score @s trap_number_a matches 10 store result bossbar trapped_someone:player10 value run scoreboard players get @s trapped
execute if score @s trap_number_a matches 11 store result bossbar trapped_someone:player11 value run scoreboard players get @s trapped
execute if score @s trap_number_a matches 12 store result bossbar trapped_someone:player12 value run scoreboard players get @s trapped