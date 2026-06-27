## appelée par summon trap si @s a son piege qui est posé

tag @s remove launching_trap_a

scoreboard players operation @s trap_number_a = @s Player
tag @s add have_trap
# indique que @s possède le trap X

execute if score @s spell2 matches 1 run function stuff:stuff_archer/spell2/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s spell2 matches 2 run function stuff:stuff_archer/spell2/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s spell2 matches 3 run function stuff:stuff_archer/spell2/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
# donne l'item de spell2 "détruire" selon son niveau de sort

scoreboard players add @s stat_usespell 1
# ajoute un à la stat de stat_usespell de @s (stat du nombre de sorts lancés)

execute if score @s Player matches 1 run tag @s add trap1_immune
execute if score @s Player matches 2 run tag @s add trap2_immune
execute if score @s Player matches 3 run tag @s add trap3_immune
execute if score @s Player matches 4 run tag @s add trap4_immune
execute if score @s Player matches 5 run tag @s add trap5_immune
execute if score @s Player matches 6 run tag @s add trap6_immune
execute if score @s Player matches 7 run tag @s add trap7_immune
execute if score @s Player matches 8 run tag @s add trap8_immune
execute if score @s Player matches 9 run tag @s add trap9_immune
execute if score @s Player matches 10 run tag @s add trap10_immune
execute if score @s Player matches 11 run tag @s add trap11_immune
execute if score @s Player matches 12 run tag @s add trap12_immune

execute if score @s Player matches 1..12 run scoreboard players set @s gui_actionbar_message 8
execute if score @s Player matches 1..12 run function main:gui/actionbar/set_translated_alert with entity @s EnderItems[0].components.minecraft:custom_data
scoreboard players set @s gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick
