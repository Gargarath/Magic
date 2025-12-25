# Permet de donner des fléches à ceux qui n'en n'ont pas assez. Dépend de la fonction spell:loop

tag @s remove save_inventory
scoreboard players add @s arrow 1
# Ajoute 1 au score de fleche de celui qui n'en n'a pas assez

execute as @s[tag=!Has_explosive_arrow,tag=!Has_freeze_arrow] if score @s arrow < @s maxarrow run scoreboard players set @s arrow_cooldown 40
execute unless score @s arrow < @s maxarrow run scoreboard players set @s arrow_cooldown -1

execute if score @s arrows_slot matches 0 run function spells:arrow_give_system/give_arrows/slot0
execute if score @s arrows_slot matches 1 run function spells:arrow_give_system/give_arrows/slot1
execute if score @s arrows_slot matches 2 run function spells:arrow_give_system/give_arrows/slot2
execute if score @s arrows_slot matches 3 run function spells:arrow_give_system/give_arrows/slot3
execute if score @s arrows_slot matches 4 run function spells:arrow_give_system/give_arrows/slot4
execute if score @s arrows_slot matches 5 run function spells:arrow_give_system/give_arrows/slot5
execute if score @s arrows_slot matches 6 run function spells:arrow_give_system/give_arrows/slot6
execute if score @s arrows_slot matches 7 run function spells:arrow_give_system/give_arrows/slot7
execute if score @s arrows_slot matches 8 run function spells:arrow_give_system/give_arrows/slot8
# Lance la fonction qui permet de donner des fleches en fonction de son score de arrow (le lance selon où il veut ses flèches)
tag @s add save_inventory