# appelée par tail si le sort touche un ennemi
# permet d'infliger des dégâts à l'ennemi et d'indiquer qu'il a été touché par le baton du mage


execute if entity @s[team=blue] run scoreboard players operation @a[distance=..0.9,tag=!spell_immune,team=red,scores={last_caster=0}] last_caster = @s Player
execute if entity @s[team=red] run scoreboard players operation @a[distance=..0.9,tag=!spell_immune,team=blue,scores={last_caster=0}] last_caster = @s Player
scoreboard players operation @e[type=#boss,distance=..0.9] last_caster = @s Player
# tag pour check après 1 tick les pv des joueurs ou du boss

execute if entity @s[team=blue] as @a[distance=..0.9,tag=!spell_immune,team=red] run function spells:spellsystem/weapon1_m/use_stick/took_spell_weapon1_w
execute if entity @s[team=red] as @a[distance=..0.9,tag=!spell_immune,team=blue] run function spells:spellsystem/weapon1_m/use_stick/took_spell_weapon1_w
execute as @e[type=#boss] run function spells:spellsystem/weapon1_m/use_stick/took_spell_weapon1_w
# indique que les adversaires touché sont touché par le baton du mage (pour le kill feed)

execute if score @s weapon1 matches 1..9 if entity @s[team=blue] as @a[distance=..0.9,tag=!spell_immune,team=red] run function spells:spellsystem/weapon1_m/use_stick/apply_dmg_classic
execute if score @s weapon1 matches 1..9 if entity @s[team=red] as @a[distance=..0.9,tag=!spell_immune,team=blue] run function spells:spellsystem/weapon1_m/use_stick/apply_dmg_classic
# inflige les dégats au nom des joueurs adverses (selon la team de @s) dans la zone et calcule ses dégats subits (si il est déjà en train de subir des dégats, ignore)
execute if score @s weapon1 matches 1..9 as @e[type=#boss,distance=..0.9] run function spells:spellsystem/weapon1_m/use_stick/apply_dmg_classic
# inflige les dégats au nom du boss dans la zone et calcule ses dégats subits (si il est déjà en train de subir des dégats, ignore)

execute if score @s weapon1 matches 10 if entity @s[team=blue] as @a[distance=..0.9,tag=!spell_immune,team=red] run function spells:spellsystem/weapon1_m/use_stick/apply_dmg_high
execute if score @s weapon1 matches 10 if entity @s[team=red] as @a[distance=..0.9,tag=!spell_immune,team=blue] run function spells:spellsystem/weapon1_m/use_stick/apply_dmg_high
# inflige les dégats au nom des joueurs adverses (selon la team de @s) dans la zone et calcule ses dégats subits (si il est déjà en train de subir des dégats, ignore)
execute if score @s weapon1 matches 10 as @e[type=#boss,distance=..0.9] run function spells:spellsystem/weapon1_m/use_stick/apply_dmg_high
# inflige les dégats au nom du boss dans la zone et calcule ses dégats subits (si il est déjà en train de subir des dégats, ignore)

playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 100 0
# fait un son de hit au caster à l'endroit d'impact

