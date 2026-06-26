## appelée par item_save_system si @s est un assassin permet de sauvegarder l'équipement de @s

scoreboard players operation @s weapon1_slot2 = @s weapon1_slot_r
scoreboard players operation @s spell1_slot2 = @s spell1_slot_r
scoreboard players operation @s spell2_slot2 = @s spell2_slot_r
scoreboard players operation @s spell3_slot2 = @s spell3_slot_r
scoreboard players operation @s quit_slot2 = @s quit_slot_r
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{weapon1_slot:1b}}}] store result score @s weapon1_slot2 run data get entity @s Inventory[{components:{"minecraft:custom_data":{weapon1_slot:1b}}}].Slot
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{spell1_slot:1b}}}] store result score @s spell1_slot2 run data get entity @s Inventory[{components:{"minecraft:custom_data":{spell1_slot:1b}}}].Slot
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{spell2_slot:1b}}}] store result score @s spell2_slot2 run data get entity @s Inventory[{components:{"minecraft:custom_data":{spell2_slot:1b}}}].Slot
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{spell3_slot:1b}}}] store result score @s spell3_slot2 run data get entity @s Inventory[{components:{"minecraft:custom_data":{spell3_slot:1b}}}].Slot
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{quit_slot:1b}}}] store result score @s quit_slot2 run data get entity @s Inventory[{components:{"minecraft:custom_data":{quit_slot:1b}}}].Slot

execute if score @s spell1 matches 0 run scoreboard players reset @s spell1_slot2
execute if score @s spell2 matches 0 run scoreboard players reset @s spell2_slot2
execute if score @s spell3 matches 0 run scoreboard players reset @s spell3_slot2

scoreboard players set @s item_save_error 0
execute if score @s weapon1_slot2 = @s spell1_slot2 run scoreboard players set @s item_save_error 1
execute if score @s weapon1_slot2 = @s spell2_slot2 run scoreboard players set @s item_save_error 1
execute if score @s weapon1_slot2 = @s spell3_slot2 run scoreboard players set @s item_save_error 1
execute if score @s spell1_slot2 = @s spell2_slot2 run scoreboard players set @s item_save_error 1
execute if score @s spell1_slot2 = @s spell3_slot2 run scoreboard players set @s item_save_error 1
execute if score @s spell2_slot2 = @s spell3_slot2 run scoreboard players set @s item_save_error 1
execute if score @s quit_slot2 = @s weapon1_slot2 run scoreboard players set @s item_save_error 1
execute if score @s quit_slot2 = @s spell1_slot2 run scoreboard players set @s item_save_error 1
execute if score @s quit_slot2 = @s spell2_slot2 run scoreboard players set @s item_save_error 1
execute if score @s quit_slot2 = @s spell3_slot2 run scoreboard players set @s item_save_error 1
execute if score @s weapon1_slot2 matches 9.. run scoreboard players set @s item_save_error 1
execute if score @s spell1_slot2 matches 9.. run scoreboard players set @s item_save_error 1
execute if score @s spell2_slot2 matches 9.. run scoreboard players set @s item_save_error 1
execute if score @s spell3_slot2 matches 9.. run scoreboard players set @s item_save_error 1
execute if score @s quit_slot2 matches 9.. run scoreboard players set @s item_save_error 1
execute if score @s weapon1_slot2 matches ..-1 run scoreboard players set @s item_save_error 1
execute if score @s spell1_slot2 matches ..-1 run scoreboard players set @s item_save_error 1
execute if score @s spell2_slot2 matches ..-1 run scoreboard players set @s item_save_error 1
execute if score @s spell3_slot2 matches ..-1 run scoreboard players set @s item_save_error 1
execute if score @s quit_slot2 matches ..-1 run scoreboard players set @s item_save_error 1

execute if score @s item_save_error matches 0 run function main:items_positions/rogues/save_item_positions