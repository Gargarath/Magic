## appelée par les end_hook_player lorsque @s est ramené devant le joueur et doit subir les dégats du grappin
# inflige les dégats à @s

function spells:spellsystem/spell3/spell3_w/hook/took_spell3_w
# si la cible est encore en vie -> indique qu'elle' vient d'être touché par le grappin (pour le kill feed)

execute unless score @s last_caster = @s Player run function main:stats/calculate_dmg_dealth/store_hp_before
# Si @s n'est pas le lanceur du sort -> lance la fonction qui calcule les dégats subit par @s pour les stats du caster

execute if score @s last_caster matches 1 run damage @s 1 minecraft:player_attack by @a[scores={Player=1},limit=1]
execute if score @s last_caster matches 2 run damage @s 1 minecraft:player_attack by @a[scores={Player=2},limit=1]
execute if score @s last_caster matches 3 run damage @s 1 minecraft:player_attack by @a[scores={Player=3},limit=1]
execute if score @s last_caster matches 4 run damage @s 1 minecraft:player_attack by @a[scores={Player=4},limit=1]
execute if score @s last_caster matches 5 run damage @s 1 minecraft:player_attack by @a[scores={Player=5},limit=1]
execute if score @s last_caster matches 6 run damage @s 1 minecraft:player_attack by @a[scores={Player=6},limit=1]
execute if score @s last_caster matches 7 run damage @s 1 minecraft:player_attack by @a[scores={Player=7},limit=1]
execute if score @s last_caster matches 8 run damage @s 1 minecraft:player_attack by @a[scores={Player=8},limit=1]
execute if score @s last_caster matches 9 run damage @s 1 minecraft:player_attack by @a[scores={Player=9},limit=1]
execute if score @s last_caster matches 10 run damage @s 1 minecraft:player_attack by @a[scores={Player=10},limit=1]
execute if score @s last_caster matches 11 run damage @s 1 minecraft:player_attack by @a[scores={Player=11},limit=1]
execute if score @s last_caster matches 12 run damage @s 1 minecraft:player_attack by @a[scores={Player=12},limit=1]