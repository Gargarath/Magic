# appelée par spells:loop permet de faire l'effet de la tempête de foudre à celui qui est dans la tempête de foudre du joueur 1 depuis trop longtemps
# permet d'infliger des dégâts à l'ennemi et d'indiquer qu'il a été touché par le tempête de foudre

scoreboard players set @s[scores={last_caster=0}] last_caster 1
# tag pour check après 1 tick les pv des joueurs ou du boss - le tag dépend du numéro de joueur du caster

execute at @s run function spells:spellsystem/spell2/spell2_m/lightning_hit/lightning_effect
# permet de simuler un éclair sur @s

function spells:spellsystem/spell2/spell2_m/took_spell2_m
# indique que @s est touché par la tempête de foudre (pour le kill feed)

execute if score @a[scores={Player=1},limit=1,tag=no_team] spell2 matches 1 unless entity @s[scores={Player=1}] run function spells:spellsystem/spell2/spell2_m/apply_dmg_lvl1
execute if score @a[scores={Player=1},limit=1,tag=no_team] spell2 matches 2 unless entity @s[scores={Player=1}] run function spells:spellsystem/spell2/spell2_m/apply_dmg_lvl2
execute if score @a[scores={Player=1},limit=1,tag=no_team] spell2 matches 3 unless entity @s[scores={Player=1}] run function spells:spellsystem/spell2/spell2_m/apply_dmg_lvl3

execute if score @a[scores={Player=1},limit=1,tag=no_team] spell2 matches 1 if entity @s[scores={Player=1}] run function spells:spellsystem/spell2/spell2_m/apply_dmg_by_ally_lvl1
execute if score @a[scores={Player=1},limit=1,tag=no_team] spell2 matches 2 if entity @s[scores={Player=1}] run function spells:spellsystem/spell2/spell2_m/apply_dmg_by_ally_lvl2
execute if score @a[scores={Player=1},limit=1,tag=no_team] spell2 matches 3 if entity @s[scores={Player=1}] run function spells:spellsystem/spell2/spell2_m/apply_dmg_by_ally_lvl3

execute if score @a[scores={Player=1},limit=1,tag=!no_team] spell2 matches 1 if entity @s[team=blue] if entity @a[scores={Player=1},team=blue] run function spells:spellsystem/spell2/spell2_m/apply_dmg_by_ally_lvl1
execute if score @a[scores={Player=1},limit=1,tag=!no_team] spell2 matches 1 if entity @s[team=blue] if entity @a[scores={Player=1},team=red] run function spells:spellsystem/spell2/spell2_m/apply_dmg_lvl1
execute if score @a[scores={Player=1},limit=1,tag=!no_team] spell2 matches 1 if entity @s[team=red] if entity @a[scores={Player=1},team=blue] run function spells:spellsystem/spell2/spell2_m/apply_dmg_lvl1
execute if score @a[scores={Player=1},limit=1,tag=!no_team] spell2 matches 1 if entity @s[team=red] if entity @a[scores={Player=1},team=red] run function spells:spellsystem/spell2/spell2_m/apply_dmg_by_ally_lvl1

execute if score @a[scores={Player=1},limit=1,tag=!no_team] spell2 matches 2 if entity @s[team=blue] if entity @a[scores={Player=1},team=blue] run function spells:spellsystem/spell2/spell2_m/apply_dmg_by_ally_lvl2
execute if score @a[scores={Player=1},limit=1,tag=!no_team] spell2 matches 2 if entity @s[team=blue] if entity @a[scores={Player=1},team=red] run function spells:spellsystem/spell2/spell2_m/apply_dmg_lvl2
execute if score @a[scores={Player=1},limit=1,tag=!no_team] spell2 matches 2 if entity @s[team=red] if entity @a[scores={Player=1},team=blue] run function spells:spellsystem/spell2/spell2_m/apply_dmg_lvl2
execute if score @a[scores={Player=1},limit=1,tag=!no_team] spell2 matches 2 if entity @s[team=red] if entity @a[scores={Player=1},team=red] run function spells:spellsystem/spell2/spell2_m/apply_dmg_by_ally_lvl2

execute if score @a[scores={Player=1},limit=1,tag=!no_team] spell2 matches 3 if entity @s[team=blue] if entity @a[scores={Player=1},team=blue] run function spells:spellsystem/spell2/spell2_m/apply_dmg_by_ally_lvl3
execute if score @a[scores={Player=1},limit=1,tag=!no_team] spell2 matches 3 if entity @s[team=blue] if entity @a[scores={Player=1},team=red] run function spells:spellsystem/spell2/spell2_m/apply_dmg_lvl3
execute if score @a[scores={Player=1},limit=1,tag=!no_team] spell2 matches 3 if entity @s[team=red] if entity @a[scores={Player=1},team=blue] run function spells:spellsystem/spell2/spell2_m/apply_dmg_lvl3
execute if score @a[scores={Player=1},limit=1,tag=!no_team] spell2 matches 3 if entity @s[team=red] if entity @a[scores={Player=1},team=red] run function spells:spellsystem/spell2/spell2_m/apply_dmg_by_ally_lvl3
# inflige les dégats au nom de @s (joueur qui subit des dmgs)

execute if score @a[scores={Player=1},limit=1] spell2 matches 1 if entity @s[type=#boss] run function spells:spellsystem/spell2/spell2_m/apply_dmg_lvl1
execute if score @a[scores={Player=1},limit=1] spell2 matches 2 if entity @s[type=#boss] run function spells:spellsystem/spell2/spell2_m/apply_dmg_lvl2
execute if score @a[scores={Player=1},limit=1] spell2 matches 3 if entity @s[type=#boss] run function spells:spellsystem/spell2/spell2_m/apply_dmg_lvl3
# inflige les dégats au nom de @s (mob qui subit des dmgs)

execute at @s as @a[scores={Player=1},limit=1] run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 100 0
# fait un son de hit au caster à l'endroit d'impact

scoreboard players set @s in_cloud 0
# reset le timing pour prendre un éclair de @s