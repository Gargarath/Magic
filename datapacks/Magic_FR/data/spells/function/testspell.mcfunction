
tag @s remove save_inventory
								### 	ARENE LOBBY 	###

execute if items entity @s[tag=in_lobby_arena,scores={usespell=1..}] weapon.mainhand minecraft:carrot_on_a_stick[custom_data={quit_slot:1b}] run function lobby:arena/quit_arena


								### 	GUERRIER 	###

			# Weapon 1

execute if items entity @s[tag=warrior] weapon.mainhand minecraft:carrot_on_a_stick[custom_data={weapon1_slot:1b}] run function stuff:stuff_warrior/keybind3

			# Spell 1

	# Niveau 1
execute if entity @s[scores={spell1=1,usespell=1..,cooldownspell1=-1},tag=warrior] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell1_w:1b,spell1_slot:1b}}} run function spells:usespell/usespell1/usespell1lvl1/usespell1lvl1_w
# Si un guerrier utilise le Berzerk I (a un score de usespell=1.. (stat utiliser une map vierge) et tient l'objet Berzerk I en main) et à le droit -> lance la fonction spells:usespell/usespell1/usespell1lvl1/usespell1lvl1_w

	# Niveau 2
execute if entity @s[scores={spell1=2,usespell=1..,cooldownspell1=-1},tag=warrior] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell1_w:1b,spell1_slot:1b}}} run function spells:usespell/usespell1/usespell1lvl2/usespell1lvl2_w
# Si un guerrier utilise le Berzerk II (a un score de usespell=1.. (stat utiliser une map vierge) et tient l'objet Berzerk II en main) et à le droit -> lance la fonction spells:usespell/usespell1/usespell1lvl1/usespell1lvl2_w

	# Niveau 3
execute if entity @s[scores={spell1=3,usespell=1..,cooldownspell1=-1},tag=warrior] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell1_w:1b,spell1_slot:1b}}} run function spells:usespell/usespell1/usespell1lvl3/usespell1lvl3_w
# Si un guerrier utilise le Berzerk III (a un score de usespell=1.. (stat utiliser une map vierge) et tient l'objet Berzerk III en main) et à le droit -> lance la fonction spells:usespell/usespell1/usespell1lvl1/usespell1lvl3_w

			# Spell 2

	# Niveau 1
execute if entity @s[scores={spell2=1,usespell=1..,cooldownspell2=-1},tag=warrior] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell2_w:1b,spell2_slot:1b}}} run function spells:usespell/usespell2/usespell2lvl1/usespell2lvl1_w
# Si un guerrier utilise le Drapeau de ralliement I (a un score de usespell=1.. (stat utiliser une map vierge) et tient l'objet Drapeau de ralliement I en main) et à le droit -> lance la fonction spells:usespell/usespell2/usespell2lvl1/usespell2lvl1_w

	# Niveau 2
execute if entity @s[scores={spell2=2,usespell=1..,cooldownspell2=-1},tag=warrior] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell2_w:1b,spell2_slot:1b}}} run function spells:usespell/usespell2/usespell2lvl2/usespell2lvl2_w
# Si un guerrier utilise le Drapeau de ralliement II (a un score de usespell=1.. (stat utiliser une map vierge) et tient l'objet Drapeau de ralliement II en main) et à le droit -> lance la fonction spells:usespell/usespell2/usespell2lvl2/usespell2lvl2_w

	# Niveau 3
execute if entity @s[scores={spell2=3,usespell=1..,cooldownspell2=-1},tag=warrior] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell2_w:1b,spell2_slot:1b}}} run function spells:usespell/usespell2/usespell2lvl3/usespell2lvl3_w
# Si un guerrier utilise le Drapeau de ralliement III (a un score de usespell=1.. (stat utiliser une map vierge) et tient l'objet Drapeau de ralliement III en main) et à le droit -> lance la fonction spells:usespell/usespell2/usespell2lvl3/usespell2lvl3_w

			# Spell 3

	# Niveau 1
execute if entity @s[scores={spell3=1,usespell=1..,cooldownspell3=-1},tag=warrior] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell3_w:1b,spell3_slot:1b}}} run function spells:usespell/usespell3/usespell3lvl1/usespell3lvl1_w
# Si un guerrier utilise le Grappin I (a un score de usespell=1.. (stat utiliser une map vierge) et tient l'objet Grappin I en main) et à le droit -> lance la fonction spells:usespell/usespell3/usespell3lvl1/usespell3lvl1_w



								###   ARCHER  	###

			# Spell 1
			
	# Niveau 1
