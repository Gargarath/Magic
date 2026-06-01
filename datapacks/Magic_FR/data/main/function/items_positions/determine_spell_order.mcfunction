## appelée par les spell item position des différente classe quand @s a un nouvel ordre d'item dans l'inventaire
# permet de stocker où est placé quel sort dans l'inventaire pour les keybind de @sa


execute if score @s opt_keybind_order matches 1 run scoreboard players set @s temp1_key_slot -999
execute if score @s opt_keybind_order matches 1 run scoreboard players set @s temp2_key_slot -999
execute if score @s opt_keybind_order matches 1 run scoreboard players set @s temp3_key_slot -999

execute if score @s opt_keybind_order matches 2 run scoreboard players set @s temp1_key_slot 999
execute if score @s opt_keybind_order matches 2 run scoreboard players set @s temp2_key_slot 999
execute if score @s opt_keybind_order matches 2 run scoreboard players set @s temp3_key_slot 999

execute if score @s spell1 matches 1.. run scoreboard players operation @s temp1_key_slot = @s spell1_slot2
execute if score @s spell2 matches 1.. run scoreboard players operation @s temp2_key_slot = @s spell2_slot2
execute if score @s spell3 matches 1.. run scoreboard players operation @s temp3_key_slot = @s spell3_slot2

scoreboard players set @s sort_key_slot 0
execute if score @s opt_keybind_order matches 1 if score @s temp1_key_slot < @s temp2_key_slot run scoreboard players set @s sort_key_slot 1
execute if score @s opt_keybind_order matches 2 if score @s temp1_key_slot > @s temp2_key_slot run scoreboard players set @s sort_key_slot 1
execute if score @s sort_key_slot matches 1 run scoreboard players operation @s temp_key_slot = @s temp1_key_slot
execute if score @s sort_key_slot matches 1 run scoreboard players operation @s temp1_key_slot = @s temp2_key_slot
execute if score @s sort_key_slot matches 1 run scoreboard players operation @s temp2_key_slot = @s temp_key_slot

# swap(a,c) si a>c
scoreboard players set @s sort_key_slot 0
execute if score @s opt_keybind_order matches 1 if score @s temp1_key_slot < @s temp3_key_slot run scoreboard players set @s sort_key_slot 1
execute if score @s opt_keybind_order matches 2 if score @s temp1_key_slot > @s temp3_key_slot run scoreboard players set @s sort_key_slot 1
execute if score @s sort_key_slot matches 1 run scoreboard players operation @s temp_key_slot = @s temp1_key_slot
execute if score @s sort_key_slot matches 1 run scoreboard players operation @s temp1_key_slot = @s temp3_key_slot
execute if score @s sort_key_slot matches 1 run scoreboard players operation @s temp3_key_slot = @s temp_key_slot

# swap(b,c) si b>c
scoreboard players set @s sort_key_slot 0
execute if score @s opt_keybind_order matches 1 if score @s temp2_key_slot < @s temp3_key_slot run scoreboard players set @s sort_key_slot 1
execute if score @s opt_keybind_order matches 2 if score @s temp2_key_slot > @s temp3_key_slot run scoreboard players set @s sort_key_slot 1
execute if score @s sort_key_slot matches 1 run scoreboard players operation @s temp_key_slot = @s temp2_key_slot
execute if score @s sort_key_slot matches 1 run scoreboard players operation @s temp2_key_slot = @s temp3_key_slot
execute if score @s sort_key_slot matches 1 run scoreboard players operation @s temp3_key_slot = @s temp_key_slot

# Sortie

scoreboard players operation @s key_slot1 = @s temp1_key_slot
scoreboard players operation @s key_slot2 = @s temp2_key_slot
scoreboard players operation @s key_slot3 = @s temp3_key_slot

function main:items_positions/save_spell_order_in_gui with entity @s EnderItems[0].components.minecraft:custom_data
# stock les nouveaux string dans le gui