## appelée par summon_leaderboard si il y a eu assez de joueur dans le classement pour invoquer la position
# invoque la statue da la position en question

summon mannequin ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,immovable:true,hide_description:true,Tags:["leaderboard","leaderboard_place7"],attributes:[{id:"minecraft:scale",base:0.5}],hidden_layers:["cape"]}
# invoque la statue

execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~1.55 ~ {background:-263237809,billboard:"vertical",Tags:["leaderboard","leaderboard7_title"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:{"bold":true,"color":"dark_green","text":"7ème place"}}
execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~1.4 ~ {background:-263237809,billboard:"vertical",Tags:["leaderboard","leaderboard7_class"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~1.25 ~ {background:-263237809,billboard:"vertical",Tags:["leaderboard","leaderboard7_name"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~1.1 ~ {background:-263237809,billboard:"vertical",Tags:["leaderboard","leaderboard7_score"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
# invoque les textes au dessus de la statue