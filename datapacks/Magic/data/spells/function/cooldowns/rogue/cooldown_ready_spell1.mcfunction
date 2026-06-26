## appelée par cooldownspell1_clock si @s est un assassin

	# Niveau 1
execute as @s[scores={spell1=1}] run function spells:cdready/cdreadyspell1/cdreadyspell1lvl1/cdreadyspell1lvl1_r

	# Niveau 2
execute as @s[scores={spell1=2}] run function spells:cdready/cdreadyspell1/cdreadyspell1lvl2/cdreadyspell1lvl2_r

	# Niveau 3
execute as @s[scores={spell1=3}] run function spells:cdready/cdreadyspell1/cdreadyspell1lvl3/cdreadyspell1lvl3_r