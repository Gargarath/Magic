# appelée par firetrail_blue_m hit
# permet de donne les dégats et calculer les stats + killfeed si besoin

scoreboard players operation @a[distance=..0.9,tag=!spell_immune,scores={last_caster=0}] last_caster = @s Player
# tag pour check après 1 tick les pv des joueurs ou du boss

execute as @a[distance=..0.9,tag=!spell_immune] run function spells:spellsystem/spell1/spell1_m/took_spell1_m
# indique que les adversaires touché sont touché par le baton du mage (pour le kill feed)

execute if score @s spell1 matches 1 as @a[distance=..0.9,tag=!spell_immune] run function spells:spellsystem/spell1/spell1_m/apply_dmg_lvl1
# inflige les dégats au nom des joueurs adverses (selon la team de @s) dans la zone et calcule ses dégats subits (si il est déjà en train de subir des dégats, ignore)

execute if score @s spell1 matches 2 as @a[distance=..0.9,tag=!spell_immune] run function spells:spellsystem/spell1/spell1_m/apply_dmg_lvl2
# inflige les dégats au nom des joueurs adverses (selon la team de @s) dans la zone et calcule ses dégats subits (si il est déjà en train de subir des dégats, ignore)

execute if score @s spell1 matches 3 as @a[distance=..0.9,tag=!spell_immune] run function spells:spellsystem/spell1/spell1_m/apply_dmg_lvl3
# inflige les dégats au nom des joueurs adverses (selon la team de @s) dans la zone et calcule ses dégats subits (si il est déjà en train de subir des dégats, ignore)

playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 100 0
# fait un son de hit au caster à l'endroit d'impact

scoreboard players operation @s cooldownspell1 /= 2 operations
# reset le cd de @s par 2

schedule function spells:spellsystem/spell1/spell1_m/refresh_cooldown/refresh_cd_spell1 2t