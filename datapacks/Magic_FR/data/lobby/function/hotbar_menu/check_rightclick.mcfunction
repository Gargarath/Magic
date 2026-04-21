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
execute if score $gamemode option_panel matches 0 if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{color_selector:1b}}}} run return run function lobby:hotbar_menu/color_picker/give_items with entity @s EnderItems[0].components.minecraft:custom_data
execute if score $gamemode option_panel matches 1 if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{team_selector:1b}}}} run return run function lobby:hotbar_menu/team_selector/give_items
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{back_to_menu:1b}}}} run return run function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s hotbar_menu matches 6..8 if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{previous_page:1b}}}} run return run function lobby:hotbar_menu/color_picker/previous_page
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{select_white_color:1b}}}} run return run function lobby:hotbar_menu/color_picker/set_color/0_white
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{select_gray_color:1b}}}} run return run function lobby:hotbar_menu/color_picker/set_color/1_gray
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{select_dark_gray_color:1b}}}} run return run function lobby:hotbar_menu/color_picker/set_color/2_dark_gray
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{select_black_color:1b}}}} run return run function lobby:hotbar_menu/color_picker/set_color/3_black
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{select_aqua_color:1b}}}} run return run function lobby:hotbar_menu/color_picker/set_color/4_aqua
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{select_dark_aqua_color:1b}}}} run return run function lobby:hotbar_menu/color_picker/set_color/5_dark_aqua
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{select_blue_color:1b}}}} run return run function lobby:hotbar_menu/color_picker/set_color/6_blue
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{select_dark_blue_color:1b}}}} run return run function lobby:hotbar_menu/color_picker/set_color/7_dark_blue
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{select_green_color:1b}}}} run return run function lobby:hotbar_menu/color_picker/set_color/8_green
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{select_dark_green_color:1b}}}} run return run function lobby:hotbar_menu/color_picker/set_color/9_dark_green
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{select_light_purple_color:1b}}}} run return run function lobby:hotbar_menu/color_picker/set_color/10_light_purple
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{select_dark_purple_color:1b}}}} run return run function lobby:hotbar_menu/color_picker/set_color/11_dark_purple
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{select_red_color:1b}}}} run return run function lobby:hotbar_menu/color_picker/set_color/12_red
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{select_dark_red_color:1b}}}} run return run function lobby:hotbar_menu/color_picker/set_color/13_dark_red
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{select_yellow_color:1b}}}} run return run function lobby:hotbar_menu/color_picker/set_color/14_yellow
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{select_gold_color:1b}}}} run return run function lobby:hotbar_menu/color_picker/set_color/15_gold
execute if score @s hotbar_menu matches 6..8 if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{next_page:1b}}}} run return run function lobby:hotbar_menu/color_picker/next_page

execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{main_island:1b}}}} run return run function lobby:hotbar_menu/island_selector/main_island
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{stats_island:1b}}}} run return run function lobby:hotbar_menu/island_selector/stats_island
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{map_island:1b}}}} run return run function lobby:hotbar_menu/island_selector/map_island/check_join
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{jump_island:1b}}}} run return run function lobby:hotbar_menu/island_selector/jump_island/check_join

execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{gamemode:1b}}}} run return run function lobby:map_island/commands/gamemode
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{tp_blue_flag:1b}}}} run return run function lobby:map_island/commands/tp_blue_flag
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{tp_red_flag:1b}}}} run return run function lobby:map_island/commands/tp_red_flag
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{tp_blue_spawn:1b}}}} run return run function lobby:map_island/commands/tp_blue_spawn
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{tp_red_spawn:1b}}}} run return run function lobby:map_island/commands/tp_red_spawn
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{quit_map:1b}}}} run return run function lobby:map_island/commands/quit_map



execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{join_spectator:1b}}}} run return run function lobby:hotbar_menu/main/join_spectator
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{leave_spectator:1b}}}} run return run function lobby:hotbar_menu/main/leave_spectator
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{cant_use_in_spec:1b}}}} run return run function lobby:hotbar_menu/main/cant_use_in_spec

execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{tp_checkpoint:1b}}}} run return run function lobby:hotbar_menu/jump/tp_checkpoint
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{reset_jump:1b}}}} run return run function lobby:hotbar_menu/jump/reset_jump