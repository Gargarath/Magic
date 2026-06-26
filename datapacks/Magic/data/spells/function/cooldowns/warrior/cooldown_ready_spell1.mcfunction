## appelée par cooldownspell1_clock si @s est un guerrier

	# Niveau 1
execute as @s[scores={spell1=1}] run function spells:cdready/cdreadyspell1/cdreadyspell1lvl1/cdreadyspell1lvl1_w

	# Niveau 2
execute as @s[scores={spell1=2}] run function spells:cdready/cdreadyspell1/cdreadyspell1lvl2/cdreadyspell1lvl2_w

	# Niveau 3
execute as @s[scores={spell1=3}] run function spells:cdready/cdreadyspell1/cdreadyspell1lvl3/cdreadyspell1lvl3_w