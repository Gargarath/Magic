## appelée par summon_leaderboard si il y a eu assez de joueur dans le classement pour invoquer la position
# invoque la statue da la position en question

summon mannequin ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,immovable:true,hide_description:true,Tags:["leaderboard","leaderboard_place2"],attributes:[{id:"minecraft:scale",base:0.8}],hidden_layers:["cape"]}
# invoque la statue

execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~2.4 ~ {billboard:"vertical",Tags:["leaderboard","leaderboard2_title"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},text:{"bold":true,"color":"yellow","text":"2ème place"}}
execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~2.2 ~ {billboard:"vertical",Tags:["leaderboard","leaderboard2_class"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]}}
execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~2.0 ~ {billboard:"vertical",Tags:["leaderboard","leaderboard2_name"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]}}
execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~1.8 ~ {billboard:"vertical",Tags:["leaderboard","leaderboard2_score"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]}}
# invoque les textes au dessus de la statue