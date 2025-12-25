## appelée par refresh_bossbar quand ça doit exploser
# permet de faire exploser la flèche

playsound minecraft:entity.generic.explode master @a[distance=..15] ~ ~ ~ 100 1
playsound minecraft:entity.generic.explode master @a[distance=16..,scores={Player=4}] ~ ~ ~ 100 1
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_1"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_2"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_3"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_4"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_5"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_6"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_7"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_8"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_9"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_10"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_11"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_12"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_13"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_14"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_15"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_16"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_17"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_18"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_19"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_20"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_21"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_22"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_23"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_24"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_25"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_26"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_27"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_28"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_29"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_30"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_31"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_32"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_33"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_34"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_35"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_36"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_37"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_38"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_39"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_40"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_41"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_42"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_43"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_44"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_45"]}


execute as @e[type=marker,tag=exploraycast4] positioned 0 0 0 rotated as @e[type=marker,tag=exploarrow_rotation4,limit=1,distance=..2] run rotate @s ~ 0


scoreboard players set @e[type=marker,tag=exploraycast4] explo_position_a 0

execute as @e[type=marker,tag=exploraycast4_1,limit=1,sort=nearest] rotated as @s rotated ~ 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_2,limit=1,sort=nearest] rotated as @s rotated ~-10 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_3,limit=1,sort=nearest] rotated as @s rotated ~-20 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_4,limit=1,sort=nearest] rotated as @s rotated ~10 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_5,limit=1,sort=nearest] rotated as @s rotated ~20 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red

execute as @e[type=marker,tag=exploraycast4_6,limit=1,sort=nearest] rotated as @s rotated ~ 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_7,limit=1,sort=nearest] rotated as @s rotated ~-10 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_8,limit=1,sort=nearest] rotated as @s rotated ~-20 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_9,limit=1,sort=nearest] rotated as @s rotated ~10 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_10,limit=1,sort=nearest] rotated as @s rotated ~20 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red

execute as @e[type=marker,tag=exploraycast4_11,limit=1,sort=nearest] rotated as @s rotated ~ 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_12,limit=1,sort=nearest] rotated as @s rotated ~-10 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_13,limit=1,sort=nearest] rotated as @s rotated ~-20 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_14,limit=1,sort=nearest] rotated as @s rotated ~10 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_15,limit=1,sort=nearest] rotated as @s rotated ~20 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red

execute as @e[type=marker,tag=exploraycast4_16,limit=1,sort=nearest] rotated as @s rotated ~ 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_17,limit=1,sort=nearest] rotated as @s rotated ~-10 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_18,limit=1,sort=nearest] rotated as @s rotated ~-20 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_19,limit=1,sort=nearest] rotated as @s rotated ~10 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_20,limit=1,sort=nearest] rotated as @s rotated ~20 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red

execute as @e[type=marker,tag=exploraycast4_21,limit=1,sort=nearest] rotated as @s rotated ~ 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_22,limit=1,sort=nearest] rotated as @s rotated ~-10 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_23,limit=1,sort=nearest] rotated as @s rotated ~-20 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_24,limit=1,sort=nearest] rotated as @s rotated ~10 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_25,limit=1,sort=nearest] rotated as @s rotated ~20 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red

execute as @e[type=marker,tag=exploraycast4_26,limit=1,sort=nearest] rotated as @s rotated ~ -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_27,limit=1,sort=nearest] rotated as @s rotated ~-10 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_28,limit=1,sort=nearest] rotated as @s rotated ~-20 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_29,limit=1,sort=nearest] rotated as @s rotated ~10 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_30,limit=1,sort=nearest] rotated as @s rotated ~20 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red

execute as @e[type=marker,tag=exploraycast4_31,limit=1,sort=nearest] rotated as @s rotated ~ -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_32,limit=1,sort=nearest] rotated as @s rotated ~-10 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_33,limit=1,sort=nearest] rotated as @s rotated ~-20 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_34,limit=1,sort=nearest] rotated as @s rotated ~10 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_35,limit=1,sort=nearest] rotated as @s rotated ~20 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red

execute as @e[type=marker,tag=exploraycast4_36,limit=1,sort=nearest] rotated as @s rotated ~ -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_37,limit=1,sort=nearest] rotated as @s rotated ~-10 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_38,limit=1,sort=nearest] rotated as @s rotated ~-20 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_39,limit=1,sort=nearest] rotated as @s rotated ~10 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_40,limit=1,sort=nearest] rotated as @s rotated ~20 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red

execute as @e[type=marker,tag=exploraycast4_41,limit=1,sort=nearest] rotated as @s rotated ~ -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_42,limit=1,sort=nearest] rotated as @s rotated ~-10 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_43,limit=1,sort=nearest] rotated as @s rotated ~-20 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_44,limit=1,sort=nearest] rotated as @s rotated ~10 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red
execute as @e[type=marker,tag=exploraycast4_45,limit=1,sort=nearest] rotated as @s rotated ~20 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/dark_red




scoreboard players set @s explosive_arrow_timer -1
bossbar set explosive_arrow:player4 players

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

scoreboard players reset @e[type=#spellable,scores={hit_by_explo=4}] hit_by_explo
# clear toutes les cibles de cette flèche explo

kill @e[type=text_display,tag=explo_player_timer4,limit=1]
execute as @s[type=arrow] run function spells:arrow_detection/clear_ground_arrow

schedule function spells:spellsystem/spell1/spell1_a/arrow_hitted/player4 1t