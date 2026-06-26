## appelée par summon_leaderboard si il y a eu assez de joueur dans le classement pour invoquer la position
# invoque la statue da la position en question

summon mannequin ~ ~ ~ {Rotation:[180F,0F],NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,immovable:true,hide_description:true,Tags:["leaderboard","leaderboard_place_deadliest_player"],attributes:[{id:"minecraft:scale",base:2.3}],hidden_layers:["cape"]}
# invoque la statue

$execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~5.5 ~-0.5 {background:16777215,shadow:1b,billboard:"vertical",Tags:["leaderboard","leaderboard_deadliest_player_title"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.0f,2.0f,2.0f]},text:{"bold":true,"color":"dark_red","text":"$(tr_stats_deadliest_player)"}}
execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~5.1 ~-0.5 {background:16777215,shadow:1b,billboard:"vertical",Tags:["leaderboard","leaderboard_deadliest_player_class"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]}}
execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~4.7 ~-0.5 {background:16777215,shadow:1b,billboard:"vertical",Tags:["leaderboard","leaderboard_deadliest_player_name"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]}}
# invoque les textes au dessus de la statue
