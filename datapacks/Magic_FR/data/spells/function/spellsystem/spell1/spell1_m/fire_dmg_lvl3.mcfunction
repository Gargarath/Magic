## appelée par refresh_bossbar au nom du joueur brulé
# inflige les dégats de brulure à @s


scoreboard players operation @s last_caster = @s burning_by_player
function main:stats/calculate_dmg_dealth/store_hp_before
# lance la fonction qui calcule les dégats subit par @s pour les stats du caster

function spells:spellsystem/spell1/spell1_m/took_spell1_m
# indique que les adversaires touché sont touché par le baton du mage (pour le kill feed)

execute at @s run particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0 10 force
# fait un effet de particule de flame

execute if score @s burning_by_player matches 1 at @s run playsound minecraft:block.note_block.hat master @a[scores={Player=1},limit=1] ~ ~ ~ 100
execute if score @s burning_by_player matches 2 at @s run playsound minecraft:block.note_block.hat master @a[scores={Player=2},limit=1] ~ ~ ~ 100
execute if score @s burning_by_player matches 3 at @s run playsound minecraft:block.note_block.hat master @a[scores={Player=3},limit=1] ~ ~ ~ 100
execute if score @s burning_by_player matches 4 at @s run playsound minecraft:block.note_block.hat master @a[scores={Player=4},limit=1] ~ ~ ~ 100
execute if score @s burning_by_player matches 5 at @s run playsound minecraft:block.note_block.hat master @a[scores={Player=5},limit=1] ~ ~ ~ 100
execute if score @s burning_by_player matches 6 at @s run playsound minecraft:block.note_block.hat master @a[scores={Player=6},limit=1] ~ ~ ~ 100
execute if score @s burning_by_player matches 7 at @s run playsound minecraft:block.note_block.hat master @a[scores={Player=7},limit=1] ~ ~ ~ 100
execute if score @s burning_by_player matches 8 at @s run playsound minecraft:block.note_block.hat master @a[scores={Player=8},limit=1] ~ ~ ~ 100
execute if score @s burning_by_player matches 9 at @s run playsound minecraft:block.note_block.hat master @a[scores={Player=9},limit=1] ~ ~ ~ 100
execute if score @s burning_by_player matches 10 at @s run playsound minecraft:block.note_block.hat master @a[scores={Player=10},limit=1] ~ ~ ~ 100
execute if score @s burning_by_player matches 11 at @s run playsound minecraft:block.note_block.hat master @a[scores={Player=11},limit=1] ~ ~ ~ 100
execute if score @s burning_by_player matches 12 at @s run playsound minecraft:block.note_block.hat master @a[scores={Player=12},limit=1] ~ ~ ~ 100
# fait un son de hit au caster à l'endroit d'impact

execute if score @s burning_by_player matches 1 run damage @s 3 minecraft:magic by @a[scores={Player=1},limit=1]
execute if score @s burning_by_player matches 2 run damage @s 3 minecraft:magic by @a[scores={Player=2},limit=1]
execute if score @s burning_by_player matches 3 run damage @s 3 minecraft:magic by @a[scores={Player=3},limit=1]
execute if score @s burning_by_player matches 4 run damage @s 3 minecraft:magic by @a[scores={Player=4},limit=1]
execute if score @s burning_by_player matches 5 run damage @s 3 minecraft:magic by @a[scores={Player=5},limit=1]
execute if score @s burning_by_player matches 6 run damage @s 3 minecraft:magic by @a[scores={Player=6},limit=1]
execute if score @s burning_by_player matches 7 run damage @s 3 minecraft:magic by @a[scores={Player=7},limit=1]
execute if score @s burning_by_player matches 8 run damage @s 3 minecraft:magic by @a[scores={Player=8},limit=1]
execute if score @s burning_by_player matches 9 run damage @s 3 minecraft:magic by @a[scores={Player=9},limit=1]
execute if score @s burning_by_player matches 10 run damage @s 3 minecraft:magic by @a[scores={Player=10},limit=1]
execute if score @s burning_by_player matches 11 run damage @s 3 minecraft:magic by @a[scores={Player=11},limit=1]
execute if score @s burning_by_player matches 12 run damage @s 3 minecraft:magic by @a[scores={Player=12},limit=1]