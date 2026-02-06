## appelée par detonate/playerX
# permet d'appliquer les dmgs aux joueurs dans la zone


execute as @e[type=#spellable,tag=in_explo10,scores={last_caster=0}] run function spells:spellsystem/spell1/spell1_a/took_spell1_a
# indique que @s est touché par la flèche explo (pour le kill feed)

scoreboard players set @e[type=#spellable,tag=in_explo10,scores={last_caster=0}] last_caster 10
# tag pour check après 1 tick les pv des joueurs ou du boss - le tag dépend du numéro de joueur du caster


execute at @e[type=#spellable,tag=in_explo10] run playsound minecraft:entity.arrow.hit_player master @a[scores={Player=10}] ~ ~ ~ 100 0
# fait un son de hit au caster à l'endroit d'impact

execute if score @a[scores={Player=10},limit=1] spell1 matches 1 as @a[tag=in_explo10] if entity @s[team=blue] if entity @a[scores={Player=10},team=blue] at @e[type=marker,tag=exploraycast10_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_by_ally_lvl1
execute if score @a[scores={Player=10},limit=1] spell1 matches 1 as @a[tag=in_explo10] if entity @s[team=blue] if entity @a[scores={Player=10},team=red] at @e[type=marker,tag=exploraycast10_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_lvl1
execute if score @a[scores={Player=10},limit=1] spell1 matches 1 as @a[tag=in_explo10] if entity @s[team=red] if entity @a[scores={Player=10},team=blue] at @e[type=marker,tag=exploraycast10_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_lvl1
execute if score @a[scores={Player=10},limit=1] spell1 matches 1 as @a[tag=in_explo10] if entity @s[tag=no_team] at @e[type=marker,tag=exploraycast10_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_lvl1
execute if score @a[scores={Player=10},limit=1] spell1 matches 1 as @a[tag=in_explo10] if entity @s[team=red] if entity @a[scores={Player=10},team=red] at @e[type=marker,tag=exploraycast10_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_by_ally_lvl1

execute if score @a[scores={Player=10},limit=1] spell1 matches 2 as @a[tag=in_explo10] if entity @s[team=blue] if entity @a[scores={Player=10},team=blue] at @e[type=marker,tag=exploraycast10_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_by_ally_lvl2
execute if score @a[scores={Player=10},limit=1] spell1 matches 2 as @a[tag=in_explo10] if entity @s[team=blue] if entity @a[scores={Player=10},team=red] at @e[type=marker,tag=exploraycast10_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_lvl2
execute if score @a[scores={Player=10},limit=1] spell1 matches 2 as @a[tag=in_explo10] if entity @s[team=red] if entity @a[scores={Player=10},team=blue] at @e[type=marker,tag=exploraycast10_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_lvl2
execute if score @a[scores={Player=10},limit=1] spell1 matches 2 as @a[tag=in_explo10] if entity @s[tag=no_team] at @e[type=marker,tag=exploraycast10_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_lvl2
execute if score @a[scores={Player=10},limit=1] spell1 matches 2 as @a[tag=in_explo10] if entity @s[team=red] if entity @a[scores={Player=10},team=red] at @e[type=marker,tag=exploraycast10_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_by_ally_lvl2

execute if score @a[scores={Player=10},limit=1] spell1 matches 3 as @a[tag=in_explo10] if entity @s[team=blue] if entity @a[scores={Player=10},team=blue] at @e[type=marker,tag=exploraycast10_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_by_ally_lvl3
execute if score @a[scores={Player=10},limit=1] spell1 matches 3 as @a[tag=in_explo10] if entity @s[team=blue] if entity @a[scores={Player=10},team=red] at @e[type=marker,tag=exploraycast10_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_lvl3
execute if score @a[scores={Player=10},limit=1] spell1 matches 3 as @a[tag=in_explo10] if entity @s[team=red] if entity @a[scores={Player=10},team=blue] at @e[type=marker,tag=exploraycast10_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_lvl3
execute if score @a[scores={Player=10},limit=1] spell1 matches 3 as @a[tag=in_explo10] if entity @s[tag=no_team] at @e[type=marker,tag=exploraycast10_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_lvl3
execute if score @a[scores={Player=10},limit=1] spell1 matches 3 as @a[tag=in_explo10] if entity @s[team=red] if entity @a[scores={Player=10},team=red] at @e[type=marker,tag=exploraycast10_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_by_ally_lvl3
# inflige les dégats au nom de @s (joueur qui subit des dmgs)


tag @e[type=#spellable,tag=in_explo10] remove in_explo10

execute as @e[tag=exploraycast10] run function spells:spellsystem/spell1/spell1_a/delete_raycast_marker