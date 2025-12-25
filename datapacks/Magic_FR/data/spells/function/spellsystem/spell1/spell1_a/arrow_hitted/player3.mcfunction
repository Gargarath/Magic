## appelée par detonate/playerX
# permet d'appliquer les dmgs aux joueurs dans la zone


execute as @e[type=#spellable,tag=in_explo3,scores={last_caster=0}] run function spells:spellsystem/spell1/spell1_a/took_spell1_a
# indique que @s est touché par la flèche explo (pour le kill feed)

execute positioned 0 0 0 run scoreboard players operation @e[type=#spellable,tag=in_explo3,scores={last_caster=0}] hit_by_explo_charge = @e[type=marker,tag=exploarrow_rotation3,limit=1,distance=..2] arrow_charge

scoreboard players set @e[type=#spellable,tag=in_explo3,scores={last_caster=0}] last_caster 3
# tag pour check après 1 tick les pv des joueurs ou du boss - le tag dépend du numéro de joueur du caster

execute positioned 0 0 0 if entity @e[tag=exploarrow_rotation3,tag=explosive_freeze_arrow,distance=..2,limit=1] as @e[type=#spellable,tag=in_explo3] run function spells:spellsystem/spell3/spell3_a/get_frozen/player3/test_lvl
# si la flèche est de glace -> freeze également

execute at @e[type=#spellable,tag=in_explo3] run playsound minecraft:entity.arrow.hit_player master @a[scores={Player=3}] ~ ~ ~ 100 0
# fait un son de hit au caster à l'endroit d'impact

execute if score @a[scores={Player=3},limit=1] spell1 matches 1 as @a[tag=in_explo3] if entity @s[team=blue] if entity @a[scores={Player=3},team=blue] at @e[type=marker,tag=exploraycast3_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_by_ally_lvl1
execute if score @a[scores={Player=3},limit=1] spell1 matches 1 as @a[tag=in_explo3] if entity @s[team=blue] if entity @a[scores={Player=3},team=red] at @e[type=marker,tag=exploraycast3_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_lvl1
execute if score @a[scores={Player=3},limit=1] spell1 matches 1 as @a[tag=in_explo3] if entity @s[team=red] if entity @a[scores={Player=3},team=blue] at @e[type=marker,tag=exploraycast3_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_lvl1
execute if score @a[scores={Player=3},limit=1] spell1 matches 1 as @a[tag=in_explo3] if entity @s[team=red] if entity @a[scores={Player=3},team=red] at @e[type=marker,tag=exploraycast3_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_by_ally_lvl1

execute if score @a[scores={Player=3},limit=1] spell1 matches 2 as @a[tag=in_explo3] if entity @s[team=blue] if entity @a[scores={Player=3},team=blue] at @e[type=marker,tag=exploraycast3_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_by_ally_lvl2
execute if score @a[scores={Player=3},limit=1] spell1 matches 2 as @a[tag=in_explo3] if entity @s[team=blue] if entity @a[scores={Player=3},team=red] at @e[type=marker,tag=exploraycast3_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_lvl2
execute if score @a[scores={Player=3},limit=1] spell1 matches 2 as @a[tag=in_explo3] if entity @s[team=red] if entity @a[scores={Player=3},team=blue] at @e[type=marker,tag=exploraycast3_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_lvl2
execute if score @a[scores={Player=3},limit=1] spell1 matches 2 as @a[tag=in_explo3] if entity @s[team=red] if entity @a[scores={Player=3},team=red] at @e[type=marker,tag=exploraycast3_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_by_ally_lvl2

execute if score @a[scores={Player=3},limit=1] spell1 matches 3 as @a[tag=in_explo3] if entity @s[team=blue] if entity @a[scores={Player=3},team=blue] at @e[type=marker,tag=exploraycast3_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_by_ally_lvl3
execute if score @a[scores={Player=3},limit=1] spell1 matches 3 as @a[tag=in_explo3] if entity @s[team=blue] if entity @a[scores={Player=3},team=red] at @e[type=marker,tag=exploraycast3_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_lvl3
execute if score @a[scores={Player=3},limit=1] spell1 matches 3 as @a[tag=in_explo3] if entity @s[team=red] if entity @a[scores={Player=3},team=blue] at @e[type=marker,tag=exploraycast3_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_lvl3
execute if score @a[scores={Player=3},limit=1] spell1 matches 3 as @a[tag=in_explo3] if entity @s[team=red] if entity @a[scores={Player=3},team=red] at @e[type=marker,tag=exploraycast3_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_by_ally_lvl3
# inflige les dégats au nom de @s (joueur qui subit des dmgs)

execute if score @a[scores={Player=3},limit=1] spell1 matches 1 as @e[type=#boss,tag=in_explo3] at @e[type=marker,tag=exploraycast3_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_lvl1
execute if score @a[scores={Player=3},limit=1] spell1 matches 2 as @e[type=#boss,tag=in_explo3] at @e[type=marker,tag=exploraycast3_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_lvl2
execute if score @a[scores={Player=3},limit=1] spell1 matches 3 as @e[type=#boss,tag=in_explo3] at @e[type=marker,tag=exploraycast3_1,limit=1] run function spells:spellsystem/spell1/spell1_a/apply_dmg/apply_dmg_lvl3
# inflige les dégats au nom de @s (mob qui subit des dmgs)

tag @e[type=#spellable,tag=in_explo3] remove in_explo3
execute positioned 0 0 0 run kill @e[tag=exploarrow_rotation3,distance=..2]

execute as @e[tag=exploraycast3] run function spells:spellsystem/spell1/spell1_a/delete_raycast_marker