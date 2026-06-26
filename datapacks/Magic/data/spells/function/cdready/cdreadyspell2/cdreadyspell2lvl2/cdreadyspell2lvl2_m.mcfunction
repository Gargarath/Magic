# Indique au mage que son cooldown du spell 2 lvl 2 est terminé !

execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 1 run data modify storage gui player.1.actionbar.alert set value [{"interpret":true,"nbt":"mage.spells.spell2lvl2.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 2 run data modify storage gui player.2.actionbar.alert set value [{"interpret":true,"nbt":"mage.spells.spell2lvl2.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 3 run data modify storage gui player.3.actionbar.alert set value [{"interpret":true,"nbt":"mage.spells.spell2lvl2.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 4 run data modify storage gui player.4.actionbar.alert set value [{"interpret":true,"nbt":"mage.spells.spell2lvl2.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 5 run data modify storage gui player.5.actionbar.alert set value [{"interpret":true,"nbt":"mage.spells.spell2lvl2.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 6 run data modify storage gui player.6.actionbar.alert set value [{"interpret":true,"nbt":"mage.spells.spell2lvl2.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 7 run data modify storage gui player.7.actionbar.alert set value [{"interpret":true,"nbt":"mage.spells.spell2lvl2.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 8 run data modify storage gui player.8.actionbar.alert set value [{"interpret":true,"nbt":"mage.spells.spell2lvl2.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 9 run data modify storage gui player.9.actionbar.alert set value [{"interpret":true,"nbt":"mage.spells.spell2lvl2.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 10 run data modify storage gui player.10.actionbar.alert set value [{"interpret":true,"nbt":"mage.spells.spell2lvl2.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 11 run data modify storage gui player.11.actionbar.alert set value [{"interpret":true,"nbt":"mage.spells.spell2lvl2.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 12 run data modify storage gui player.12.actionbar.alert set value [{"interpret":true,"nbt":"mage.spells.spell2lvl2.name","storage":"ressources"},{"color":"green","text":" : disponible"}]
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick

execute if score $no_cooldowns option_panel matches 0 at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~
scoreboard players set @s cooldownspell2 -1
# met le score du joueur à -1 pour que le système sache qu'il a déjà subit cette fonction et pour éviter qu'il se fasse spam par celle ci
clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell2_slot:1b,cooldownspell2:1b}]
#clear tous les glass_pane (au cas où)

function stuff:stuff_mage/spell2/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data

