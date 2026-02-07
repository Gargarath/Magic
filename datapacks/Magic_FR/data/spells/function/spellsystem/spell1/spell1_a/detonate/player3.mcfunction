## appelée par refresh_bossbar quand ça doit exploser
# permet de faire exploser la flèche

kill @e[type=marker,tag=exploraycast3]
scoreboard players set @a[scores={Player=3},limit=1] explosive_arrow_timer -1
bossbar set explosive_arrow:player3 players

playsound minecraft:entity.generic.explode master @a[distance=..15] ~ ~ ~ 100 1
playsound minecraft:entity.generic.explode master @a[distance=16..,scores={Player=3}] ~ ~ ~ 100 1
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a

execute if score @a[scores={Player=3},limit=1] spell1 matches 1 as @e[type=#spellable,distance=..10] at @s run function spells:spellsystem/spell1/spell1_a/detonate/summon_markers {id:3}
execute if score @a[scores={Player=3},limit=1] spell1 matches 2 as @e[type=#spellable,distance=..12] at @s run function spells:spellsystem/spell1/spell1_a/detonate/summon_markers {id:3}
execute if score @a[scores={Player=3},limit=1] spell1 matches 3 as @e[type=#spellable,distance=..15] at @s run function spells:spellsystem/spell1/spell1_a/detonate/summon_markers {id:3}
# spawn des markers autour des joueurs dans la zone rayon de 10 blocs

execute as @e[type=marker,tag=exploraycast3] run rotate @s facing ~ ~ ~
# fait regarder ses marquers vers ici

scoreboard players set @e[type=marker,tag=exploraycast3] explo_position_a 0
execute if score @a[scores={Player=3},limit=1] spell1 matches 1 if entity @e[type=#spellable,distance=..10] as @e[type=marker,tag=exploraycast3] positioned ~ ~ ~ facing entity @s feet run function spells:spellsystem/spell1/spell1_a/raycast/player3/dark_red
execute if score @a[scores={Player=3},limit=1] spell1 matches 2 if entity @e[type=#spellable,distance=..12] as @e[type=marker,tag=exploraycast3] positioned ~ ~ ~ facing entity @s feet run function spells:spellsystem/spell1/spell1_a/raycast/player3/dark_red
execute if score @a[scores={Player=3},limit=1] spell1 matches 3 if entity @e[type=#spellable,distance=..15] as @e[type=marker,tag=exploraycast3] positioned ~ ~ ~ facing entity @s feet run function spells:spellsystem/spell1/spell1_a/raycast/player3/dark_red
# fait un raycast depuis les markers

execute if score @s explosive_player_timer matches 0.. if score @s Player matches 1 run bossbar set explosive_player:player1 players
execute if score @s explosive_player_timer matches 0.. if score @s Player matches 2 run bossbar set explosive_player:player2 players
execute if score @s explosive_player_timer matches 0.. if score @s Player matches 3 run bossbar set explosive_player:player3 players
execute if score @s explosive_player_timer matches 0.. if score @s Player matches 4 run bossbar set explosive_player:player4 players
execute if score @s explosive_player_timer matches 0.. if score @s Player matches 5 run bossbar set explosive_player:player5 players
execute if score @s explosive_player_timer matches 0.. if score @s Player matches 6 run bossbar set explosive_player:player6 players
execute if score @s explosive_player_timer matches 0.. if score @s Player matches 7 run bossbar set explosive_player:player7 players
execute if score @s explosive_player_timer matches 0.. if score @s Player matches 8 run bossbar set explosive_player:player8 players
execute if score @s explosive_player_timer matches 0.. if score @s Player matches 9 run bossbar set explosive_player:player9 players
execute if score @s explosive_player_timer matches 0.. if score @s Player matches 10 run bossbar set explosive_player:player10 players
execute if score @s explosive_player_timer matches 0.. if score @s Player matches 11 run bossbar set explosive_player:player11 players
execute if score @s explosive_player_timer matches 0.. if score @s Player matches 12 run bossbar set explosive_player:player12 players
scoreboard players reset @s explosive_player_timer

scoreboard players reset @e[type=#spellable,scores={hit_by_explo=3}] hit_by_explo
# clear toutes les cibles de cette flèche explo

scoreboard players operation @e[type=#spellable,tag=in_explo3,scores={last_caster=0}] hit_by_explo_charge = @s arrow_charge
execute if entity @s[tag=freeze_arrow] as @e[type=#spellable,tag=in_explo3] run function spells:spellsystem/spell3/spell3_a/get_frozen/player3/test_lvl
# si la flèche est de glace -> freeze également

tag @s remove freeze_arrow

kill @e[type=text_display,tag=explo_player_timer3,limit=1]
execute as @s[type=arrow] run function spells:arrow_detection/clear_ground_arrow

schedule function spells:spellsystem/spell1/spell1_a/arrow_hitted/player3 3t