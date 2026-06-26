## appelée quand besoin de reset la barre de mana ou discretion
## reset les barres

execute if score @s Player matches 1 run data modify storage minecraft:gui player.1.actionbar.bar set value ""
execute if score @s Player matches 2 run data modify storage minecraft:gui player.2.actionbar.bar set value ""
execute if score @s Player matches 3 run data modify storage minecraft:gui player.3.actionbar.bar set value ""
execute if score @s Player matches 4 run data modify storage minecraft:gui player.4.actionbar.bar set value ""
execute if score @s Player matches 5 run data modify storage minecraft:gui player.5.actionbar.bar set value ""
execute if score @s Player matches 6 run data modify storage minecraft:gui player.6.actionbar.bar set value ""
execute if score @s Player matches 7 run data modify storage minecraft:gui player.7.actionbar.bar set value ""
execute if score @s Player matches 8 run data modify storage minecraft:gui player.8.actionbar.bar set value ""
execute if score @s Player matches 9 run data modify storage minecraft:gui player.9.actionbar.bar set value ""
execute if score @s Player matches 10 run data modify storage minecraft:gui player.10.actionbar.bar set value ""
execute if score @s Player matches 11 run data modify storage minecraft:gui player.11.actionbar.bar set value ""
execute if score @s Player matches 12 run data modify storage minecraft:gui player.12.actionbar.bar set value ""

execute if score @s Player matches 1 run data modify storage minecraft:gui player.1.actionbar.score set value ""
execute if score @s Player matches 2 run data modify storage minecraft:gui player.2.actionbar.score set value ""
execute if score @s Player matches 3 run data modify storage minecraft:gui player.3.actionbar.score set value ""
execute if score @s Player matches 4 run data modify storage minecraft:gui player.4.actionbar.score set value ""
execute if score @s Player matches 5 run data modify storage minecraft:gui player.5.actionbar.score set value ""
execute if score @s Player matches 6 run data modify storage minecraft:gui player.6.actionbar.score set value ""
execute if score @s Player matches 7 run data modify storage minecraft:gui player.7.actionbar.score set value ""
execute if score @s Player matches 8 run data modify storage minecraft:gui player.8.actionbar.score set value ""
execute if score @s Player matches 9 run data modify storage minecraft:gui player.9.actionbar.score set value ""
execute if score @s Player matches 10 run data modify storage minecraft:gui player.10.actionbar.score set value ""
execute if score @s Player matches 11 run data modify storage minecraft:gui player.11.actionbar.score set value ""
execute if score @s Player matches 12 run data modify storage minecraft:gui player.12.actionbar.score set value ""
# supprime les barres de hotbar