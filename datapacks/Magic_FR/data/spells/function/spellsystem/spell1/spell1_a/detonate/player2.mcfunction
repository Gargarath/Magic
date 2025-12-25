## appelée par refresh_bossbar quand ça doit exploser
# permet de faire exploser la flèche

playsound minecraft:entity.generic.explode master @a[distance=..15] ~ ~ ~ 100 1
playsound minecraft:entity.generic.explode master @a[distance=16..,scores={Player=2}] ~ ~ ~ 100 1
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_1"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_2"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_3"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_4"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_5"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_6"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_7"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_8"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_9"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_10"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_11"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_12"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_13"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_14"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_15"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_16"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_17"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_18"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_19"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_20"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_21"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_22"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_23"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_24"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_25"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_26"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_27"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_28"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_29"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_30"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_31"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_32"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_33"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_34"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_35"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_36"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_37"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_38"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_39"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_40"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_41"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_42"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_43"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_44"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast2","exploraycast2_45"]}


execute as @e[type=marker,tag=exploraycast2] positioned 0 0 0 rotated as @e[type=marker,tag=exploarrow_rotation2,limit=1,distance=..2] run rotate @s ~ 0


scoreboard players set @e[type=marker,tag=exploraycast2] explo_position_a 0

execute as @e[type=marker,tag=exploraycast2_1,limit=1,sort=nearest] rotated as @s rotated ~ 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_2,limit=1,sort=nearest] rotated as @s rotated ~-10 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_3,limit=1,sort=nearest] rotated as @s rotated ~-20 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_4,limit=1,sort=nearest] rotated as @s rotated ~10 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_5,limit=1,sort=nearest] rotated as @s rotated ~20 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red

execute as @e[type=marker,tag=exploraycast2_6,limit=1,sort=nearest] rotated as @s rotated ~ 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_7,limit=1,sort=nearest] rotated as @s rotated ~-10 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_8,limit=1,sort=nearest] rotated as @s rotated ~-20 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_9,limit=1,sort=nearest] rotated as @s rotated ~10 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_10,limit=1,sort=nearest] rotated as @s rotated ~20 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red

execute as @e[type=marker,tag=exploraycast2_11,limit=1,sort=nearest] rotated as @s rotated ~ 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_12,limit=1,sort=nearest] rotated as @s rotated ~-10 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_13,limit=1,sort=nearest] rotated as @s rotated ~-20 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_14,limit=1,sort=nearest] rotated as @s rotated ~10 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_15,limit=1,sort=nearest] rotated as @s rotated ~20 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red

execute as @e[type=marker,tag=exploraycast2_16,limit=1,sort=nearest] rotated as @s rotated ~ 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_17,limit=1,sort=nearest] rotated as @s rotated ~-10 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_18,limit=1,sort=nearest] rotated as @s rotated ~-20 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_19,limit=1,sort=nearest] rotated as @s rotated ~10 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_20,limit=1,sort=nearest] rotated as @s rotated ~20 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red

execute as @e[type=marker,tag=exploraycast2_21,limit=1,sort=nearest] rotated as @s rotated ~ 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_22,limit=1,sort=nearest] rotated as @s rotated ~-10 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_23,limit=1,sort=nearest] rotated as @s rotated ~-20 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_24,limit=1,sort=nearest] rotated as @s rotated ~10 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_25,limit=1,sort=nearest] rotated as @s rotated ~20 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red

execute as @e[type=marker,tag=exploraycast2_26,limit=1,sort=nearest] rotated as @s rotated ~ -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_27,limit=1,sort=nearest] rotated as @s rotated ~-10 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_28,limit=1,sort=nearest] rotated as @s rotated ~-20 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_29,limit=1,sort=nearest] rotated as @s rotated ~10 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_30,limit=1,sort=nearest] rotated as @s rotated ~20 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red

execute as @e[type=marker,tag=exploraycast2_31,limit=1,sort=nearest] rotated as @s rotated ~ -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_32,limit=1,sort=nearest] rotated as @s rotated ~-10 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_33,limit=1,sort=nearest] rotated as @s rotated ~-20 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_34,limit=1,sort=nearest] rotated as @s rotated ~10 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_35,limit=1,sort=nearest] rotated as @s rotated ~20 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red

execute as @e[type=marker,tag=exploraycast2_36,limit=1,sort=nearest] rotated as @s rotated ~ -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_37,limit=1,sort=nearest] rotated as @s rotated ~-10 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_38,limit=1,sort=nearest] rotated as @s rotated ~-20 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_39,limit=1,sort=nearest] rotated as @s rotated ~10 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_40,limit=1,sort=nearest] rotated as @s rotated ~20 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red

execute as @e[type=marker,tag=exploraycast2_41,limit=1,sort=nearest] rotated as @s rotated ~ -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_42,limit=1,sort=nearest] rotated as @s rotated ~-10 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_43,limit=1,sort=nearest] rotated as @s rotated ~-20 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_44,limit=1,sort=nearest] rotated as @s rotated ~10 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red
execute as @e[type=marker,tag=exploraycast2_45,limit=1,sort=nearest] rotated as @s rotated ~20 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player2/dark_red




scoreboard players set @s explosive_arrow_timer -1
bossbar set explosive_arrow:player2 players

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

scoreboard players reset @e[type=#spellable,scores={hit_by_explo=2}] hit_by_explo
# clear toutes les cibles de cette flèche explo

kill @e[type=text_display,tag=explo_player_timer2,limit=1]
execute as @s[type=arrow] run function spells:arrow_detection/clear_ground_arrow

schedule function spells:spellsystem/spell1/spell1_a/arrow_hitted/player2 1t