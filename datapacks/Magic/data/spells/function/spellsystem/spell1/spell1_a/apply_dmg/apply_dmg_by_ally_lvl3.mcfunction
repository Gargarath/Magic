# appelée par arrow_hitted/playerX  au nom des joueurs qui ont été touchés par une fleche explo par un joueur de la même équipe

execute at @s run particle minecraft:explosion ~ ~0.5 ~ 0 0.5 0 0 3 force @a

function main:stats/calculate_dmg_dealth/store_hp_before
# lance la fonction qui calcule les dégats subit par @s pour les stats du caster

execute if score @s hit_by_explo_charge matches 0 if score @s last_caster matches 1 run damage @s 8 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 0 if score @s last_caster matches 2 run damage @s 8 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 0 if score @s last_caster matches 3 run damage @s 8 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 0 if score @s last_caster matches 4 run damage @s 8 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 0 if score @s last_caster matches 5 run damage @s 8 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 0 if score @s last_caster matches 6 run damage @s 8 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 0 if score @s last_caster matches 7 run damage @s 8 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 0 if score @s last_caster matches 8 run damage @s 8 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 0 if score @s last_caster matches 9 run damage @s 8 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 0 if score @s last_caster matches 10 run damage @s 8 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 0 if score @s last_caster matches 11 run damage @s 8 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 0 if score @s last_caster matches 12 run damage @s 8 minecraft:player_attack at ~ ~ ~

execute if score @s hit_by_explo_charge matches 1 if score @s last_caster matches 1 run damage @s 10 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 1 if score @s last_caster matches 2 run damage @s 10 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 1 if score @s last_caster matches 3 run damage @s 10 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 1 if score @s last_caster matches 4 run damage @s 10 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 1 if score @s last_caster matches 5 run damage @s 10 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 1 if score @s last_caster matches 6 run damage @s 10 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 1 if score @s last_caster matches 7 run damage @s 10 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 1 if score @s last_caster matches 8 run damage @s 10 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 1 if score @s last_caster matches 9 run damage @s 10 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 1 if score @s last_caster matches 10 run damage @s 10 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 1 if score @s last_caster matches 11 run damage @s 10 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 1 if score @s last_caster matches 12 run damage @s 10 minecraft:player_attack at ~ ~ ~

execute if score @s hit_by_explo_charge matches 2 if score @s last_caster matches 1 run damage @s 21 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 2 if score @s last_caster matches 2 run damage @s 21 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 2 if score @s last_caster matches 3 run damage @s 21 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 2 if score @s last_caster matches 4 run damage @s 21 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 2 if score @s last_caster matches 5 run damage @s 21 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 2 if score @s last_caster matches 6 run damage @s 21 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 2 if score @s last_caster matches 7 run damage @s 21 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 2 if score @s last_caster matches 8 run damage @s 21 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 2 if score @s last_caster matches 9 run damage @s 21 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 2 if score @s last_caster matches 10 run damage @s 21 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 2 if score @s last_caster matches 11 run damage @s 21 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 2 if score @s last_caster matches 12 run damage @s 21 minecraft:player_attack at ~ ~ ~

execute if score @s hit_by_explo_charge matches 3 if score @s last_caster matches 1 run damage @s 32 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 3 if score @s last_caster matches 2 run damage @s 32 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 3 if score @s last_caster matches 3 run damage @s 32 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 3 if score @s last_caster matches 4 run damage @s 32 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 3 if score @s last_caster matches 5 run damage @s 32 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 3 if score @s last_caster matches 6 run damage @s 32 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 3 if score @s last_caster matches 7 run damage @s 32 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 3 if score @s last_caster matches 8 run damage @s 32 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 3 if score @s last_caster matches 9 run damage @s 32 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 3 if score @s last_caster matches 10 run damage @s 32 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 3 if score @s last_caster matches 11 run damage @s 32 minecraft:player_attack at ~ ~ ~
execute if score @s hit_by_explo_charge matches 3 if score @s last_caster matches 12 run damage @s 32 minecraft:player_attack at ~ ~ ~

execute if score @s last_caster = @s Player run tag @s add self_target
# indique que @s s'est tiré dessus si il l'a fait (pour le kill feed)

execute unless score @s last_caster = @s Player run tag @s add killed_by_ally
# si @s ne s'est pas tiré dessus, indique que @s s'est fait tapé par un allié (pour le kill feed)