## appelée par main:start_game en début de partie pour enregistrer les noms des joueurs dans un storage

team join Blue_Color @a[tag=blue_team,scores={Player=1..}]
execute as @a[team=Blue_Color] run function main:locator_bar/team_updated
team join Red_Color @a[tag=red_team,scores={Player=1..}]
execute as @a[team=Red_Color] run function main:locator_bar/team_updated
execute as @a[tag=no_team,scores={Player=1..}] run function lobby:team_selector/give_ffa_team/check_player

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=1},limit=1]"},"","",""]}}
data modify storage main:killfeed name.1 set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 1 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=2},limit=1]"},"","",""]}}
data modify storage main:killfeed name.2 set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 2 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=3},limit=1]"},"","",""]}}
data modify storage main:killfeed name.3 set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 3 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=4},limit=1]"},"","",""]}}
data modify storage main:killfeed name.4 set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 4 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=5},limit=1]"},"","",""]}}
data modify storage main:killfeed name.5 set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 5 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=6},limit=1]"},"","",""]}}
data modify storage main:killfeed name.6 set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 6 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=7},limit=1]"},"","",""]}}
data modify storage main:killfeed name.7 set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 7 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=8},limit=1]"},"","",""]}}
data modify storage main:killfeed name.8 set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 8 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=9},limit=1]"},"","",""]}}
data modify storage main:killfeed name.9 set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 9 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=10},limit=1]"},"","",""]}}
data modify storage main:killfeed name.10 set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 10 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=11},limit=1]"},"","",""]}}
data modify storage main:killfeed name.11 set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 11 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=12},limit=1]"},"","",""]}}
data modify storage main:killfeed name.12 set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 12 dans le storage

team join non_ready_blue @a[team=Blue_Color]
execute as @a[team=non_ready_blue] run function main:locator_bar/team_updated
team join non_ready_red @a[team=Red_Color]
execute as @a[team=non_ready_red] run function main:locator_bar/team_updated
