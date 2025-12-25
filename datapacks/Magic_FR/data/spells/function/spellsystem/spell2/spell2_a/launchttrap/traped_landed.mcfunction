## appelée par summon trap si @s a son piege qui est posé

tag @s remove launching_trap_a

scoreboard players operation @s trap_number_a = @s Player
tag @s add have_trap
# indique que @s possède le trap X

execute as @s[scores={cooldownspell2=-1,spell2_slot_a=0}] run function stuff:stuff_archer/spell2/slot0
execute as @s[scores={cooldownspell2=-1,spell2_slot_a=1}] run function stuff:stuff_archer/spell2/slot1
execute as @s[scores={cooldownspell2=-1,spell2_slot_a=2}] run function stuff:stuff_archer/spell2/slot2
execute as @s[scores={cooldownspell2=-1,spell2_slot_a=3}] run function stuff:stuff_archer/spell2/slot3
execute as @s[scores={cooldownspell2=-1,spell2_slot_a=4}] run function stuff:stuff_archer/spell2/slot4
execute as @s[scores={cooldownspell2=-1,spell2_slot_a=5}] run function stuff:stuff_archer/spell2/slot5
execute as @s[scores={cooldownspell2=-1,spell2_slot_a=6}] run function stuff:stuff_archer/spell2/slot6
execute as @s[scores={cooldownspell2=-1,spell2_slot_a=7}] run function stuff:stuff_archer/spell2/slot7
execute as @s[scores={cooldownspell2=-1,spell2_slot_a=8}] run function stuff:stuff_archer/spell2/slot8
# on utilise le slot du spell3 car pour l'archer les sort 2 et 3 sont inversés

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

execute if score @s Player matches 1 run data modify storage gui player.1.actionbar.alert set value ["",{"text":"Votre piège à ours a été posé !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 2 run data modify storage gui player.2.actionbar.alert set value ["",{"text":"Votre piège à ours a été posé !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 3 run data modify storage gui player.3.actionbar.alert set value ["",{"text":"Votre piège à ours a été posé !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 4 run data modify storage gui player.4.actionbar.alert set value ["",{"text":"Votre piège à ours a été posé !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 5 run data modify storage gui player.5.actionbar.alert set value ["",{"text":"Votre piège à ours a été posé !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 6 run data modify storage gui player.6.actionbar.alert set value ["",{"text":"Votre piège à ours a été posé !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 7 run data modify storage gui player.7.actionbar.alert set value ["",{"text":"Votre piège à ours a été posé !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 8 run data modify storage gui player.8.actionbar.alert set value ["",{"text":"Votre piège à ours a été posé !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 9 run data modify storage gui player.9.actionbar.alert set value ["",{"text":"Votre piège à ours a été posé !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 10 run data modify storage gui player.10.actionbar.alert set value ["",{"text":"Votre piège à ours a été posé !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 11 run data modify storage gui player.11.actionbar.alert set value ["",{"text":"Votre piège à ours a été posé !","bold":false,"color":"dark_aqua"}]
execute if score @s Player matches 12 run data modify storage gui player.12.actionbar.alert set value ["",{"text":"Votre piège à ours a été posé !","bold":false,"color":"dark_aqua"}]
scoreboard players set @s gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick