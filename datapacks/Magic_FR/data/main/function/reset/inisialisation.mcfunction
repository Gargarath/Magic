# Permet de reset totalement un joueur si on appelle cette fonction en son nom

tag @s add initialised
scoreboard players set @s InLobby 1
scoreboard players set @s InShop 0
scoreboard players set @s Player 0
scoreboard players set @s is_ready 0
scoreboard players set @s IsAlive 0
scoreboard players set @s save_flag_time 0
gamemode adventure @s[gamemode=!adventure]

scoreboard players set @s jump1_score_pr 1000000
scoreboard players set @s jump2_score_pr 1000000
scoreboard players set @s jump3_score_pr 1000000
# reset les temps de jump de @s
scoreboard players set @s jump1_tries 0
scoreboard players set @s jump2_tries 0
scoreboard players set @s jump3_tries 0
scoreboard players set @s jump1_fall 0
scoreboard players set @s jump2_fall 0
scoreboard players set @s jump3_fall 0
scoreboard players reset @s jump1_fall_pr
scoreboard players reset @s jump2_fall_pr
scoreboard players reset @s jump3_fall_pr
tag @s remove in_jump
tag @s remove jumping
# reset les tentatives de jump de @s

scoreboard players set @s out_of_fight 301
scoreboard players set @s in_fight 0
# initialise les stats de @s pour qu'il soit concidéré comme hors fight et ne déclanche pas de boucle de heal

scoreboard players set @s killfeed_died 0
scoreboard players set @s killfeed_died_checked 0
# initialisation pour le killfeed

scoreboard players set @s last_caster 0
# initialisation pour le calcul de dégats

scoreboard players set @s stat_victory 0
# reset les victoires

scoreboard players set @s in_water -1
# donne le score pour l'eau qui empoisone sur ruine

tag @s remove save_inventory
# permet d'éviter les check d'inventaire

effect clear @s
effect give @s minecraft:resistance infinite 255 true
clear @s
recipe give @s *
advancement revoke @s everything
advancement grant @s from warrior:root
advancement grant @s from archer:root
advancement grant @s from mage:root
advancement grant @s from rogue:root
function main:reset/resetachats
function main:reset/setupspells
function main:reset/resetclass
function main:stats/reset_stats
effect clear @s

attribute @s minecraft:attack_speed base set 50
# met en vitesse de pvp 1.8
attribute @s minecraft:entity_interaction_range base set 40
# augmente la portée d'interaction à @s (pour les menus)
attribute @s minecraft:waypoint_transmit_range base set 0
# fait en sorte que @s ne soit pas visible sur la locator bar

scoreboard players reset @s[tag=blue_member] blue_member
# enleve le numéro de statue de @s bleue (pour qu'elle puisse etre retirée)
scoreboard players reset @s[tag=red_member] red_member
# enleve le numéro de statue de @s rouge (pour qu'elle puisse etre retirée)

# permet d'ajouter @s à la liste des statues rouges si pas déjà le cas
team join lobby @s
tag @s remove blue_team
tag @s remove red_team
tag @s remove blue_spectator
tag @s remove red_spectator
scoreboard players reset @s blue_member
scoreboard players reset @s red_member
# enleve le numéro de statue de @s (pour qu'elle puisse etre retirée)
execute as @s run function main:stats/scoreboard/blue_team_info/left_blue
# enlève @s de la liste des bleus (si il est co)

scoreboard players set @s lobby_sneak 0
# permet de detcter le sneak dans le lobby

scoreboard players enable @s ready_sign
scoreboard players set @s operator 0

dialog show @s main:initialised/main

execute if score $operator_access option_panel matches 1 run tellraw @s [{"bold":false,"color":"white","text":"Si vous êtes modérateur "},{"bold":false,"click_event":{"action":"run_command","command":"/scoreboard players set @s operator 1"},"color":"gold","hover_event":{"action":"show_text","value":[{"text":"Cliquez pour obtenir les droits d'accès aux commandes.","color":"red"}]},"text":"cliquez ici"},{"bold":false,"color":"white","text":" pour obtenir l'accès aux commandes"}]
execute if score $operator_access option_panel matches 0 unless entity @a[scores={operator=2}] run tellraw @s {"bold":false,"color":"gold","text":"Pour obtenir les droits de modération, tenez vous sur la plateforme jaune devant le menu d'option."}

spawnpoint @s 0 100 0 180 0
tp @s 0 100 0 180 0
effect give @s minecraft:instant_health 1 10 true
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 0

scoreboard players set @s weapon1_slot_w 0
scoreboard players set @s weapon1_slot_a 0
scoreboard players set @s weapon1_slot_m 0
scoreboard players set @s weapon1_slot_r 0
scoreboard players set @s spell1_slot_w 1
scoreboard players set @s spell1_slot_a 1
scoreboard players set @s spell1_slot_m 1
scoreboard players set @s spell1_slot_r 1
scoreboard players set @s spell2_slot_w 2
scoreboard players set @s spell2_slot_a 3
scoreboard players set @s spell2_slot_m 2
scoreboard players set @s spell2_slot_r 2
scoreboard players set @s spell3_slot_w 3
scoreboard players set @s spell3_slot_a 2
scoreboard players set @s spell3_slot_m 3
scoreboard players set @s spell3_slot_r 3
scoreboard players set @s arrows_slot 8

scoreboard players set @s quit_slot_w 8
scoreboard players set @s quit_slot_a 7
scoreboard players set @s quit_slot_m 8
scoreboard players set @s quit_slot_r 8

# intialise les options de @s
scoreboard players enable @s opt_open_options
scoreboard players set @s opt_display_keybinds 1
scoreboard players set @s opt_keybind_order 2
scoreboard players enable @s opt_trig_keybind_order
scoreboard players set @s opt_display_jump_timer 1
scoreboard players enable @s opt_trig_display_jump_timer

function lobby:hotbar_menu/main/give_items
# Donne les item de hotbar

bossbar set minecraft:aaa_placeholder players @a
# met une bossbar invisible à tous (pour laisse la place à la top_bar)

function main:gui/display/refresh_gui
# refresh le gui