## appelée par is_sneaking si @s a le saut chargé à 10
# permet de donner l'effet de jump boost à @s et de lui afficher la bonne icône dans le gui selon son numéro de joueur

attribute @s minecraft:jump_strength modifier add jump_a 0.140 add_value

execute if score @s Player matches 1 run data modify storage gui player.1.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_10","shadow_color":0}
execute if score @s Player matches 2 run data modify storage gui player.2.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_10","shadow_color":0}
execute if score @s Player matches 3 run data modify storage gui player.3.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_10","shadow_color":0}
execute if score @s Player matches 4 run data modify storage gui player.4.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_10","shadow_color":0}
execute if score @s Player matches 5 run data modify storage gui player.5.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_10","shadow_color":0}
execute if score @s Player matches 6 run data modify storage gui player.6.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_10","shadow_color":0}
execute if score @s Player matches 7 run data modify storage gui player.7.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_10","shadow_color":0}
execute if score @s Player matches 8 run data modify storage gui player.8.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_10","shadow_color":0}
execute if score @s Player matches 9 run data modify storage gui player.9.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_10","shadow_color":0}
execute if score @s Player matches 10 run data modify storage gui player.10.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_10","shadow_color":0}
execute if score @s Player matches 11 run data modify storage gui player.11.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_10","shadow_color":0}
execute if score @s Player matches 12 run data modify storage gui player.12.actionbar.icon set value {atlas:"minecraft:gui",sprite:"jump_icon_a_10","shadow_color":0}
# met à jour les gui avec la barre de saut selon le numéro de joueur de @s