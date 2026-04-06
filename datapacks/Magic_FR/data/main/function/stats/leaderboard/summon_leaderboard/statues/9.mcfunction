## appelée par summon_leaderboard si il y a eu assez de joueur dans le classement pour invoquer la position
# invoque la statue da la position en question

summon mannequin ~ ~ ~ {Rotation:[180F,0F],NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,immovable:true,hide_description:true,Tags:["leaderboard","leaderboard9","leaderboard_place9"],attributes:[{id:"minecraft:scale",base:0.6}],hidden_layers:["cape"]}
# invoque la statue

execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~1.9 ~ {background:16777215,shadow:1b,billboard:"vertical",Tags:["leaderboard","leaderboard9","leaderboard9_title"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},text:{"bold":true,"color":"gray","text":"9ème place"}}
execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~1.7 ~ {background:16777215,shadow:1b,billboard:"vertical",Tags:["leaderboard","leaderboard9","leaderboard9_class"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~1.5 ~ {background:16777215,shadow:1b,billboard:"vertical",Tags:["leaderboard","leaderboard9","leaderboard9_name"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~1.3 ~ {background:16777215,shadow:1b,billboard:"vertical",Tags:["leaderboard","leaderboard9","leaderboard9_score"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
# invoque les textes au dessus de la statue