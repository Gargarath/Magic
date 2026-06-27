# Indique au guerrier que son cooldown du spell 3 lvl 1 est terminé !

execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 1..12 run scoreboard players set @s gui_actionbar_message 107
execute if score $no_cooldowns option_panel matches 0 if score @s Player matches 1..12 run function main:gui/actionbar/set_translated_alert with entity @s EnderItems[0].components.minecraft:custom_data
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick

execute if score $no_cooldowns option_panel matches 0 at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~
scoreboard players set @s cooldownspell3 -1
# met le score du joueur à -1 pour que le système sache qu'il a déjà subit cette fonction et pour éviter qu'il se fasse spam par celle ci
clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell3_slot:1b,cooldownspell3:1b}]
#clear tous les glass_pane (au cas où)

function stuff:stuff_warrior/spell3/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
