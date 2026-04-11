## appelée par shop:loop lorsqu'on lance le système de shop (début de game / fin de manche)
## permet de setup le shop

scoreboard players set shop is_working 1
# met le score is_working du joueur shop à 1 pour éviter que cette fonction soit appelée en boucle

## RESET ACHATS
execute if score $build_reset option_panel matches 1 as @a[scores={Player=1..12}] run function shop:save_achats
# si l'option de reset d'achat est sur round only -> save les achats de @s
execute if score $build_reset option_panel matches 2 if score round bossbar matches 0 as @a[scores={Player=1..12}] run function shop:save_achats
# si l'option de reset d'achat est sur toujours et qu'on est premiere manche -> save les achats de @s

#execute as @a[scores={Player=1..12}] at @s run function main:reset/resetframeroom
#reset les frameroom
execute if score $build_reset option_panel matches 0 at @a[scores={Player=1..12}] at @e[distance=..10,type=marker,tag=shop_room] run data merge block ~-4 ~1 ~ {front_text:{messages:[{"text":"Réinitialisation","color":"white","bold":false,"italic":true,"click_event":{"action":"run_command","command":"/trigger reset_frameroom"}},{"text":"des achats","color":"white","bold":false,"italic":true},{"text":"désactivée.","color":"white","bold":false,"italic":true},""]}}
execute if score $build_reset option_panel matches 1 at @a[scores={Player=1..12}] at @e[distance=..10,type=marker,tag=shop_room] run data merge block ~-4 ~1 ~ {front_text:{messages:[{"text":"[Réinitialiser","color":"gold","bold":false,"italic":true,"click_event":{"action":"run_command","command":"/trigger reset_frameroom"}},{"text":"les achats","color":"gold","bold":false,"italic":true},{"text":"de la manche]","color":"gold","bold":false,"italic":true},""]}}
execute if score $build_reset option_panel matches 2 at @a[scores={Player=1..12}] at @e[distance=..10,type=marker,tag=shop_room] run data merge block ~-4 ~1 ~ {front_text:{messages:["",{"text":"[Réinitialiser","color":"gold","bold":false,"italic":true,"click_event":{"action":"run_command","command":"/trigger reset_frameroom"}},{"text":"les achats]","color":"gold","bold":false,"italic":true},""]}}

scoreboard players enable @a[scores={Player=1..}] ready_sign
# Permet de rendre le panneau ready_sign cliquable pour tous

scoreboard players enable @a[scores={Player=1..}] reset_frameroom
# Permet de rendre le panneau reset_frameroon cliquable pour tous

execute at @a[scores={Player=1..}] run fill ~-1 ~1 ~-1 ~1 ~2 ~1 air replace minecraft:barrier
# enlève les barrier blocs autour des joueurs

fill 2 -47 61 -2 -50 61 air replace minecraft:oak_wall_sign
# clear le mur des spectateurs

function shop:refresh_spec_ready_sign
# affiche le nombre de joueurs prêt sur le panneau spec

scoreboard players set @a weapon1_mana_m 100
execute as @a[tag=mage,scores={weapon1=1..}] run function spells:spellsystem/weapon1_m/refresh_timer/100
# remet les barres de mana a fond


execute if score $gamemode option_panel matches 1 run data modify storage minecraft:matchinfo.blue flag_state set value "\uE709"
execute if score $gamemode option_panel matches 1 run data modify storage minecraft:matchinfo.red flag_state set value "\uE709"
# masque l'état des drapeaux si on est en CTF

execute if score player_atstart playercount matches 1 run function shop:spectator_room_sign_wall/1player
execute if score player_atstart playercount matches 2 run function shop:spectator_room_sign_wall/2players
execute if score player_atstart playercount matches 3 run function shop:spectator_room_sign_wall/3players
execute if score player_atstart playercount matches 4 run function shop:spectator_room_sign_wall/4players
execute if score player_atstart playercount matches 5 run function shop:spectator_room_sign_wall/5players
execute if score player_atstart playercount matches 6 run function shop:spectator_room_sign_wall/6players
execute if score player_atstart playercount matches 7 run function shop:spectator_room_sign_wall/7players
execute if score player_atstart playercount matches 8 run function shop:spectator_room_sign_wall/8players
execute if score player_atstart playercount matches 9 run function shop:spectator_room_sign_wall/9players
execute if score player_atstart playercount matches 10 run function shop:spectator_room_sign_wall/10players
execute if score player_atstart playercount matches 11 run function shop:spectator_room_sign_wall/11players
execute if score player_atstart playercount matches 12 run function shop:spectator_room_sign_wall/12players

execute if score $gamemode option_panel matches 1 if score $shop_timer option_panel matches -1 run function shop:shop_timer/shop_timer_infinite
execute if score $gamemode option_panel matches 1 unless score $shop_timer option_panel matches -1 run function shop:shop_timer/setup_timer
# si on est en CTF -> lance le timer si ça n'est pas désactivé dans les options