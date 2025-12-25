# Appelée par usespell1_m permet de lancer un rayon depuis le joueur qui utilise le sort jusqu'a ce que le rayon rencontre un boucle ou un joueur. Dans le deuxieme cas le joueur subiera des degats et sera brulé

particle flame ~ ~ ~ 0 0 0 0.0001 1 force
execute if block ~ ~ ~ #spell_beam unless block ~ ~-45 ~ #spawn_protectors positioned ~ ~-1 ~ unless entity @e[type=#boss,distance=..0.9,tag=!spell_immune] unless entity @a[distance=..0.9,tag=!spell_immune,team=blue] unless entity @a[distance=..0.9,tag=!spell_immune,team=red] run execute positioned ^ ^ ^1 positioned ~ ~1 ~ run function spells:spellsystem/spell1/spell1_m/firetrail_red_m
execute positioned ~ ~-1 ~ if entity @a[distance=..0.9,tag=!spell_immune,team=blue] run function spells:spellsystem/spell1/spell1_m/firetrail_red_hit
execute positioned ~ ~-1 ~ if entity @e[type=#boss,distance=..0.9,tag=!spell_immune] run function spells:spellsystem/spell1/spell1_m/firetrail_red_hit