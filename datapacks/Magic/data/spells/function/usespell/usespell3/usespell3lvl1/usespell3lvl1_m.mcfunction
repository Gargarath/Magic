# Gere l'activation du spell3lvl1 par un joueur mage

tag @s remove save_inventory

scoreboard players set @s usespell 0
execute if score @s can_tp_m matches 1 if score @s tp_range matches ..50 run function spells:spellsystem/spell3/spell3_m/can_teleport
execute if score @s can_tp_m matches 1 if score @s tp_range matches 51.. run function spells:spellsystem/spell3/spell3_m/can_not_teleport
execute if score @s can_tp_m matches 0 run function spells:spellsystem/spell3/spell3_m/can_not_teleport

tag @s add save_inventory