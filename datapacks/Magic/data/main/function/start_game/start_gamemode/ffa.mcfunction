## appelée par start_game si on est en mode FFA
# permet de lancer les choses spécifiques au FFA


scoreboard players set ffa enable_loop 1
scoreboard players set spells enable_loop 1
# active le datapack FFA et spells

scoreboard players set @a usespell 0

execute as @a[scores={Player=1..}] run function lobby:team_selector/give_ffa_team/change_name_visibility/hide_name
# cache le pseudo et locator bar des joueurs

function main:reset/flag_beacons/off

execute if score selected_map variables matches 1 run function main:launch_arena/launch_map_pirate
execute if score selected_map variables matches 2 run function main:launch_arena/launch_map_graveyard
execute if score selected_map variables matches 3 run function main:launch_arena/launch_map_factory
execute if score selected_map variables matches 4 run function main:launch_arena/launch_map_volcano
execute if score selected_map variables matches 5 run function main:launch_arena/launch_map_ruin
execute if score selected_map variables matches 6 run function main:launch_arena/launch_map_candyworld
execute if score selected_map variables matches 7 run function main:launch_arena/launch_map_hell

scoreboard players reset * stat_killcount_player

scoreboard players operation $ffa_goal stat_killcount_player = $kills_goal option_panel

scoreboard players set @a stat_killcount_player 0

scoreboard players set @a ffa_bounty_streak 0
scoreboard players set @a ffa_bounty_level 0
scoreboard players set @a ffa_bounty_calc 0
scoreboard players set $three ffa_bounty_calc 3

function gamemode:ffa/leaderboard/refresh_leaderboard

execute unless score $passive_money option_panel matches 1..50 run scoreboard players set $passive_money option_panel 10
execute unless score $passive_income_speed option_panel matches 0..30 run scoreboard players set $passive_income_speed option_panel 7
execute unless score $ph_per_kills option_panel matches 0..50 run scoreboard players set $ph_per_kills option_panel 10
execute unless score $first_income_delay option_panel matches 1..60 run scoreboard players set $first_income_delay option_panel 10
function gamemode:ffa/money_distribution/schedule_first
# lance la boucle de money passive pour les joueurs