execute if entity @s[scores={spell1=1,usespell=1..,cooldownspell1=-1},tag=archer] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell1_a:1b,spell1_slot:1b}}} run function spells:usespell/usespell1/usespell1lvl1/usespell1lvl1_a
# Si un archer utilise la flèche explosive I (a un score de usespell=1.. (stat utiliser une map vierge) et tient l'objet flèche explosive I en main) et à le droit -> lance la fonction spells:usespell/usespell1/usespell1lvl1/usespell1lvl1_a

	# Niveau 2
execute if entity @s[scores={spell1=2,usespell=1..,cooldownspell1=-1},tag=archer] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell1_a:1b,spell1_slot:1b}}} run function spells:usespell/usespell1/usespell1lvl2/usespell1lvl2_a
# Si un archer utilise la flèche explosive II (a un score de usespell=1.. (stat utiliser une map vierge) et tient l'objet flèche explosive II en main) et à le droit -> lance la fonction spells:usespell/usespell1/usespell1lvl1/usespell1lvl2_a

	# Niveau 3
execute if entity @s[scores={spell1=3,usespell=1..,cooldownspell1=-1},tag=archer] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell1_a:1b,spell1_slot:1b}}} run function spells:usespell/usespell1/usespell1lvl3/usespell1lvl3_a
# Si un archer utilise la flèche explosive III (a un score de usespell=1.. (stat utiliser une map vierge) et tient l'objet flèche explosive III en main) et à le droit -> lance la fonction spells:usespell/usespell1/usespell1lvl1/usespell1lvl3_a

			# Spell 2

	# Niveau 1 - Poser
execute if entity @s[scores={spell2=1,usespell=1..,cooldownspell2=-1},tag=archer,tag=!have_trap] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell2_a:1b,spell2_slot:1b}}} run function spells:usespell/usespell2/usespell2lvl1/usespell2lvl1_a
# Si un archer utilise le piège I poser en main -> lance la fonction spells:usespell/usespell2/usespell2lvl1/usespell2lvl1_a

	# Niveau 1 - Détruire
execute if entity @s[scores={spell2=1,usespell=1..,cooldownspell2=-1},tag=archer,tag=have_trap] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell2_a:1b,spell2_slot:1b}}} run function spells:spellsystem/spell2/spell2_a/destroy_own_trap
# Si un archer utilise le piège I détruire en main -> lance la fonction spells:spellsystem/spell2/spell2_a/destroy_own_trap

	# Niveau 2 - Poser
execute if entity @s[scores={spell2=2,usespell=1..,cooldownspell2=-1},tag=archer,tag=!have_trap] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell2_a:1b,spell2_slot:1b}}} run function spells:usespell/usespell2/usespell2lvl2/usespell2lvl2_a

	# Niveau 2 - Détruire
execute if entity @s[scores={spell2=2,usespell=1..,cooldownspell2=-1},tag=archer,tag=have_trap] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell2_a:1b,spell2_slot:1b}}} run function spells:spellsystem/spell2/spell2_a/destroy_own_trap

	# Niveau 3 - Poser
execute if entity @s[scores={spell2=3,usespell=1..,cooldownspell2=-1},tag=archer,tag=!have_trap] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell2_a:1b,spell2_slot:1b}}} run function spells:usespell/usespell2/usespell2lvl3/usespell2lvl3_a

	# Niveau 3 - Détruire
execute if entity @s[scores={spell2=3,usespell=1..,cooldownspell2=-1},tag=archer,tag=have_trap] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell2_a:1b,spell2_slot:1b}}} run function spells:spellsystem/spell2/spell2_a/destroy_own_trap

			# Spell 3
			
	# Niveau 1
execute if entity @s[scores={spell3=1,usespell=1..,cooldownspell3=-1},tag=archer] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell3_a:1b,spell3_slot:1b}}} run function spells:usespell/usespell3/usespell3lvl1/usespell3lvl1_a

	# Niveau 2
execute if entity @s[scores={spell3=2,usespell=1..,cooldownspell3=-1},tag=archer] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell3_a:1b,spell3_slot:1b}}} run function spells:usespell/usespell3/usespell3lvl2/usespell3lvl2_a

	# Niveau 3
