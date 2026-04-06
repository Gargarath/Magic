## appelée par summon_leaderboard si il y a eu assez de joueur dans le classement pour invoquer la position
# invoque la statue da la position en question

summon mannequin ~ ~ ~ {Rotation:[180F,0F],NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,immovable:true,hide_description:true,Tags:["leaderboard","leaderboard1","leaderboard_place1"],attributes:[{id:"minecraft:scale",base:1.0}],hidden_layers:["cape"]}
# invoque la statue

execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~2.6 ~ {background:16777215,shadow:1b,billboard:"vertical",Tags:["leaderboard","leaderboard1","leaderboard1_title"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},text:{"bold":true,"color":"yellow","text":"1ère place"}}
execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~2.4 ~ {background:16777215,shadow:1b,billboard:"vertical",Tags:["leaderboard","leaderboard1","leaderboard1_class"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]}}
execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~2.2 ~ {background:16777215,shadow:1b,billboard:"vertical",Tags:["leaderboard","leaderboard1","leaderboard1_name"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]}}
execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~2.0 ~ {background:16777215,shadow:1b,billboard:"vertical",Tags:["leaderboard","leaderboard1","leaderboard1_score"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]}}
# invoque les textes au dessus de la statue