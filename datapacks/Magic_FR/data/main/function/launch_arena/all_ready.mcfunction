# Appellée par shop:loop permet de lancer la game quand tout le monde est prêt

scoreboard players set @a InShop 0
scoreboard players set @a is_ready 0

execute as @a[scores={blue_place=1..}] run function main:stats/scoreboard/blue_team_info/overlays/no_overlay_icon/check_place
execute as @a[scores={red_place=1..}] run function main:stats/scoreboard/red_team_info/overlays/no_overlay_icon/check_place
# clear les overlays top bar de tous (connectés)

scoreboard players set @a IsAlive 0
# reset les morts si il y en a eu dans les lobby

tag @a[scores={Player=1..}] add in_countdown
# indique que les joueurs sont en attente (pour éviter qu'ils utilisent leurs raccourcis de sorts)

scoreboard players set shop enable_loop 0
scoreboard players set ctf enable_loop 1
scoreboard players set spells enable_loop 1
schedule clear shop:shop_timer

# Desactive le datapack SHOP et active le datapack CTF
scoreboard players set @a usespell 0

scoreboard players set @a spec_player1 0
scoreboard players set @a spec_player2 0
scoreboard players set @a spec_player3 0
scoreboard players set @a spec_player4 0
scoreboard players set @a spec_player5 0
scoreboard players set @a spec_player6 0
scoreboard players set @a spec_player7 0
scoreboard players set @a spec_player8 0
scoreboard players set @a spec_player9 0
scoreboard players set @a spec_player10 0
scoreboard players set @a spec_player11 0
scoreboard players set @a spec_player12 0
tellraw @a[tag=spec_room1] ["",{"text":"\nVous avez arrêté d'observer.","italic":true,"color":"gray"}]
tellraw @a[tag=spec_room2] ["",{"text":"\nVous avez arrêté d'observer.","italic":true,"color":"gray"}]
tellraw @a[tag=spec_room3] ["",{"text":"\nVous avez arrêté d'observer.","italic":true,"color":"gray"}]
tellraw @a[tag=spec_room4] ["",{"text":"\nVous avez arrêté d'observer.","italic":true,"color":"gray"}]
tellraw @a[tag=spec_room5] ["",{"text":"\nVous avez arrêté d'observer.","italic":true,"color":"gray"}]
tellraw @a[tag=spec_room6] ["",{"text":"\nVous avez arrêté d'observer.","italic":true,"color":"gray"}]
tellraw @a[tag=spec_room7] ["",{"text":"\nVous avez arrêté d'observer.","italic":true,"color":"gray"}]
tellraw @a[tag=spec_room8] ["",{"text":"\nVous avez arrêté d'observer.","italic":true,"color":"gray"}]
tellraw @a[tag=spec_room9] ["",{"text":"\nVous avez arrêté d'observer.","italic":true,"color":"gray"}]
tellraw @a[tag=spec_room10] ["",{"text":"\nVous avez arrêté d'observer.","italic":true,"color":"gray"}]
tellraw @a[tag=spec_room11] ["",{"text":"\nVous avez arrêté d'observer.","italic":true,"color":"gray"}]
tellraw @a[tag=spec_room12] ["",{"text":"\nVous avez arrêté d'observer.","italic":true,"color":"gray"}]
tag @a remove spec_room1
tag @a remove spec_room2
tag @a remove spec_room3
tag @a remove spec_room4
tag @a remove spec_room5
tag @a remove spec_room6
tag @a remove spec_room7
tag @a remove spec_room8
tag @a remove spec_room9
tag @a remove spec_room10
tag @a remove spec_room11
tag @a remove spec_room12
# permet de reset les spectateur en spec dans le shop


team join red @a[team=ready_red]
team join red @a[team=non_ready_red]
effect clear @a[scores={Player=1..}] minecraft:resistance
execute as @a run function main:fix_health/clear_and_fix_health
# reset la vie des joueurs et empêche aussi de check leur inventaire
team join blue @a[team=ready_blue]
team join blue @a[team=non_ready_blue]

clear @a[scores={Player=1..}]
item replace entity @a[scores={Player=1..}] weapon.offhand from block 13 97 11 container.2
item replace entity @a[scores={Player=1..}] armor.head from block 13 97 11 container.2
tag @a[scores={Player=1..}] add save_inventory

effect give @a[scores={Player=1..}] minecraft:invisibility infinite 0 true

execute as @a run attribute @s minecraft:entity_interaction_range base set 3
# redonne la portée d'interaction d'entité de base à tous
execute as @a run attribute @s minecraft:block_interaction_range base set 4.5
# reset la portée d'interaction de block de base à tous (utilisé dans le shop pour les panneaux du shop)

team modify red seeFriendlyInvisibles false
team modify blue seeFriendlyInvisibles false
team modify red collisionRule never
team modify blue collisionRule never
team modify red nametagVisibility never
team modify blue nametagVisibility never