execute if entity @s[scores={spell3=3,usespell=1..,cooldownspell3=-1},tag=archer] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell3_a:1b,spell3_slot:1b}}} run function spells:usespell/usespell3/usespell3lvl3/usespell3lvl3_a


								###   MAGE  	###

			# Spell 1
			
	# Niveau 1
execute if entity @s[scores={spell1=1,usespell=1..,cooldownspell1=-1},tag=mage] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell1_m:1b,spell1_slot:1b}}} run function spells:usespell/usespell1/usespell1lvl1/usespell1lvl1_m

	# Niveau 2
execute if entity @s[scores={spell1=2,usespell=1..,cooldownspell1=-1},tag=mage] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell1_m:1b,spell1_slot:1b}}} run function spells:usespell/usespell1/usespell1lvl2/usespell1lvl2_m

	# Niveau 3
execute if entity @s[scores={spell1=3,usespell=1..,cooldownspell1=-1},tag=mage] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell1_m:1b,spell1_slot:1b}}} run function spells:usespell/usespell1/usespell1lvl3/usespell1lvl3_m

			# Spell 2
			
	# Niveau 1
execute if entity @s[scores={spell2=1,usespell=1..,cooldownspell2=-1},tag=mage] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell2_m:1b,spell2_slot:1b}}} run function spells:usespell/usespell2/usespell2lvl1/usespell2lvl1_m

	# Niveau 2
execute if entity @s[scores={spell2=2,usespell=1..,cooldownspell2=-1},tag=mage] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell2_m:1b,spell2_slot:1b}}} run function spells:usespell/usespell2/usespell2lvl2/usespell2lvl2_m

	# Niveau 3
execute if entity @s[scores={spell2=3,usespell=1..,cooldownspell2=-1},tag=mage] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell2_m:1b,spell2_slot:1b}}} run function spells:usespell/usespell2/usespell2lvl3/usespell2lvl3_m

			# Spell 3
			
	# Niveau 1
execute if entity @s[scores={spell3=1,usespell=1..,cooldownspell3=-1},tag=mage] if data entity @s SelectedItem{components:{"minecraft:custom_data":{spell3_m:1b,spell3_slot:1b}}} run function spells:usespell/usespell3/usespell3lvl1/usespell3lvl1_m


								###   ASSASSIN  	###

			# Weapon 1

execute if items entity @s[tag=rogue] weapon.mainhand minecraft:carrot_on_a_stick[custom_data={weapon1_slot:1b}] run function stuff:stuff_rogue/keybind3

			# Spell 1
			
	# Niveau 1
execute if entity @s[scores={spell1=1,usespell=1..,cooldownspell1=-1},tag=rogue] if data entity @s SelectedItem{components:{"minecraft:custom_name":{text:"Embuscade I"}}} run function spells:usespell/usespell1/usespell1lvl1/usespell1lvl1_r

	# Niveau 2
execute if entity @s[scores={spell1=2,usespell=1..,cooldownspell1=-1},tag=rogue] if data entity @s SelectedItem{components:{"minecraft:custom_name":{text:"Embuscade II"}}} run function spells:usespell/usespell1/usespell1lvl2/usespell1lvl2_r

	# Niveau 3
execute if entity @s[scores={spell1=3,usespell=1..,cooldownspell1=-1},tag=rogue] if data entity @s SelectedItem{components:{"minecraft:custom_name":{text:"Embuscade III"}}} run function spells:usespell/usespell1/usespell1lvl3/usespell1lvl3_r

			# Spell 2

	# Niveau 1 - Poser
execute if entity @s[scores={spell2=1,usespell=1..,cooldownspell2=-1},tag=rogue] if data entity @s SelectedItem{components:{"minecraft:custom_name":{text:"Voie des ombres - Poser"}}} run function spells:usespell/usespell2/usespell2lvl1/usespell2lvl1_r

	# Niveau 1 - Utiliser
execute if entity @s[scores={spell2=1,usespell=1..,cooldownspell2=-1},tag=rogue] if data entity @s SelectedItem{components:{"minecraft:custom_name":{text:"Voie des ombres - Utiliser"}}} run function spells:spellsystem/spell2/spell2_r/tpbackup_r

			# Spell 3
			
execute if entity @s[scores={spell3=1,usespell=1..,cooldownspell3=-1},tag=rogue] if data entity @s SelectedItem{components:{"minecraft:custom_name":{text:"Bombe d'ombre"}}} at @s run function spells:usespell/usespell3/usespell3lvl1/usespell3lvl1_r

tag @s add save_inventory