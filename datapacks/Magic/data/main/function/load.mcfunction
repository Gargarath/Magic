# This is the "init" function. This will play ONCE when the pack is reloaded/loaded!
# You can have more than 1 of these type of files, and you can change naming and such.
# To do so go to this data > minecraft > tags > functions > load
# that file says what functions get played on load.

tag @a remove save_inventory
tag @a add inventory_rebuilding

# setup les fichiers de traduction
function main:personnal_data/translation/langs/en_en
function main:personnal_data/translation/langs/fr_fr

scoreboard players remove @a opt_lang 1
execute as @a run function main:personnal_data/translation/change_language/change_language

# setup les storage pour les shop
function main:reset/setup_stuff_storage

# réactualise les teambars
execute if score lobby enable_loop matches 1 if score $gamemode option_panel matches 1 run function main:stats/scoreboard/blue_team_info/refresh_blue_side
execute if score lobby enable_loop matches 1 if score $gamemode option_panel matches 1 run function main:stats/scoreboard/red_team_info/refresh_red_side

function main:reset/setupscoreboard
execute as @a unless score @s opt_passive_income_alert matches 0..1 run scoreboard players set @s opt_passive_income_alert 1
execute as @a unless score @s opt_cd_ready_sound matches 0..1 run scoreboard players set @s opt_cd_ready_sound 1
function main:reset/setupbossbar

tag @a remove inventory_rebuilding
tag @a add save_inventory
