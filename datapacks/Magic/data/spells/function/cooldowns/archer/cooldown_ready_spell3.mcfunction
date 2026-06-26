## appelée par cooldownspell3_clock si @s est un archer

	# Niveau 1
execute as @s[scores={spell3=1}] run function spells:cdready/cdreadyspell3/cdreadyspell3lvl1/cdreadyspell3lvl1_a

	# Niveau 2
execute as @s[scores={spell3=2}] run function spells:cdready/cdreadyspell3/cdreadyspell3lvl2/cdreadyspell3lvl2_a

	# Niveau 3
execute as @s[scores={spell3=3}] run function spells:cdready/cdreadyspell3/cdreadyspell3lvl3/cdreadyspell3lvl3_a