scoreboard players reset @a ready_sign
scoreboard players reset @a reset_frameroom
scoreboard players reset @a spec_player1
scoreboard players reset @a spec_player2
scoreboard players reset @a spec_player3
scoreboard players reset @a spec_player4
scoreboard players reset @a spec_player5
scoreboard players reset @a spec_player6
scoreboard players reset @a spec_player7
scoreboard players reset @a spec_player8
scoreboard players reset @a spec_player9
scoreboard players reset @a spec_player10
scoreboard players reset @a spec_player11
scoreboard players reset @a spec_player12
scoreboard players reset @a spec_stop
# reset les trigger de tous


kill @e[type=item_frame,tag=weapon1]
kill @e[type=item_frame,tag=chest]
kill @e[type=item_frame,tag=legs]
kill @e[type=item_frame,tag=boots]
kill @e[type=item_frame,tag=spell1]
kill @e[type=item_frame,tag=spell2]
kill @e[type=item_frame,tag=spell3]
# supprime les items frames
execute at @e[tag=room] positioned ~ ~10 ~ run clone 19 95 17 21 96 19 ~-1 ~ ~-1
# remet les barrier blocs dans les salles d'achat

fill 2 -47 61 -2 -50 61 air replace minecraft:oak_wall_sign
# enleve les panneaux au mur dans la room spectateur
setblock 4 -49 58 oak_wall_sign[facing=west]{front_text:{messages:["",{"text":"Chargement","color":"black","bold":true},{"text":"en cours...","color":"black","bold":true},""]},is_waxed:1b} replace
# remplace le panneau de gauche par un panneau chargement dans la room spectateur
setblock 0 -49 61 oak_wall_sign[facing=north]{front_text:{messages:["",{"text":"Chargement","color":"black","bold":true},{"text":"en cours...","color":"black","bold":true},""]},is_waxed:1b} replace
# remet un panneau de chargement sur le mur de la room spectateur

setblock -4 14 56 air
setblock -4 -50 57 minecraft:lever[facing=south,powered=false]
# reset le levier de particule de la salle des spectateurs


execute at @e[tag=room] positioned ~ ~9 ~ run data merge block ~4 ~1 ~ {Text1:"",Text2:'{"text":"Chargement","bold":true}',Text3:'{"text":" \\u0020en cours...","bold":true}',Text4:""}
execute at @e[tag=room] positioned ~ ~9 ~ run data merge block ~ ~3 ~4 {Text1:"",Text2:'{"text":"Chargement","bold":true}',Text3:'{"text":" \\u0020en cours...","bold":true}',Text4:""}
execute at @e[tag=room] positioned ~ ~9 ~ run data merge block ~-4 ~1 ~ {Text1:"",Text2:'{"text":"Chargement","bold":true}',Text3:'{"text":" \\u0020en cours...","bold":true}',Text4:""}
# remplace les panneaux de chaque room par des panneaux chargement


scoreboard players add round bossbar 1
# Augmente le round de 1

execute unless score round bossbar matches 4 run scoreboard players set $time timers 300
execute unless score round bossbar matches 4 run data modify storage minecraft:matchinfo time.minutes set value {"text":"5","color":"green"}
execute unless score round bossbar matches 4 run data modify storage minecraft:matchinfo time.colon set value {"text":":","color":"green"}
execute unless score round bossbar matches 4 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"0","color":"green"}
execute unless score round bossbar matches 4 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"0","color":"green"}
# Definit le chronometre sur 5mins et l'affiche


execute if score round bossbar matches 4 run scoreboard players set $time timers 180

execute if score round bossbar matches 4 run data modify storage minecraft:matchinfo time.minutes set value {"text":"3","color":"red"}
execute if score round bossbar matches 4 run data modify storage minecraft:matchinfo time.colon set value {"text":":","color":"red"}
execute if score round bossbar matches 4 run data modify storage minecraft:matchinfo time.seconds.1 set value {"text":"0","color":"red"}
execute if score round bossbar matches 4 run data modify storage minecraft:matchinfo time.seconds.2 set value {"text":"0","color":"red"}
# Definit le chronometre sur 3min et l'affiche si on est au round 4 (=prolongations)

data modify storage minecraft:matchinfo.blue flag_state set value "\uE301"
data modify storage minecraft:matchinfo.red flag_state set value "\uE304"
# affiche l'état des drapeaux

title @a clear
scoreboard players set @a nopack_detection -1

bossbar set minecraft:secondary_objective name {"text":"???","color":"gold"}
bossbar set minecraft:secondary_objective value 0
bossbar set minecraft:secondary_objective color yellow
scoreboard players set time time_to_obj 0
bossbar set minecraft:secondary_objective max 60
scoreboard players set max_time time_to_obj 60
# Affiche la bossbar objectif secondaire et prépare le crono

gamemode spectator @a[scores={Player=-1}]

execute if score selected_map variables matches 1 run function main:launch_arena/launch_map_pirate
execute if score selected_map variables matches 2 run function main:launch_arena/launch_map_graveyard
execute if score selected_map variables matches 3 run function main:launch_arena/launch_map_factory
execute if score selected_map variables matches 4 run function main:launch_arena/launch_map_volcano
execute if score selected_map variables matches 5 run function main:launch_arena/launch_map_ruin
execute if score selected_map variables matches 6 run function main:launch_arena/launch_map_candyworld

scoreboard players set $enable_game_countdown timers 1
# indique à ctf:loop que quand il est chargé il pourra lancer le countdown