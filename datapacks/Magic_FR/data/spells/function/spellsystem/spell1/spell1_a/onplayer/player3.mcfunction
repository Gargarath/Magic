# appelée par spells:loop si une flèche explosive est dans le sol
# permet de fair une explosion selon à qui la flèche appartient

effect clear @s luck

execute positioned 0 0 0 as @e[type=marker,tag=exploarrow_rotation3,limit=1,distance=..2] if score @s spell1_a_direction matches 1 at @s run rotate @s ~ 0
execute positioned 0 0 0 as @e[type=marker,tag=exploarrow_rotation3,limit=1,distance=..2] if score @s spell1_a_direction matches 2 at @s run rotate @s ~90 0
execute positioned 0 0 0 as @e[type=marker,tag=exploarrow_rotation3,limit=1,distance=..2] if score @s spell1_a_direction matches 3 at @s run rotate @s ~180 0
execute positioned 0 0 0 as @e[type=marker,tag=exploarrow_rotation3,limit=1,distance=..2] if score @s spell1_a_direction matches 4 at @s run rotate @s ~-90 0
execute positioned 0 0 0 as @e[type=marker,tag=exploarrow_rotation3,limit=1,distance=..2] run scoreboard players set @s spell1_a_direction -1

#execute positioned 0 0 0 run scoreboard players operation @s hit_by_explo_charge = @e[type=minecraft:marker,tag=exploarrow_rotation3,distance=..2] hit_by_explo_charge

execute if entity @s[type=!iron_golem,type=!slime] run summon text_display ~ ~2 ~ {billboard:"center",Tags:["explo_player_timer","explo_player_timer3"],text:"3"}
execute if entity @s[type=!player,type=!wither_skeleton] run summon text_display ~ ~3 ~ {billboard:"center",Tags:["explo_player_timer","explo_player_timer3"],text:"3"}

scoreboard players set @s[type=player] explosive_player_timer 20
execute if score @s Player matches 1 run bossbar set explosive_player:player1 value 20
execute if score @s Player matches 2 run bossbar set explosive_player:player2 value 20
execute if score @s Player matches 3 run bossbar set explosive_player:player3 value 20
execute if score @s Player matches 4 run bossbar set explosive_player:player4 value 20
execute if score @s Player matches 5 run bossbar set explosive_player:player5 value 20
execute if score @s Player matches 6 run bossbar set explosive_player:player6 value 20
execute if score @s Player matches 7 run bossbar set explosive_player:player7 value 20
execute if score @s Player matches 8 run bossbar set explosive_player:player8 value 20
execute if score @s Player matches 9 run bossbar set explosive_player:player9 value 20
execute if score @s Player matches 10 run bossbar set explosive_player:player10 value 20
execute if score @s Player matches 11 run bossbar set explosive_player:player11 value 20
execute if score @s Player matches 12 run bossbar set explosive_player:player12 value 20
execute if score @s Player matches 1 run bossbar set explosive_player:player1 players @s
execute if score @s Player matches 2 run bossbar set explosive_player:player2 players @s
execute if score @s Player matches 3 run bossbar set explosive_player:player3 players @s
execute if score @s Player matches 4 run bossbar set explosive_player:player4 players @s
execute if score @s Player matches 5 run bossbar set explosive_player:player5 players @s
execute if score @s Player matches 6 run bossbar set explosive_player:player6 players @s
execute if score @s Player matches 7 run bossbar set explosive_player:player7 players @s
execute if score @s Player matches 8 run bossbar set explosive_player:player8 players @s
execute if score @s Player matches 9 run bossbar set explosive_player:player9 players @s
execute if score @s Player matches 10 run bossbar set explosive_player:player10 players @s
execute if score @s Player matches 11 run bossbar set explosive_player:player11 players @s
execute if score @s Player matches 12 run bossbar set explosive_player:player12 players @s

# affiche la bossbar pour @s

scoreboard players set @s hit_by_explo 3
function spells:spellsystem/spell1/spell1_a/start_animation/player3