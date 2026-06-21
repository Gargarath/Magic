## appelee par shop:loop lorsqu'on lance le systeme de shop (debut de game / fin de manche)
## permet de setup le shop

scoreboard players set shop is_working 1
# met le score is_working du joueur shop a 1 pour eviter que cette fonction soit appelee en boucle

execute at @a[scores={Player=1..}] run fill ~-1 ~1 ~-1 ~1 ~2 ~1 air replace minecraft:barrier
# enleve les barrier blocs autour des joueurs

fill 2 -47 61 -2 -50 61 air replace minecraft:oak_wall_sign
# clear le mur des spectateurs

function shop:refresh_spec_ready_sign
# affiche le nombre de joueurs pret sur le panneau spec

scoreboard players set @a weapon1_mana_m 100
execute as @a[tag=mage,scores={weapon1=1..}] run function spells:spellsystem/weapon1_m/refresh_timer/100
# remet les barres de mana a fond

execute if score $gamemode option_panel matches 1 run data modify storage minecraft:matchinfo.blue flag_state set value {"text":"\uE709"}
execute if score $gamemode option_panel matches 1 run data modify storage minecraft:matchinfo.red flag_state set value {"text":"\uE709"}
# masque l'etat des drapeaux si on est en CTF

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
# si on est en CTF -> lance le timer si ca n'est pas desactive dans les options
