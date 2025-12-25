## appelée par refresh_bossbar quand ça doit exploser
# permet de faire exploser la flèche

playsound minecraft:entity.generic.explode master @a[distance=..15] ~ ~ ~ 100 1
playsound minecraft:entity.generic.explode master @a[distance=16..,scores={Player=10}] ~ ~ ~ 100 1
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_1"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_2"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_3"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_4"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_5"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_6"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_7"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_8"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_9"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_10"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_11"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_12"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_13"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_14"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_15"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_16"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_17"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_18"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_19"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_20"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_21"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_22"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_23"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_24"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_25"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_26"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_27"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_28"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_29"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_30"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_31"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_32"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_33"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_34"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_35"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_36"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_37"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_38"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_39"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_40"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_41"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_42"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_43"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_44"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_45"]}


execute as @e[type=marker,tag=exploraycast10] positioned 0 0 0 rotated as @e[type=marker,tag=exploarrow_rotation10,limit=1,distance=..2] run rotate @s ~ 0


scoreboard players set @e[type=marker,tag=exploraycast10] explo_position_a 0

execute as @e[type=marker,tag=exploraycast10_1,limit=1,sort=nearest] rotated as @s rotated ~ 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_2,limit=1,sort=nearest] rotated as @s rotated ~-10 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_3,limit=1,sort=nearest] rotated as @s rotated ~-20 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_4,limit=1,sort=nearest] rotated as @s rotated ~10 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_5,limit=1,sort=nearest] rotated as @s rotated ~20 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red

execute as @e[type=marker,tag=exploraycast10_6,limit=1,sort=nearest] rotated as @s rotated ~ 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_7,limit=1,sort=nearest] rotated as @s rotated ~-10 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_8,limit=1,sort=nearest] rotated as @s rotated ~-20 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_9,limit=1,sort=nearest] rotated as @s rotated ~10 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_10,limit=1,sort=nearest] rotated as @s rotated ~20 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red

execute as @e[type=marker,tag=exploraycast10_11,limit=1,sort=nearest] rotated as @s rotated ~ 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_12,limit=1,sort=nearest] rotated as @s rotated ~-10 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_13,limit=1,sort=nearest] rotated as @s rotated ~-20 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_14,limit=1,sort=nearest] rotated as @s rotated ~10 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_15,limit=1,sort=nearest] rotated as @s rotated ~20 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red

execute as @e[type=marker,tag=exploraycast10_16,limit=1,sort=nearest] rotated as @s rotated ~ 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_17,limit=1,sort=nearest] rotated as @s rotated ~-10 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_18,limit=1,sort=nearest] rotated as @s rotated ~-20 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_19,limit=1,sort=nearest] rotated as @s rotated ~10 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_20,limit=1,sort=nearest] rotated as @s rotated ~20 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red

execute as @e[type=marker,tag=exploraycast10_21,limit=1,sort=nearest] rotated as @s rotated ~ 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_22,limit=1,sort=nearest] rotated as @s rotated ~-10 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_23,limit=1,sort=nearest] rotated as @s rotated ~-20 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_24,limit=1,sort=nearest] rotated as @s rotated ~10 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_25,limit=1,sort=nearest] rotated as @s rotated ~20 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red

execute as @e[type=marker,tag=exploraycast10_26,limit=1,sort=nearest] rotated as @s rotated ~ -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_27,limit=1,sort=nearest] rotated as @s rotated ~-10 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_28,limit=1,sort=nearest] rotated as @s rotated ~-20 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_29,limit=1,sort=nearest] rotated as @s rotated ~10 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_30,limit=1,sort=nearest] rotated as @s rotated ~20 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red

execute as @e[type=marker,tag=exploraycast10_31,limit=1,sort=nearest] rotated as @s rotated ~ -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_32,limit=1,sort=nearest] rotated as @s rotated ~-10 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_33,limit=1,sort=nearest] rotated as @s rotated ~-20 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_34,limit=1,sort=nearest] rotated as @s rotated ~10 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_35,limit=1,sort=nearest] rotated as @s rotated ~20 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red

execute as @e[type=marker,tag=exploraycast10_36,limit=1,sort=nearest] rotated as @s rotated ~ -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_37,limit=1,sort=nearest] rotated as @s rotated ~-10 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_38,limit=1,sort=nearest] rotated as @s rotated ~-20 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_39,limit=1,sort=nearest] rotated as @s rotated ~10 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_40,limit=1,sort=nearest] rotated as @s rotated ~20 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red

execute as @e[type=marker,tag=exploraycast10_41,limit=1,sort=nearest] rotated as @s rotated ~ -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_42,limit=1,sort=nearest] rotated as @s rotated ~-10 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_43,limit=1,sort=nearest] rotated as @s rotated ~-20 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_44,limit=1,sort=nearest] rotated as @s rotated ~10 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red
execute as @e[type=marker,tag=exploraycast10_45,limit=1,sort=nearest] rotated as @s rotated ~20 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/dark_red




scoreboard players set @s explosive_arrow_timer -1
bossbar set explosive_arrow:player10 players

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

scoreboard players reset @e[type=#spellable,scores={hit_by_explo=10}] hit_by_explo
# clear toutes les cibles de cette flèche explo

kill @e[type=text_display,tag=explo_player_timer10,limit=1]
execute as @s[type=arrow] run function spells:arrow_detection/clear_ground_arrow

schedule function spells:spellsystem/spell1/spell1_a/arrow_hitted/player10 1t