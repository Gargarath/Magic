## appelée par start_game si on est en mode FFA
# permet de lancer les choses spécifiques au FFA


scoreboard players set ffa enable_loop 1
scoreboard players set spells enable_loop 1
# active le datapack FFA et spells

scoreboard players set @a usespell 0

execute as @a[scores={Player=1..}] run function lobby:team_selector/give_ffa_team/change_name_visibility/hide_name
# cache le pseudo et locator bar des joueurs

execute if score selected_map variables matches 1 run function main:launch_arena/launch_map_pirate
execute if score selected_map variables matches 2 run function main:launch_arena/launch_map_graveyard
execute if score selected_map variables matches 3 run function main:launch_arena/launch_map_factory
execute if score selected_map variables matches 4 run function main:launch_arena/launch_map_volcano
execute if score selected_map variables matches 5 run function main:launch_arena/launch_map_ruin
execute if score selected_map variables matches 6 run function main:launch_arena/launch_map_candyworld

scoreboard players reset * stat_killcount_player

scoreboard players operation $aaaa_objective stat_killcount_player = $kills_goal option_panel
scoreboard players operation $aaab_blank stat_killcount_player = $aaaa_objective stat_killcount_player

scoreboard players display name $aaaa_objective stat_killcount_player {"text":"Objectif :","color":"yellow","underlined":true}
scoreboard players display numberformat $aaaa_objective stat_killcount_player styled {"color":"yellow"}

scoreboard players display name $aaab_blank stat_killcount_player ""
scoreboard players display numberformat $aaab_blank stat_killcount_player blank

scoreboard players set @a stat_killcount_player 0

function gamemode:ffa/leaderboard/refresh_leaderboard

    schedule function gamemode:ffa/money_distribution/increase_player_money 10s
# lance la boucle de money passive pour les joueurs
