## appelée par summon_leaderboard si il y a eu assez de joueur dans le classement pour invoquer la position
# invoque la statue da la position en question

summon mannequin ~ ~ ~ {Rotation:[180F,0F],main_hand:"left",NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,immovable:true,hide_description:true,Tags:["leaderboard","leaderboard_place_objectives_player"],attributes:[{id:"minecraft:scale",base:2.3}],hidden_layers:["cape"]}
# invoque la statue

$execute if data storage minecraft:matchinfo {last_game_gamemode:0b} as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~5.5 ~-0.5 {background:16777215,shadow:1b,billboard:"vertical",Tags:["leaderboard","leaderboard_objectives_player_title"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.0f,2.0f,2.0f]},text:{"bold":true,"color":"yellow","text":"$(tr_stats_money_player)"}}
$execute if data storage minecraft:matchinfo {last_game_gamemode:1b} as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~5.5 ~-0.5 {background:16777215,shadow:1b,billboard:"vertical",Tags:["leaderboard","leaderboard_objectives_player_title"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.0f,2.0f,2.0f]},text:{"bold":true,"color":"aqua","text":"$(tr_stats_objectives_player)"}}
execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~5.1 ~-0.5 {background:16777215,shadow:1b,billboard:"vertical",Tags:["leaderboard","leaderboard_objectives_player_class"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]}}
execute as @e[type=minecraft:mannequin,limit=1,distance=..1] at @s run summon text_display ~ ~4.7 ~-0.5 {background:16777215,shadow:1b,billboard:"vertical",Tags:["leaderboard","leaderboard_objectives_player_name"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]}}
# invoque les textes au dessus de la statue
