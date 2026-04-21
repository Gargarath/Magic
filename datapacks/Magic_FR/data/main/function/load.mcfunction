# This is the "init" function. This will play ONCE when the pack is reloaded/loaded!
# You can have more than 1 of these type of files, and you can change naming and such.
# To do so go to this data > minecraft > tags > functions > load
# that file says what functions get played on load.

# setup les fichiers de traduction
function main:personnal_data/translation/langs/en_en
function main:personnal_data/translation/langs/fr_fr

# setup les storage pour les shop
function main:reset/setup_stuff_storage

# réactualise les teambars
execute if score $gamemode option_panel matches 1 run function main:stats/scoreboard/blue_team_info/refresh_blue_side
execute if score $gamemode option_panel matches 1 run function main:stats/scoreboard/red_team_info/refresh_red_side