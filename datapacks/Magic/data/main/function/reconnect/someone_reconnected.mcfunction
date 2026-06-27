## appelée par main:loop si @s vient de se reconnecter

scoreboard players set @s disconnected 0
function gamemode:ctf/secondary_objectives/bossbar/allocate_slots
function gamemode:ctf/secondary_objectives/bossbar/refresh_all

# si @s n'est pas dans le même gamemode que actuellement -> l'actualise
execute if score $gamemode option_panel matches 0 if entity @s[tag=!no_team,scores={Player=0..}] run function lobby:team_selector/team_disabler/disable_team
execute if score $gamemode option_panel matches 0 if entity @s[tag=!no_team,scores={Player=-1}] run function lobby:team_selector/team_disabler/disable_team_spec
execute if score $gamemode option_panel matches 1 if entity @s[tag=no_team,scores={Player=0..}] run function lobby:team_selector/team_disabler/enable_team
execute if score $gamemode option_panel matches 1 if entity @s[tag=no_team,scores={Player=-1}] run function lobby:team_selector/team_disabler/enable_team_spec

# si on est en mode FFA dans le lobby -> check si @s n'a pas le même slot de lobby que quelqu'un d'autre
execute if score $gamemode option_panel matches 0 if score lobby enable_loop matches 1 as @s[tag=no_team,scores={InLobby=1,Player=0..}] run function lobby:team_selector/give_ffa_lobby_team/reconnect_slot

execute if score lobby enable_loop matches 1 as @s[scores={Player=1..},tag=!in_lobby_arena] run function main:reconnect/put_back_in_lobby
# si @s rejoint après la game, le remet dans le lobby

execute if score lobby enable_loop matches 0 as @s[scores={InLobby=1}] run function main:reconnect/someone_joined_during_match
# si @s pendant la partie le fait devenir spectateur

execute if score lobby enable_loop matches 0 if score shop enable_loop matches 0 as @s[scores={InShop=1}] run function main:reconnect/reconnect_in_shop
# si @s se reconnecte dans le shop et que le shop et lobby sont désactivés -> check quoi faire

execute if score lobby enable_loop matches 1 as @s[scores={Player=1..},tag=in_lobby_arena] run function main:reconnect/leave_arena
# si @s rejoint a quitté l'arene et qu'aucune partie n'a commencé -> le remet dans le lobby

execute if score lobby enable_loop matches 1 as @s[tag=blue_team] run function lobby:team_selector/display_team_members/blue/new_member
# si @s est bleu et que le lobby est activé -> remet ça statue
execute if score lobby enable_loop matches 1 as @s[tag=red_team] run function lobby:team_selector/display_team_members/red/new_member
# si @s est rouge et que le lobby est activé -> remet ça statue
execute if score lobby enable_loop matches 1 run kill @e[type=armor_stand,tag=team_member,name="Armor Stand"]
# si @s est le premier à se co -> kill l'armor stand qui a pu être invoqué en trop si il est heberge lui même le serv

execute if score lobby enable_loop matches 0 as @s[tag=blue_team,scores={Player=1..},tag=!in_lobby_arena] run function main:stats/scoreboard/blue_team_info/overlays/no_overlay_icon/check_place
# si @s est un joueur et se reconnecte -> le réaffiche comme connecté
execute if score lobby enable_loop matches 0 as @s[tag=red_team,scores={Player=1..},tag=!in_lobby_arena] run function main:stats/scoreboard/red_team_info/overlays/no_overlay_icon/check_place
# si @s est un joueur et se reconnecte -> le réaffiche comme connecté


execute if score @s nopack_detection matches -1 run function main:ressource_pack_detector/ressource_pack_detector

# si l'objectif secondaire est autorisé et qu'on est in game -> affiche la bossbar obj secondaire à tous
# si l'objectif secondaire a commencé mais n'est pas fini, affiche la bonne bossbar à tous

execute store result score $count operator if entity @a[scores={operator=2}]
execute if score $operator_access option_panel matches 0 if score @s operator matches 2 if score $count operator matches 2.. run function lobby:operator/leave_op with entity @s EnderItems[0].components.minecraft:custom_data
# si on est en mode player_are_op et que @s est modo et qu'il y a déjà un modo -> enlève @s des modos

execute as @a run attribute @s waypoint_receive_range base set 0
schedule function gamemode:ctf/locator_bar_flags/enable_waypoint 1t
# permet de refresh les waypoint (bug MC qui fait que parfois on voit des waypoints qu'on ne doit pas voir)

function main:gui/display/refresh_gui
# actualise la barre en haut de l'écran
