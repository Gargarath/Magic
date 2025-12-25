## appelée par cooldownspell2_clock si @s est un guerrier

	# Niveau 1
execute as @s[scores={spell2=1}] run function spells:cdready/cdreadyspell2/cdreadyspell2lvl1/cdreadyspell2lvl1_w

	# Niveau 2
execute as @s[scores={spell2=2}] run function spells:cdready/cdreadyspell2/cdreadyspell2lvl2/cdreadyspell2lvl2_w

	# Niveau 3
execute as @s[scores={spell2=3}] run function spells:cdready/cdreadyspell2/cdreadyspell2lvl3/cdreadyspell2lvl3_w