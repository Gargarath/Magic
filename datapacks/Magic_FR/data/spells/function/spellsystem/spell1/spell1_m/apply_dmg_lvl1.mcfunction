# appelée par spell hitted au nom des joueurs qui ont été touchés par trait de feu 1, check de qui vient le tir pour appliquer les dégats


function main:stats/calculate_dmg_dealth/store_hp_before
# lance la fonction qui calcule les dégats subit par @s pour les stats du caster

scoreboard players set @s burning 60

execute if score @s freeze matches 0.. run function spells:spellsystem/spell3/spell3_a/stop_freeze
# si @s est gelé, arrête le gel
item replace entity @s armor.head from block 17 95 15 container.6
# met un bloc de magma sur la tête de @s


execute if score @s Player matches 1 run execute store result bossbar burning:player1 value run scoreboard players get @s burning
execute if score @s Player matches 2 run execute store result bossbar burning:player2 value run scoreboard players get @s burning
execute if score @s Player matches 3 run execute store result bossbar burning:player3 value run scoreboard players get @s burning
execute if score @s Player matches 4 run execute store result bossbar burning:player4 value run scoreboard players get @s burning
execute if score @s Player matches 5 run execute store result bossbar burning:player5 value run scoreboard players get @s burning
execute if score @s Player matches 6 run execute store result bossbar burning:player6 value run scoreboard players get @s burning
execute if score @s Player matches 7 run execute store result bossbar burning:player7 value run scoreboard players get @s burning
execute if score @s Player matches 8 run execute store result bossbar burning:player8 value run scoreboard players get @s burning
execute if score @s Player matches 9 run execute store result bossbar burning:player9 value run scoreboard players get @s burning
execute if score @s Player matches 10 run execute store result bossbar burning:player10 value run scoreboard players get @s burning
execute if score @s Player matches 11 run execute store result bossbar burning:player11 value run scoreboard players get @s burning
execute if score @s Player matches 12 run execute store result bossbar burning:player12 value run scoreboard players get @s burning

execute if score @s Player matches 1 run bossbar set burning:player1 players @s
execute if score @s Player matches 2 run bossbar set burning:player2 players @s
execute if score @s Player matches 3 run bossbar set burning:player3 players @s
execute if score @s Player matches 4 run bossbar set burning:player4 players @s
execute if score @s Player matches 5 run bossbar set burning:player5 players @s
execute if score @s Player matches 6 run bossbar set burning:player6 players @s
execute if score @s Player matches 7 run bossbar set burning:player7 players @s
execute if score @s Player matches 8 run bossbar set burning:player8 players @s
execute if score @s Player matches 9 run bossbar set burning:player9 players @s
execute if score @s Player matches 10 run bossbar set burning:player10 players @s
execute if score @s Player matches 11 run bossbar set burning:player11 players @s
execute if score @s Player matches 12 run bossbar set burning:player12 players @s
# refresh la bossbar attribuée à @s

scoreboard players operation @s burning_by_player = @s last_caster
scoreboard players set @s burning_lvl 1
# stock qui brule @s et quel est son niveau de sort


execute if score @s last_caster matches 1 run damage @s 6 minecraft:player_attack by @a[scores={Player=1},limit=1]
execute if score @s last_caster matches 2 run damage @s 6 minecraft:player_attack by @a[scores={Player=2},limit=1]
execute if score @s last_caster matches 3 run damage @s 6 minecraft:player_attack by @a[scores={Player=3},limit=1]
execute if score @s last_caster matches 4 run damage @s 6 minecraft:player_attack by @a[scores={Player=4},limit=1]
execute if score @s last_caster matches 5 run damage @s 6 minecraft:player_attack by @a[scores={Player=5},limit=1]
execute if score @s last_caster matches 6 run damage @s 6 minecraft:player_attack by @a[scores={Player=6},limit=1]
execute if score @s last_caster matches 7 run damage @s 6 minecraft:player_attack by @a[scores={Player=7},limit=1]
execute if score @s last_caster matches 8 run damage @s 6 minecraft:player_attack by @a[scores={Player=8},limit=1]
execute if score @s last_caster matches 9 run damage @s 6 minecraft:player_attack by @a[scores={Player=9},limit=1]
execute if score @s last_caster matches 10 run damage @s 6 minecraft:player_attack by @a[scores={Player=10},limit=1]
execute if score @s last_caster matches 11 run damage @s 6 minecraft:player_attack by @a[scores={Player=11},limit=1]
execute if score @s last_caster matches 12 run damage @s 6 minecraft:player_attack by @a[scores={Player=12},limit=1]