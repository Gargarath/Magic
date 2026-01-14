## appelée par summon_leaderboard si il y a eu assez de joueur dans le classement pour invoquer la position
# invoque la statue da la position en question

summon mannequin ~ ~ ~ {Rotation:[180F,0F],NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,immovable:true,hide_description:true,Tags:["leaderboard","leaderboard_place_mvp"],attributes:[{id:"minecraft:scale",base:2.3}],hidden_layers:["cape"]}
summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,powered:1b,Rotation:[180F,0F],Tags:["leaderboard","leaderboard_place_mvp"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:scale",base:2.4}]}
# invoque la statue

execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~5.5 ~-0.5 {background:16777215,shadow:1b,billboard:"vertical",Tags:["leaderboard","leaderboard_mvp_title"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f]},text:{"bold":true,"color":"gold","text":"MVP"}}
execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~5.1 ~-0.5 {background:16777215,shadow:1b,billboard:"vertical",Tags:["leaderboard","leaderboard_mvp_class"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]}}
execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~4.7 ~-0.5 {background:16777215,shadow:1b,billboard:"vertical",Tags:["leaderboard","leaderboard_mvp_name"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]}}
# invoque les textes au dessus de la statue