# appelée par ctf:respawns permet de reset le piege qui vient de tuer @s et de reset ses scores liés à ça

scoreboard players set @s trapped -1
function stuff:status_items/refresh_overlay

attribute @s minecraft:movement_speed base reset
attribute @s minecraft:jump_strength base reset
attribute @s minecraft:knockback_resistance base reset
# enlève l'immobilisation de @s

execute if score @s in_trap_number matches 1 as @a[scores={trap_number_a=1}] run function spells:spellsystem/spell2/spell2_a/reset_trap
execute if score @s in_trap_number matches 2 as @a[scores={trap_number_a=2}] run function spells:spellsystem/spell2/spell2_a/reset_trap
execute if score @s in_trap_number matches 3 as @a[scores={trap_number_a=3}] run function spells:spellsystem/spell2/spell2_a/reset_trap
execute if score @s in_trap_number matches 4 as @a[scores={trap_number_a=4}] run function spells:spellsystem/spell2/spell2_a/reset_trap
execute if score @s in_trap_number matches 5 as @a[scores={trap_number_a=5}] run function spells:spellsystem/spell2/spell2_a/reset_trap
execute if score @s in_trap_number matches 6 as @a[scores={trap_number_a=6}] run function spells:spellsystem/spell2/spell2_a/reset_trap
execute if score @s in_trap_number matches 7 as @a[scores={trap_number_a=7}] run function spells:spellsystem/spell2/spell2_a/reset_trap
execute if score @s in_trap_number matches 8 as @a[scores={trap_number_a=8}] run function spells:spellsystem/spell2/spell2_a/reset_trap
execute if score @s in_trap_number matches 9 as @a[scores={trap_number_a=9}] run function spells:spellsystem/spell2/spell2_a/reset_trap
execute if score @s in_trap_number matches 10 as @a[scores={trap_number_a=10}] run function spells:spellsystem/spell2/spell2_a/reset_trap
execute if score @s in_trap_number matches 11 as @a[scores={trap_number_a=11}] run function spells:spellsystem/spell2/spell2_a/reset_trap
execute if score @s in_trap_number matches 12 as @a[scores={trap_number_a=12}] run function spells:spellsystem/spell2/spell2_a/reset_trap
# lance le cooldown du détenteur du piège
execute if score @s in_trap_number matches 1 run kill @e[type=armor_stand,tag=trap,scores={trap_number_a=1}]
execute if score @s in_trap_number matches 2 run kill @e[type=armor_stand,tag=trap,scores={trap_number_a=2}]
execute if score @s in_trap_number matches 3 run kill @e[type=armor_stand,tag=trap,scores={trap_number_a=3}]
execute if score @s in_trap_number matches 4 run kill @e[type=armor_stand,tag=trap,scores={trap_number_a=4}]
execute if score @s in_trap_number matches 5 run kill @e[type=armor_stand,tag=trap,scores={trap_number_a=5}]
execute if score @s in_trap_number matches 6 run kill @e[type=armor_stand,tag=trap,scores={trap_number_a=6}]
execute if score @s in_trap_number matches 7 run kill @e[type=armor_stand,tag=trap,scores={trap_number_a=7}]
execute if score @s in_trap_number matches 8 run kill @e[type=armor_stand,tag=trap,scores={trap_number_a=8}]
execute if score @s in_trap_number matches 9 run kill @e[type=armor_stand,tag=trap,scores={trap_number_a=9}]
execute if score @s in_trap_number matches 10 run kill @e[type=armor_stand,tag=trap,scores={trap_number_a=10}]
execute if score @s in_trap_number matches 11 run kill @e[type=armor_stand,tag=trap,scores={trap_number_a=11}]
execute if score @s in_trap_number matches 12 run kill @e[type=armor_stand,tag=trap,scores={trap_number_a=12}]
# détruit l'armor_stand piège
scoreboard players reset @s in_trap_number

execute if score @s Player matches 1 run bossbar set trapped:player1 players
execute if score @s Player matches 2 run bossbar set trapped:player2 players
execute if score @s Player matches 3 run bossbar set trapped:player3 players
execute if score @s Player matches 4 run bossbar set trapped:player4 players
execute if score @s Player matches 5 run bossbar set trapped:player5 players
execute if score @s Player matches 6 run bossbar set trapped:player6 players
execute if score @s Player matches 7 run bossbar set trapped:player7 players
execute if score @s Player matches 8 run bossbar set trapped:player8 players
execute if score @s Player matches 9 run bossbar set trapped:player9 players
execute if score @s Player matches 10 run bossbar set trapped:player10 players
execute if score @s Player matches 11 run bossbar set trapped:player11 players
execute if score @s Player matches 12 run bossbar set trapped:player12 players
# reset la bossbar de @s
