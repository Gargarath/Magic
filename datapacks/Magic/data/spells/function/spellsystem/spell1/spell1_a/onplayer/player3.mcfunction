# appelée par spells:loop si une flèche explosive est dans un joueur
# permet de fair une explosion selon à qui la flèche appartient

effect clear @s luck

execute if entity @s[type=#minecraft:spellable,tag=!spell_immune,nbt={active_effects:[{id:"minecraft:unluck"}]}] run tag @s add freeze_arrow

scoreboard players set @s[type=player] explosive_player_timer 8
execute if score @s Player matches 1 run bossbar set explosive_player:player1 value 8
execute if score @s Player matches 2 run bossbar set explosive_player:player2 value 8
execute if score @s Player matches 3 run bossbar set explosive_player:player3 value 8
execute if score @s Player matches 4 run bossbar set explosive_player:player4 value 8
execute if score @s Player matches 5 run bossbar set explosive_player:player5 value 8
execute if score @s Player matches 6 run bossbar set explosive_player:player6 value 8
execute if score @s Player matches 7 run bossbar set explosive_player:player7 value 8
execute if score @s Player matches 8 run bossbar set explosive_player:player8 value 8
execute if score @s Player matches 9 run bossbar set explosive_player:player9 value 8
execute if score @s Player matches 10 run bossbar set explosive_player:player10 value 8
execute if score @s Player matches 11 run bossbar set explosive_player:player11 value 8
execute if score @s Player matches 12 run bossbar set explosive_player:player12 value 8
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