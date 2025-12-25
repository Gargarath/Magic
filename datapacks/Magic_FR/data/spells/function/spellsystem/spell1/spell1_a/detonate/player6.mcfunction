## appelée par refresh_bossbar quand ça doit exploser
# permet de faire exploser la flèche

playsound minecraft:entity.generic.explode master @a[distance=..15] ~ ~ ~ 100 1
playsound minecraft:entity.generic.explode master @a[distance=16..,scores={Player=6}] ~ ~ ~ 100 1
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_1"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_2"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_3"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_4"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_5"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_6"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_7"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_8"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_9"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_10"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_11"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_12"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_13"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_14"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_15"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_16"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_17"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_18"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_19"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_20"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_21"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_22"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_23"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_24"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_25"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_26"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_27"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_28"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_29"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_30"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_31"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_32"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_33"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_34"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_35"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_36"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_37"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_38"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_39"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_40"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_41"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_42"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_43"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_44"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_45"]}


execute as @e[type=marker,tag=exploraycast6] positioned 0 0 0 rotated as @e[type=marker,tag=exploarrow_rotation6,limit=1,distance=..2] run rotate @s ~ 0


scoreboard players set @e[type=marker,tag=exploraycast6] explo_position_a 0

execute as @e[type=marker,tag=exploraycast6_1,limit=1,sort=nearest] rotated as @s rotated ~ 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_2,limit=1,sort=nearest] rotated as @s rotated ~-10 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_3,limit=1,sort=nearest] rotated as @s rotated ~-20 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_4,limit=1,sort=nearest] rotated as @s rotated ~10 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_5,limit=1,sort=nearest] rotated as @s rotated ~20 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red

execute as @e[type=marker,tag=exploraycast6_6,limit=1,sort=nearest] rotated as @s rotated ~ 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_7,limit=1,sort=nearest] rotated as @s rotated ~-10 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_8,limit=1,sort=nearest] rotated as @s rotated ~-20 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_9,limit=1,sort=nearest] rotated as @s rotated ~10 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_10,limit=1,sort=nearest] rotated as @s rotated ~20 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red

execute as @e[type=marker,tag=exploraycast6_11,limit=1,sort=nearest] rotated as @s rotated ~ 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_12,limit=1,sort=nearest] rotated as @s rotated ~-10 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_13,limit=1,sort=nearest] rotated as @s rotated ~-20 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_14,limit=1,sort=nearest] rotated as @s rotated ~10 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_15,limit=1,sort=nearest] rotated as @s rotated ~20 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red

execute as @e[type=marker,tag=exploraycast6_16,limit=1,sort=nearest] rotated as @s rotated ~ 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_17,limit=1,sort=nearest] rotated as @s rotated ~-10 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_18,limit=1,sort=nearest] rotated as @s rotated ~-20 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_19,limit=1,sort=nearest] rotated as @s rotated ~10 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_20,limit=1,sort=nearest] rotated as @s rotated ~20 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red

execute as @e[type=marker,tag=exploraycast6_21,limit=1,sort=nearest] rotated as @s rotated ~ 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_22,limit=1,sort=nearest] rotated as @s rotated ~-10 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_23,limit=1,sort=nearest] rotated as @s rotated ~-20 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_24,limit=1,sort=nearest] rotated as @s rotated ~10 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_25,limit=1,sort=nearest] rotated as @s rotated ~20 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red

execute as @e[type=marker,tag=exploraycast6_26,limit=1,sort=nearest] rotated as @s rotated ~ -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_27,limit=1,sort=nearest] rotated as @s rotated ~-10 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_28,limit=1,sort=nearest] rotated as @s rotated ~-20 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_29,limit=1,sort=nearest] rotated as @s rotated ~10 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_30,limit=1,sort=nearest] rotated as @s rotated ~20 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red

execute as @e[type=marker,tag=exploraycast6_31,limit=1,sort=nearest] rotated as @s rotated ~ -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_32,limit=1,sort=nearest] rotated as @s rotated ~-10 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_33,limit=1,sort=nearest] rotated as @s rotated ~-20 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_34,limit=1,sort=nearest] rotated as @s rotated ~10 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_35,limit=1,sort=nearest] rotated as @s rotated ~20 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red

execute as @e[type=marker,tag=exploraycast6_36,limit=1,sort=nearest] rotated as @s rotated ~ -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_37,limit=1,sort=nearest] rotated as @s rotated ~-10 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_38,limit=1,sort=nearest] rotated as @s rotated ~-20 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_39,limit=1,sort=nearest] rotated as @s rotated ~10 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_40,limit=1,sort=nearest] rotated as @s rotated ~20 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red

execute as @e[type=marker,tag=exploraycast6_41,limit=1,sort=nearest] rotated as @s rotated ~ -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_42,limit=1,sort=nearest] rotated as @s rotated ~-10 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_43,limit=1,sort=nearest] rotated as @s rotated ~-20 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_44,limit=1,sort=nearest] rotated as @s rotated ~10 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red
execute as @e[type=marker,tag=exploraycast6_45,limit=1,sort=nearest] rotated as @s rotated ~20 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/dark_red




scoreboard players set @s explosive_arrow_timer -1
bossbar set explosive_arrow:player6 players

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

scoreboard players reset @e[type=#spellable,scores={hit_by_explo=6}] hit_by_explo
# clear toutes les cibles de cette flèche explo

kill @e[type=text_display,tag=explo_player_timer6,limit=1]
execute as @s[type=arrow] run function spells:arrow_detection/clear_ground_arrow

schedule function spells:spellsystem/spell1/spell1_a/arrow_hitted/player6 1t