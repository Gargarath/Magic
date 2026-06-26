## appelée par cooldownspell1_clock si @s est un archer

	# Niveau 1
execute as @s[scores={spell1=1}] run function spells:cdready/cdreadyspell1/cdreadyspell1lvl1/cdreadyspell1lvl1_a
# si le joueur a le sort1 niveau 1 lance la fonction cdreadyspell1lvl1_a

	# Niveau 2
execute as @s[scores={spell1=2}] run function spells:cdready/cdreadyspell1/cdreadyspell1lvl2/cdreadyspell1lvl2_a
# si le joueur a le sort1 niveau 2 lance la fonction cdreadyspell1lvl2_a

	# Niveau 3
execute as @s[scores={spell1=3}] run function spells:cdready/cdreadyspell1/cdreadyspell1lvl3/cdreadyspell1lvl3_a
# si le joueur a le sort1 niveau 3 lance la fonction cdreadyspell1lvl3_a