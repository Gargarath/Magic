## appelée par lobby:loop si @s fait click droit
## detecte avec quel item il a fait click droit

scoreboard players set @s usespell 0

execute if data entity @s[tag=warrior] {SelectedItem:{components:{"minecraft:custom_data":{select_warrior:1b}}}} run return run function lobby:class_selector/already_warrior
execute if data entity @s[tag=archer] {SelectedItem:{components:{"minecraft:custom_data":{select_archer:1b}}}} run return run function lobby:class_selector/already_archer
execute if data entity @s[tag=mage] {SelectedItem:{components:{"minecraft:custom_data":{select_mage:1b}}}} run return run function lobby:class_selector/already_mage
execute if data entity @s[tag=rogue] {SelectedItem:{components:{"minecraft:custom_data":{select_rogue:1b}}}} run return run function lobby:class_selector/already_rogue
execute if data entity @s[scores={class_id=0}] {SelectedItem:{components:{"minecraft:custom_data":{select_random_class:1b}}}} run return run function lobby:class_selector/already_random

execute if data entity @s[tag=!warrior] {SelectedItem:{components:{"minecraft:custom_data":{select_warrior:1b}}}} run return run function lobby:hotbar_menu/class_selector/become_warrior
execute if data entity @s[tag=!archer] {SelectedItem:{components:{"minecraft:custom_data":{select_archer:1b}}}} run return run function lobby:hotbar_menu/class_selector/become_archer
execute if data entity @s[tag=!mage] {SelectedItem:{components:{"minecraft:custom_data":{select_mage:1b}}}} run return run function lobby:hotbar_menu/class_selector/become_mage
execute if data entity @s[tag=!rogue] {SelectedItem:{components:{"minecraft:custom_data":{select_rogue:1b}}}} run return run function lobby:hotbar_menu/class_selector/become_rogue
execute if data entity @s[scores={class_id=1..}] {SelectedItem:{components:{"minecraft:custom_data":{select_random_class:1b}}}} run return run function lobby:hotbar_menu/class_selector/become_random

execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{select_blue:1b}}}} run return run function lobby:hotbar_menu/team_selector/join_blueteam
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{select_red:1b}}}} run return run function lobby:hotbar_menu/team_selector/join_redteam
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{select_random_team:1b}}}} run return run function lobby:hotbar_menu/team_selector/join_randomteam

execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{island_selector:1b}}}} run return run function lobby:hotbar_menu/island_selector/give_items
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{class_selector:1b}}}} run return run function lobby:hotbar_menu/class_selector/give_items
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{team_selector:1b}}}} run return run function lobby:hotbar_menu/team_selector/give_items
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{back_to_menu:1b}}}} run return run function lobby:hotbar_menu/main/give_items

execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{main_island:1b}}}} run return run function lobby:hotbar_menu/island_selector/main_island
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{stats_island:1b}}}} run return run function lobby:hotbar_menu/island_selector/stats_island
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{map_island:1b}}}} run return run function lobby:hotbar_menu/island_selector/map_island
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{jump_island:1b}}}} run return run function lobby:hotbar_menu/island_selector/jump_island


execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{join_spectator:1b}}}} run return run function lobby:hotbar_menu/main/join_spectator
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{leave_spectator:1b}}}} run return run function lobby:hotbar_menu/main/leave_spectator
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{cant_use_in_spec:1b}}}} run return run function lobby:hotbar_menu/main/cant_use_in_spec

execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{tp_checkpoint:1b}}}} run return run function lobby:hotbar_menu/jump/tp_checkpoint
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{reset_jump:1b}}}} run return run function lobby:hotbar_menu/jump/reset_jump