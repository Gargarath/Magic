## appelée par refresh_bossbar quand ça doit exploser
# permet de faire exploser la flèche

playsound minecraft:entity.generic.explode master @a[distance=..15] ~ ~ ~ 100 1
playsound minecraft:entity.generic.explode master @a[distance=16..,scores={Player=12}] ~ ~ ~ 100 1
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_1"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_2"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_3"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_4"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_5"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_6"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_7"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_8"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_9"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_10"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_11"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_12"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_13"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_14"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_15"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_16"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_17"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_18"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_19"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_20"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_21"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_22"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_23"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_24"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_25"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_26"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_27"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_28"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_29"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_30"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_31"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_32"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_33"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_34"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_35"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_36"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_37"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_38"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_39"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_40"]}

summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_41"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_42"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_43"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_44"]}
summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_45"]}


execute as @e[type=marker,tag=exploraycast12] positioned 0 0 0 rotated as @e[type=marker,tag=exploarrow_rotation12,limit=1,distance=..2] run rotate @s ~ 0


scoreboard players set @e[type=marker,tag=exploraycast12] explo_position_a 0

execute as @e[type=marker,tag=exploraycast12_1,limit=1,sort=nearest] rotated as @s rotated ~ 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_2,limit=1,sort=nearest] rotated as @s rotated ~-10 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_3,limit=1,sort=nearest] rotated as @s rotated ~-20 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_4,limit=1,sort=nearest] rotated as @s rotated ~10 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_5,limit=1,sort=nearest] rotated as @s rotated ~20 0 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red

execute as @e[type=marker,tag=exploraycast12_6,limit=1,sort=nearest] rotated as @s rotated ~ 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_7,limit=1,sort=nearest] rotated as @s rotated ~-10 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_8,limit=1,sort=nearest] rotated as @s rotated ~-20 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_9,limit=1,sort=nearest] rotated as @s rotated ~10 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_10,limit=1,sort=nearest] rotated as @s rotated ~20 10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red

execute as @e[type=marker,tag=exploraycast12_11,limit=1,sort=nearest] rotated as @s rotated ~ 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_12,limit=1,sort=nearest] rotated as @s rotated ~-10 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_13,limit=1,sort=nearest] rotated as @s rotated ~-20 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_14,limit=1,sort=nearest] rotated as @s rotated ~10 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_15,limit=1,sort=nearest] rotated as @s rotated ~20 20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red

execute as @e[type=marker,tag=exploraycast12_16,limit=1,sort=nearest] rotated as @s rotated ~ 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_17,limit=1,sort=nearest] rotated as @s rotated ~-10 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_18,limit=1,sort=nearest] rotated as @s rotated ~-20 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_19,limit=1,sort=nearest] rotated as @s rotated ~10 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_20,limit=1,sort=nearest] rotated as @s rotated ~20 30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red

execute as @e[type=marker,tag=exploraycast12_21,limit=1,sort=nearest] rotated as @s rotated ~ 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_22,limit=1,sort=nearest] rotated as @s rotated ~-10 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_23,limit=1,sort=nearest] rotated as @s rotated ~-20 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_24,limit=1,sort=nearest] rotated as @s rotated ~10 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_25,limit=1,sort=nearest] rotated as @s rotated ~20 40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red

execute as @e[type=marker,tag=exploraycast12_26,limit=1,sort=nearest] rotated as @s rotated ~ -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_27,limit=1,sort=nearest] rotated as @s rotated ~-10 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_28,limit=1,sort=nearest] rotated as @s rotated ~-20 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_29,limit=1,sort=nearest] rotated as @s rotated ~10 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_30,limit=1,sort=nearest] rotated as @s rotated ~20 -10 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red

execute as @e[type=marker,tag=exploraycast12_31,limit=1,sort=nearest] rotated as @s rotated ~ -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_32,limit=1,sort=nearest] rotated as @s rotated ~-10 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_33,limit=1,sort=nearest] rotated as @s rotated ~-20 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_34,limit=1,sort=nearest] rotated as @s rotated ~10 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_35,limit=1,sort=nearest] rotated as @s rotated ~20 -20 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red

execute as @e[type=marker,tag=exploraycast12_36,limit=1,sort=nearest] rotated as @s rotated ~ -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_37,limit=1,sort=nearest] rotated as @s rotated ~-10 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_38,limit=1,sort=nearest] rotated as @s rotated ~-20 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_39,limit=1,sort=nearest] rotated as @s rotated ~10 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_40,limit=1,sort=nearest] rotated as @s rotated ~20 -30 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red

execute as @e[type=marker,tag=exploraycast12_41,limit=1,sort=nearest] rotated as @s rotated ~ -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_42,limit=1,sort=nearest] rotated as @s rotated ~-10 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_43,limit=1,sort=nearest] rotated as @s rotated ~-20 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_44,limit=1,sort=nearest] rotated as @s rotated ~10 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red
execute as @e[type=marker,tag=exploraycast12_45,limit=1,sort=nearest] rotated as @s rotated ~20 -40 positioned ^ ^ ^ positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/dark_red




scoreboard players set @s explosive_arrow_timer -1
bossbar set explosive_arrow:player12 players

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

scoreboard players reset @e[type=#spellable,scores={hit_by_explo=12}] hit_by_explo
# clear toutes les cibles de cette flèche explo

kill @e[type=text_display,tag=explo_player_timer12,limit=1]
execute as @s[type=arrow] run function spells:arrow_detection/clear_ground_arrow

schedule function spells:spellsystem/spell1/spell1_a/arrow_hitted/player12 1t