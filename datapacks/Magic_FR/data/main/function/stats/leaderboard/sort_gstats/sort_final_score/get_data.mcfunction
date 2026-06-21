## appelée par sort_final_scor au nom des joueurs de la game d'avant
# permet de les ajouter au leaderboard global selon leur stat

function main:personnal_data/get_name
function main:stats/leaderboard/sort_gstats/sort_final_score/set_temp_name_component with storage temp
data modify storage stats:temp head.player.id set from entity @s UUID
data modify storage stats:temp stat set value "stat_final_score"
execute store result storage stats:temp score int 1 run scoreboard players get @s stat_final_score
execute if entity @s[tag=warrior] run data modify storage stats:temp class set value "warrior"
execute if entity @s[tag=archer] run data modify storage stats:temp class set value "archer"
execute if entity @s[tag=mage] run data modify storage stats:temp class set value "mage"
execute if entity @s[tag=rogue] run data modify storage stats:temp class set value "rogue"
execute if data storage minecraft:matchinfo {last_game_gamemode:0b} run data modify storage stats:temp mode set value "ffa"
execute if data storage minecraft:matchinfo {last_game_gamemode:1b} run data modify storage stats:temp mode set value "ctf"

function main:stats/leaderboard/sort_gstats/sort_final_score/submit with storage stats:temp
