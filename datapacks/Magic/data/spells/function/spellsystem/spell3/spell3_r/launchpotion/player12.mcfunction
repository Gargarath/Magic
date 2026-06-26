## appelée par usespell3lvl1_r quand @s lance sa bombe d'ombre
# permet de lancer la bombe d'ombre de @s


execute anchored eyes positioned 0.0 0 0.0 run summon marker ^ ^ ^0.45 {Tags:["direction_player12_r"]}

execute rotated as @s run summon lingering_potion ~ ~1 ~ {Motion:[0.0,0.0,0.0],Tags:["launched_potion"],Item:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:custom_data":{smoke_bomb_player12:1b},"minecraft:potion_contents":{custom_color:0}}}}
data modify entity @e[type=lingering_potion,nbt={Item:{components:{"minecraft:custom_data":{smoke_bomb_player12:1b}}}},limit=1] Motion set from entity @e[type=marker,tag=direction_player12_r,limit=1] Pos
data modify entity @e[type=lingering_potion,nbt={Item:{components:{"minecraft:custom_data":{smoke_bomb_player12:1b}}}},limit=1,sort=nearest] Motion[1] set value 0.3d
# donne un x et z en motion en fonction de la rotation de @s et force la motion Y pour 0,5

kill @e[type=marker,tag=direction_player12_r]



scoreboard players set player12 has_smoke_potion 1
# permet au systeme de traquer où va la bombe d'ombre de @s