## appelée par lobby:loop si @s à jeté un item
## permet de lui reset son stuff

scoreboard players set @s drop_item 0

execute if score @s hotbar_menu matches 0..2 run function lobby:hotbar_menu/main/give_items
execute if score @s hotbar_menu matches 3 run function lobby:hotbar_menu/jump/give_items
