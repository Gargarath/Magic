## appelée par refresh_bossbar quand ça doit exploser
# permet de faire exploser la flèche

playsound minecraft:entity.generic.explode master @a[distance=..15] ~ ~ ~ 100 1
playsound minecraft:entity.generic.explode master @a[distance=16..,scores={Player=9}] ~ ~ ~ 100 1
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_1"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_2"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_3"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_4"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_5"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_6"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_7"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_8"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_9"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_10"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_11"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_12"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_13"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_14"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_15"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_16"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_17"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_18"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_19"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_20"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_21"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_22"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_23"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_24"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_25"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_26"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_27"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_28"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_29"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_30"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_31"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_32"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_33"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_34"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_35"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_36"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_37"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_38"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_39"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_40"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_41"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_42"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_43"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_44"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_45"]}


execute as @e[type=marker,tag=exploraycast9] positioned 0 0 0 rotated as @e[type=marker,tag=exploarrow_rotation9,limit=1,distance=..2] run rotate @s ~ 0


scoreboard players set @e[type=marker,tag=exploraycast9] explo_position_a 0

execute as @e[type=marker,tag=exploraycast9_1,limit=1,sort=nearest] rotated as @s rotated ~ 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_2,limit=1,sort=nearest] rotated as @s rotated ~-10 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_3,limit=1,sort=nearest] rotated as @s rotated ~-20 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_4,limit=1,sort=nearest] rotated as @s rotated ~10 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_5,limit=1,sort=nearest] rotated as @s rotated ~20 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red

execute as @e[type=marker,tag=exploraycast9_6,limit=1,sort=nearest] rotated as @s rotated ~ 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_7,limit=1,sort=nearest] rotated as @s rotated ~-10 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_8,limit=1,sort=nearest] rotated as @s rotated ~-20 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_9,limit=1,sort=nearest] rotated as @s rotated ~10 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_10,limit=1,sort=nearest] rotated as @s rotated ~20 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red

execute as @e[type=marker,tag=exploraycast9_11,limit=1,sort=nearest] rotated as @s rotated ~ 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_12,limit=1,sort=nearest] rotated as @s rotated ~-10 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_13,limit=1,sort=nearest] rotated as @s rotated ~-20 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_14,limit=1,sort=nearest] rotated as @s rotated ~10 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_15,limit=1,sort=nearest] rotated as @s rotated ~20 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red

execute as @e[type=marker,tag=exploraycast9_16,limit=1,sort=nearest] rotated as @s rotated ~ 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_17,limit=1,sort=nearest] rotated as @s rotated ~-10 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_18,limit=1,sort=nearest] rotated as @s rotated ~-20 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_19,limit=1,sort=nearest] rotated as @s rotated ~10 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_20,limit=1,sort=nearest] rotated as @s rotated ~20 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red

execute as @e[type=marker,tag=exploraycast9_21,limit=1,sort=nearest] rotated as @s rotated ~ 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_22,limit=1,sort=nearest] rotated as @s rotated ~-10 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_23,limit=1,sort=nearest] rotated as @s rotated ~-20 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_24,limit=1,sort=nearest] rotated as @s rotated ~10 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_25,limit=1,sort=nearest] rotated as @s rotated ~20 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red

execute as @e[type=marker,tag=exploraycast9_26,limit=1,sort=nearest] rotated as @s rotated ~ -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_27,limit=1,sort=nearest] rotated as @s rotated ~-10 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_28,limit=1,sort=nearest] rotated as @s rotated ~-20 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_29,limit=1,sort=nearest] rotated as @s rotated ~10 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_30,limit=1,sort=nearest] rotated as @s rotated ~20 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red

execute as @e[type=marker,tag=exploraycast9_31,limit=1,sort=nearest] rotated as @s rotated ~ -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_32,limit=1,sort=nearest] rotated as @s rotated ~-10 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_33,limit=1,sort=nearest] rotated as @s rotated ~-20 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_34,limit=1,sort=nearest] rotated as @s rotated ~10 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_35,limit=1,sort=nearest] rotated as @s rotated ~20 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red

execute as @e[type=marker,tag=exploraycast9_36,limit=1,sort=nearest] rotated as @s rotated ~ -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_37,limit=1,sort=nearest] rotated as @s rotated ~-10 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_38,limit=1,sort=nearest] rotated as @s rotated ~-20 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_39,limit=1,sort=nearest] rotated as @s rotated ~10 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_40,limit=1,sort=nearest] rotated as @s rotated ~20 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red

execute as @e[type=marker,tag=exploraycast9_41,limit=1,sort=nearest] rotated as @s rotated ~ -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_42,limit=1,sort=nearest] rotated as @s rotated ~-10 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_43,limit=1,sort=nearest] rotated as @s rotated ~-20 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_44,limit=1,sort=nearest] rotated as @s rotated ~10 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red
execute as @e[type=marker,tag=exploraycast9_45,limit=1,sort=nearest] rotated as @s rotated ~20 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/dark_red




scoreboard players set @s explosive_arrow_timer -1
bossbar set explosive_arrow:player9 players

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

scoreboard players reset @e[type=#spellable,scores={hit_by_explo=9}] hit_by_explo
# clear toutes les cibles de cette flèche explo

kill @e[type=text_display,tag=explo_player_timer9,limit=1]
execute as @s[type=arrow] run function spells:arrow_detection/clear_ground_arrow

schedule function spells:spellsystem/spell1/spell1_a/arrow_hitted/player9 1t