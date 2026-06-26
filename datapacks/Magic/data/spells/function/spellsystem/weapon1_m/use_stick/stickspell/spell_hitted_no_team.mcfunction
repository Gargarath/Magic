# appelée par tail si le sort touche un ennemi
# permet d'infliger des dégâts à l'ennemi et d'indiquer qu'il a été touché par le baton du mage


scoreboard players operation @a[distance=..0.9,tag=!spell_immune,scores={last_caster=0}] last_caster = @s Player
# tag pour check après 1 tick les pv des joueurs

execute as @a[distance=..0.9,tag=!spell_immune] run function spells:spellsystem/weapon1_m/use_stick/took_spell_weapon1_w
# indique que les adversaires touché sont touché par le baton du mage (pour le kill feed)

execute if score @s weapon1 matches 1..9 as @a[distance=..0.9,tag=!spell_immune] run function spells:spellsystem/weapon1_m/use_stick/apply_dmg_classic
# inflige les dégats au nom des joueurs adverses (selon la team de @s) dans la zone et calcule ses dégats subits (si il est déjà en train de subir des dégats, ignore)

execute if score @s weapon1 matches 10 as @a[distance=..0.9,tag=!spell_immune] run function spells:spellsystem/weapon1_m/use_stick/apply_dmg_high
# inflige les dégats au nom des joueurs adverses (selon la team de @s) dans la zone et calcule ses dégats subits (si il est déjà en train de subir des dégats, ignore)

playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 100 0
# fait un son de hit au caster à l'endroit d'impact

