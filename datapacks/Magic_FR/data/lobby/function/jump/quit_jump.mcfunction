## appelée par option_panel/pages/jump/jump_off, jump_pads/launch_out et start_game
# enlève @s du jump

tag @s remove jumping
tag @s remove jumping_1
tag @s remove jumping_2
tag @s remove jumping_3
tag @s remove in_jump
execute if entity @s[tag=jump_hide_close_players] run function lobby:jump/hide_close_player/no_more_invisible
# si @s est invisible -> lui enlève
execute if score @s hotbar_menu matches 3 run function lobby:hotbar_menu/main/give_items