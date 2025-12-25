# Déplace tous les projectiles actifs
execute as @e[tag=trap_launcher] at @s run function spells:spellsystem/spell2/spell2_a/launchttrap/tick_entity

# Tant qu’il reste des projectiles, on se reprogramme au tick suivant
execute if entity @e[tag=trap_launcher,limit=1] run schedule function spells:spellsystem/spell2/spell2_a/launchttrap/loop 1t
