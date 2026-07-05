# Permet de reset totalement un joueur si on appelle cette fonction en son nom

tag @s remove save_inventory
tag @s add inventory_rebuilding

clear @s

tag @s add initialised
scoreboard players set @s InLobby 1
scoreboard players set @s lobby_use_lock 0
scoreboard players set @s InShop 0
scoreboard players set @s Player 0
scoreboard players set @s ffa_lobby_slot 0
scoreboard players set @s is_ready 0
scoreboard players set @s IsAlive 0
scoreboard players set @s save_flag_time 0
scoreboard players set @s cap_flag_time 0
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

effect clear @s
effect give @s minecraft:resistance infinite 255 true
function main:items_positions/cleanup_managed_items
recipe give @s *
advancement revoke @s everything
advancement revoke @s from warrior:root
advancement revoke @s from archer:root
advancement revoke @s from mage:root
advancement revoke @s from rogue:root
function main:reset/resetachats
function main:reset/setupspells
function main:reset/resetclass
function main:stats/reset_stats
effect clear @s
function main:effects/refresh_persistent

attribute @s minecraft:waypoint_receive_range base set 0
# enlève la locator bar de @s
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
tag @s remove spectator
tag @s remove blue_spectator
tag @s remove red_spectator
scoreboard players reset @s blue_member
scoreboard players reset @s red_member
# enleve le numéro de statue de @s (pour qu'elle puisse etre retirée)
execute as @s run function main:stats/scoreboard/blue_team_info/left_blue
# enlève @s de la liste des bleus (si il est co)
execute as @s run function main:stats/scoreboard/red_team_info/left_red
# enlève @s de la liste des rouge (si il est co)

scoreboard players set @s lobby_sneak 0
# permet de detcter le sneak dans le lobby

scoreboard players set @s operator 0

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
scoreboard players set @s inventory_page 0
scoreboard players set @s opt_display_keybinds 1
scoreboard players set @s opt_keybind_order 2
scoreboard players set @s opt_display_jump_timer 1
scoreboard players set @s opt_passive_income_alert 1
scoreboard players set @s opt_cd_ready_sound 1
scoreboard players set @s opt_color 0
scoreboard players set @s opt_lang 0
scoreboard players enable @s upgrade_codex
scoreboard players enable @s discord

# ------ # STORAGE PERSONNEL # ---------------
item replace entity @s enderchest.0 with minecraft:gray_stained_glass_pane[minecraft:custom_data={\
slot_weapon1_w:0,\
slot_weapon1_a:0,\
slot_weapon1_m:0,\
slot_weapon1_r:0,\
\
slot_spell1_w:1,\
slot_spell1_a:1,\
slot_spell1_m:1,\
slot_spell1_r:1,\
\
slot_spell2_w:2,\
slot_spell2_a:2,\
slot_spell2_m:2,\
slot_spell2_r:2,\
\
slot_spell3_w:3,\
slot_spell3_a:3,\
slot_spell3_m:3,\
slot_spell3_r:3,\
slot_arrows:8}]

# setup l'item dans l'enderchest de @s qui va lui servir de storage personnel

function main:personnal_data/get_name
data modify storage personnal_storage.temp storage set from entity @s EnderItems[0].components.minecraft:custom_data
data modify storage personnal_storage.temp storage.raw_name set from storage temp name
function main:personnal_data/save_new_data with storage personnal_storage.temp
# ajoute le raw_name de @s dans son storage

function main:initialised/welcome_dialog/apply_language
# initialise silencieusement les traductions en anglais avant le choix
# ----------------------------------------------------------

function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
# Donne les item de hotbar

bossbar set minecraft:aaa_placeholder players @a
# met une bossbar invisible à tous (pour laisse la place à la top_bar)

function main:gui/display/refresh_gui
# refresh le gui

# ---------

execute if score lobby enable_loop matches 0 unless score @s Player matches -1 run function main:reconnect/someone_joined_during_match
tag @s remove inventory_rebuilding
tag @s add save_inventory
function main:initialised/welcome_dialog/open
# souhaite la bienvenue a @s et lui demande de choisir sa langue
# si une game est déjà lancée et que @s n'est pas encore mis en spec -> le met en spec
