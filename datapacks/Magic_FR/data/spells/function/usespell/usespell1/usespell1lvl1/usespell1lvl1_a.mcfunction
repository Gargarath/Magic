# Gere l'activation du spell1lvl1 par un joueur archer

execute as @s[tag=Has_explosive_arrow] run function spells:spellsystem/spell1/spell1_a/rotate_arrow
# si @s a déjà activé la flèche explo -> la rotate

execute as @s[tag=!Has_explosive_arrow] run function spells:spellsystem/spell1/spell1_a/usespell/usespell_lvl1
# si @s n'a pas encore activé la flèche explo -> l'active