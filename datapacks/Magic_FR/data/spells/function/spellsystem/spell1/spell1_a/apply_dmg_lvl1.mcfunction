# appelée par spell hitted au nom des joueurs qui ont été touchés par une flèche explosive

execute unless score @s last_caster = @s Player run function main:stats/calculate_dmg_dealth/store_hp_before
# Si @s n'est pas le lanceur du sort -> lance la fonction qui calcule les dégats subit par @s pour les stats du caster

function spells:spellsystem/spell1/spell1_a/took_spell1_a
# indique que @s est touché par la flèche explo (pour le kill feed)

execute if score @s last_caster matches 1 run damage @s 12 minecraft:player_attack by @a[scores={Player=1},limit=1]
execute if score @s last_caster matches 2 run damage @s 12 minecraft:player_attack by @a[scores={Player=2},limit=1]
execute if score @s last_caster matches 3 run damage @s 12 minecraft:player_attack by @a[scores={Player=3},limit=1]
execute if score @s last_caster matches 4 run damage @s 12 minecraft:player_attack by @a[scores={Player=4},limit=1]
execute if score @s last_caster matches 5 run damage @s 12 minecraft:player_attack by @a[scores={Player=5},limit=1]
execute if score @s last_caster matches 6 run damage @s 12 minecraft:player_attack by @a[scores={Player=6},limit=1]
execute if score @s last_caster matches 7 run damage @s 12 minecraft:player_attack by @a[scores={Player=7},limit=1]
execute if score @s last_caster matches 8 run damage @s 12 minecraft:player_attack by @a[scores={Player=8},limit=1]
execute if score @s last_caster matches 9 run damage @s 12 minecraft:player_attack by @a[scores={Player=9},limit=1]
execute if score @s last_caster matches 10 run damage @s 12 minecraft:player_attack by @a[scores={Player=10},limit=1]
execute if score @s last_caster matches 11 run damage @s 12 minecraft:player_attack by @a[scores={Player=11},limit=1]
execute if score @s last_caster matches 12 run damage @s 12 minecraft:player_attack by @a[scores={Player=12},limit=1]

execute if score @s last_caster matches 1 if data entity @s {active_effects:[{id:"minecraft:unluck"}]} at @s run effect give @e[type=#minecraft:spellable,distance=0..3.3] unluck 1 1 true
execute if score @s last_caster matches 2 if data entity @s {active_effects:[{id:"minecraft:unluck"}]} at @s run effect give @e[type=#minecraft:spellable,distance=0..3.3] unluck 1 2 true
execute if score @s last_caster matches 3 if data entity @s {active_effects:[{id:"minecraft:unluck"}]} at @s run effect give @e[type=#minecraft:spellable,distance=0..3.3] unluck 1 3 true
execute if score @s last_caster matches 4 if data entity @s {active_effects:[{id:"minecraft:unluck"}]} at @s run effect give @e[type=#minecraft:spellable,distance=0..3.3] unluck 1 4 true
execute if score @s last_caster matches 5 if data entity @s {active_effects:[{id:"minecraft:unluck"}]} at @s run effect give @e[type=#minecraft:spellable,distance=0..3.3] unluck 1 5 true
execute if score @s last_caster matches 6 if data entity @s {active_effects:[{id:"minecraft:unluck"}]} at @s run effect give @e[type=#minecraft:spellable,distance=0..3.3] unluck 1 6 true
execute if score @s last_caster matches 7 if data entity @s {active_effects:[{id:"minecraft:unluck"}]} at @s run effect give @e[type=#minecraft:spellable,distance=0..3.3] unluck 1 7 true
execute if score @s last_caster matches 8 if data entity @s {active_effects:[{id:"minecraft:unluck"}]} at @s run effect give @e[type=#minecraft:spellable,distance=0..3.3] unluck 1 8 true
execute if score @s last_caster matches 9 if data entity @s {active_effects:[{id:"minecraft:unluck"}]} at @s run effect give @e[type=#minecraft:spellable,distance=0..3.3] unluck 1 9 true
execute if score @s last_caster matches 10 if data entity @s {active_effects:[{id:"minecraft:unluck"}]} at @s run effect give @e[type=#minecraft:spellable,distance=0..3.3] unluck 1 10 true
execute if score @s last_caster matches 11 if data entity @s {active_effects:[{id:"minecraft:unluck"}]} at @s run effect give @e[type=#minecraft:spellable,distance=0..3.3] unluck 1 11 true
execute if score @s last_caster matches 12 if data entity @s {active_effects:[{id:"minecraft:unluck"}]} at @s run effect give @e[type=#minecraft:spellable,distance=0..3.3] unluck 1 12 true
# si @s a l'effet de flèche de glace -> gêle en plus autour au nom du joueur qui l'a touché

execute if score @s last_caster = @s Player run damage @s 12 minecraft:player_attack
execute if score @s last_caster = @s Player run scoreboard players set @s last_caster 0
# si @s est le lanceur du sort -> lui inflige des dégats pas de sa part et reset son score de calcul de hp