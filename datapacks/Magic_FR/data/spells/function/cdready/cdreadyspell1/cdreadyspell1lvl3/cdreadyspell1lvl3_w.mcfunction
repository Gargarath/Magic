# Indique au guerrier que son cooldown du spell 1 lvl 3 est terminé !

execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 1 run data modify storage gui player.1.actionbar.alert set value [{"interpret":true,"nbt":"warrior.spells.spell1lvl3.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 2 run data modify storage gui player.2.actionbar.alert set value [{"interpret":true,"nbt":"warrior.spells.spell1lvl3.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 3 run data modify storage gui player.3.actionbar.alert set value [{"interpret":true,"nbt":"warrior.spells.spell1lvl3.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 4 run data modify storage gui player.4.actionbar.alert set value [{"interpret":true,"nbt":"warrior.spells.spell1lvl3.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 5 run data modify storage gui player.5.actionbar.alert set value [{"interpret":true,"nbt":"warrior.spells.spell1lvl3.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 6 run data modify storage gui player.6.actionbar.alert set value [{"interpret":true,"nbt":"warrior.spells.spell1lvl3.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 7 run data modify storage gui player.7.actionbar.alert set value [{"interpret":true,"nbt":"warrior.spells.spell1lvl3.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 8 run data modify storage gui player.8.actionbar.alert set value [{"interpret":true,"nbt":"warrior.spells.spell1lvl3.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 9 run data modify storage gui player.9.actionbar.alert set value [{"interpret":true,"nbt":"warrior.spells.spell1lvl3.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 10 run data modify storage gui player.10.actionbar.alert set value [{"interpret":true,"nbt":"warrior.spells.spell1lvl3.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 11 run data modify storage gui player.11.actionbar.alert set value [{"interpret":true,"nbt":"warrior.spells.spell1lvl3.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 12 run data modify storage gui player.12.actionbar.alert set value [{"interpret":true,"nbt":"warrior.spells.spell1lvl3.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick

execute if score $no_cooldowns option_panel matches 0 at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~
scoreboard players set @s cooldownspell1 -1
# met le score du joueur à -1 pour que le système sache qu'il a déjà subit cette fonction et pour éviter qu'il se fasse spam par celle ci
clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell1_slot:1b,cooldownspell1:1b}]
#clear tous les glass_pane (au cas où)

execute if score @s spell1_slot_w matches 0 run function stuff:stuff_warrior/spell1/slot0
execute if score @s spell1_slot_w matches 1 run function stuff:stuff_warrior/spell1/slot1
execute if score @s spell1_slot_w matches 2 run function stuff:stuff_warrior/spell1/slot2
execute if score @s spell1_slot_w matches 3 run function stuff:stuff_warrior/spell1/slot3
execute if score @s spell1_slot_w matches 4 run function stuff:stuff_warrior/spell1/slot4
execute if score @s spell1_slot_w matches 5 run function stuff:stuff_warrior/spell1/slot5
execute if score @s spell1_slot_w matches 6 run function stuff:stuff_warrior/spell1/slot6
execute if score @s spell1_slot_w matches 7 run function stuff:stuff_warrior/spell1/slot7
execute if score @s spell1_slot_w matches 8 run function stuff:stuff_warrior/spell1/slot8


