# executé sur un joueur piégé

attribute @s minecraft:movement_speed base set 0
attribute @s minecraft:jump_strength base set 0
attribute @s minecraft:knockback_resistance base set 1
# rend @s immobile

scoreboard players set @s trapped 40
function stuff:status_items/refresh_overlay
execute positioned ~ ~-1 ~ if entity @e[tag=trap,distance=..1.1,scores={trap_number_a=1}] run scoreboard players set @s in_trap_number 1
execute positioned ~ ~-1 ~ if entity @e[tag=trap,distance=..1.1,scores={trap_number_a=2}] run scoreboard players set @s in_trap_number 2
execute positioned ~ ~-1 ~ if entity @e[tag=trap,distance=..1.1,scores={trap_number_a=3}] run scoreboard players set @s in_trap_number 3
execute positioned ~ ~-1 ~ if entity @e[tag=trap,distance=..1.1,scores={trap_number_a=4}] run scoreboard players set @s in_trap_number 4
execute positioned ~ ~-1 ~ if entity @e[tag=trap,distance=..1.1,scores={trap_number_a=5}] run scoreboard players set @s in_trap_number 5
execute positioned ~ ~-1 ~ if entity @e[tag=trap,distance=..1.1,scores={trap_number_a=6}] run scoreboard players set @s in_trap_number 6
execute positioned ~ ~-1 ~ if entity @e[tag=trap,distance=..1.1,scores={trap_number_a=7}] run scoreboard players set @s in_trap_number 7
execute positioned ~ ~-1 ~ if entity @e[tag=trap,distance=..1.1,scores={trap_number_a=8}] run scoreboard players set @s in_trap_number 8
execute positioned ~ ~-1 ~ if entity @e[tag=trap,distance=..1.1,scores={trap_number_a=9}] run scoreboard players set @s in_trap_number 9
execute positioned ~ ~-1 ~ if entity @e[tag=trap,distance=..1.1,scores={trap_number_a=10}] run scoreboard players set @s in_trap_number 10
execute positioned ~ ~-1 ~ if entity @e[tag=trap,distance=..1.1,scores={trap_number_a=11}] run scoreboard players set @s in_trap_number 11
execute positioned ~ ~-1 ~ if entity @e[tag=trap,distance=..1.1,scores={trap_number_a=12}] run scoreboard players set @s in_trap_number 12

scoreboard players operation @s[scores={last_caster=0}] last_caster = @s in_trap_number
# tag pour check après 1 tick les pv des joueurs (determine qui a tapé @s - via le numéro de piège)

function spells:spellsystem/spell2/spell2_a/took_spell2_a
# indique que @s est touché sont touché par le piège à ours (pour le kill feed)

function spells:spellsystem/spell2/spell2_a/apply_dmg
# inflige les dégats du piège à ours à @s



execute if score @s in_trap_number matches 1 as @a[scores={trap_number_a=1}] run function spells:spellsystem/spell2/spell2_a/tell_trap_activated/lvl1/player1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s in_trap_number matches 2 as @a[scores={trap_number_a=2}] run function spells:spellsystem/spell2/spell2_a/tell_trap_activated/lvl1/player2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s in_trap_number matches 3 as @a[scores={trap_number_a=3}] run function spells:spellsystem/spell2/spell2_a/tell_trap_activated/lvl1/player3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s in_trap_number matches 4 as @a[scores={trap_number_a=4}] run function spells:spellsystem/spell2/spell2_a/tell_trap_activated/lvl1/player4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s in_trap_number matches 5 as @a[scores={trap_number_a=5}] run function spells:spellsystem/spell2/spell2_a/tell_trap_activated/lvl1/player5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s in_trap_number matches 6 as @a[scores={trap_number_a=6}] run function spells:spellsystem/spell2/spell2_a/tell_trap_activated/lvl1/player6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s in_trap_number matches 7 as @a[scores={trap_number_a=7}] run function spells:spellsystem/spell2/spell2_a/tell_trap_activated/lvl1/player7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s in_trap_number matches 8 as @a[scores={trap_number_a=8}] run function spells:spellsystem/spell2/spell2_a/tell_trap_activated/lvl1/player8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s in_trap_number matches 9 as @a[scores={trap_number_a=9}] run function spells:spellsystem/spell2/spell2_a/tell_trap_activated/lvl1/player9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s in_trap_number matches 10 as @a[scores={trap_number_a=10}] run function spells:spellsystem/spell2/spell2_a/tell_trap_activated/lvl1/player10 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s in_trap_number matches 11 as @a[scores={trap_number_a=11}] run function spells:spellsystem/spell2/spell2_a/tell_trap_activated/lvl1/player11 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s in_trap_number matches 12 as @a[scores={trap_number_a=12}] run function spells:spellsystem/spell2/spell2_a/tell_trap_activated/lvl1/player12 with entity @s EnderItems[0].components.minecraft:custom_data


function spells:spellsystem/spell2/spell2_a/setup_bossbar/lvl1/check_number
# setup la bossbar de @s
