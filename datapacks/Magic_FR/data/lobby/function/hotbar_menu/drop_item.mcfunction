## appelée par lobby:loop si @s à jeté un item
## permet de lui reset son stuff

scoreboard players set @s drop_item 0

execute if score @s hotbar_menu matches 0 run function lobby:hotbar_menu/main/give_items
execute if score @s hotbar_menu matches 1 run function lobby:hotbar_menu/class_selector/give_items
execute if score @s hotbar_menu matches 2 run function lobby:hotbar_menu/team_selector/give_items
execute if score @s hotbar_menu matches 3 run function lobby:hotbar_menu/jump/give_items
execute if score @s hotbar_menu matches 4 run function lobby:hotbar_menu/island_selector/give_items
execute if score @s hotbar_menu matches 5 run function lobby:hotbar_menu/map_visit/give_items
