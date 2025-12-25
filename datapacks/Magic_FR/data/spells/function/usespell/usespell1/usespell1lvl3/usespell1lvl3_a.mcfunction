# Gere l'activation du spell1lvl3 par un joueur archer

execute as @s[tag=Has_explosive_arrow] run function spells:spellsystem/spell1/spell1_a/rotate_arrow
# si @s a déjà activé la flèche explo -> la rotate

execute as @s[tag=!Has_explosive_arrow] run function spells:spellsystem/spell1/spell1_a/usespell/usespell_lvl3
# si @s n'a pas encore activé la flèche explo -> l'active