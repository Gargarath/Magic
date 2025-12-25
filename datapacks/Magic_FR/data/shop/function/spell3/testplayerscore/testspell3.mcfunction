											## ITEM EXCLUSIFS AU GUERRIER ##

			# shop spell3


  # Niveau Max

execute at @s if entity @p[tag=warrior,distance=..15,scores={spell3=1},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell3/maxbuyspell3/maxbuyspell3_w
# La commande du dessus execute la fonction shop:maxbuyspell3_w pour le joueur avec le tag=warrior (= un guerrier) qui a cliqué sur l'item frame spell3 mais a atteint le niveau max de l'objet

  # Niveau 1

execute at @s if entity @p[tag=warrior,distance=..15,scores={PH=60..,spell3=0},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell3/buyspell3/buyspell3lvl1_w
# La commande du dessus execute la fonction shop:buyspell3lvl1_w pour le joueur avec le tag=warrior (= un guerrier) qui a cliqué sur l'item frame spell3 et a assez d'argent

execute at @s if entity @p[tag=warrior,distance=..15,scores={PH=..59,spell3=0},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell3/nobuyspell3/nobuyspell3_w
# La commande du dessus execute la fonction shop:spell3/nobuyspell3/nobuyspell3_w pour le joueur avec le tag=warrior (= un guerrier) qui a cliqué sur l'item frame spell3 et n'a pas assez d'argent


											## ITEM EXCLUSIFS A L'ARCHER ##

			# shop spell3


  # Niveau Max

execute at @s if entity @p[tag=archer,distance=..15,scores={spell3=3},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell3/maxbuyspell3/maxbuyspell3_a
# La commande du dessus execute la fonction shop:maxbuyspell3_a pour le joueur avec le tag=archer (= un archer) qui a cliqué sur l'item frame spell3 mais a atteint le niveau max de l'objet

# Niveau 3

execute at @s if entity @p[tag=archer,distance=..15,scores={PH=240..,spell3=2},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell3/buyspell3/buyspell3lvl3_a
# La commande du dessus execute la fonction shop:buyspell3lvl3_a pour le joueur avec le tag=archer (= un archer) qui a cliqué sur l'item frame spell3 et a assez d'argent

execute at @s if entity @p[tag=archer,distance=..15,scores={PH=..239,spell3=2},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell3/nobuyspell3/nobuyspell3_a
# La commande du dessus execute la fonction shop:spell3/nobuyspell3/nobuyspell3_a pour le joueur avec le tag=archer (= un archer) qui a cliqué sur l'item frame spell3 et n'a pas assez d'argent

# Niveau 2

execute at @s if entity @p[tag=archer,distance=..15,scores={PH=150..,spell3=1},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell3/buyspell3/buyspell3lvl2_a
# La commande du dessus execute la fonction shop:buyspell3lvl2_a pour le joueur avec le tag=archer (= un archer) qui a cliqué sur l'item frame spell3 et a assez d'argent

execute at @s if entity @p[tag=archer,distance=..15,scores={PH=..149,spell3=1},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell3/nobuyspell3/nobuyspell3_a
# La commande du dessus execute la fonction shop:spell3/nobuyspell3/nobuyspell3_a pour le joueur avec le tag=archer (= un archer) qui a cliqué sur l'item frame spell3 et n'a pas assez d'argent

  # Niveau 1

execute at @s if entity @p[tag=archer,distance=..15,scores={PH=60..,spell3=0},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell3/buyspell3/buyspell3lvl1_a
# La commande du dessus execute la fonction shop:buyspell3lvl1_a pour le joueur avec le tag=archer (= un archer) qui a cliqué sur l'item frame spell3 et a assez d'argent

execute at @s if entity @p[tag=archer,distance=..15,scores={PH=..59,spell3=0},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell3/nobuyspell3/nobuyspell3_a
# La commande du dessus execute la fonction shop:spell3/nobuyspell3/nobuyspell3_a pour le joueur avec le tag=archer (= un archer) qui a cliqué sur l'item frame spell3 et n'a pas assez d'argent


											## ITEM EXCLUSIFS AU MAGE ##

			# shop spell3


  # Niveau Max

execute at @s if entity @p[tag=mage,distance=..15,scores={spell3=1},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell3/maxbuyspell3/maxbuyspell3_m
# La commande du dessus execute la fonction shop:maxbuyspell3_m pour le joueur avec le tag=mage (= un mage) qui a cliqué sur l'item frame spell3 mais a atteint le niveau max de l'objet

  # Niveau 1

execute at @s if entity @p[tag=mage,distance=..15,scores={PH=100..,spell3=0},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell3/buyspell3/buyspell3lvl1_m
# La commande du dessus execute la fonction shop:buyspell3lvl1_m pour le joueur avec le tag=mage (= un mage) qui a cliqué sur l'item frame spell3 et a assez d'argent

execute at @s if entity @p[tag=mage,distance=..15,scores={PH=..99,spell3=0},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell3/nobuyspell3/nobuyspell3_m
# La commande du dessus execute la fonction shop:spell3/nobuyspell3/nobuyspell3_m pour le joueur avec le tag=mage (= un mage) qui a cliqué sur l'item frame spell3 et n'a pas assez d'argent


											## ITEM EXCLUSIFS A L'ASSASSIN ##

			# shop spell3

  # Niveau Max

execute at @s if entity @p[tag=rogue,distance=..15,scores={spell3=1},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell3/maxbuyspell3/maxbuyspell3_r
# La commande du dessus execute la fonction shop:maxbuyspell3_r pour le joueur avec le tag=rogue (= un Assassin) qui a cliqué sur l'item frame spell3 mais a atteint le niveau max de l'objet

   # Niveau 1

execute at @s if entity @p[tag=rogue,distance=..15,scores={PH=90..,spell3=0},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell3/buyspell3/buyspell3lvl1_r
# La commande du dessus execute la fonction shop:buyspell3lvl1_r pour le joueur avec le tag=rogue (= un Assassin) qui a cliqué sur l'item frame spell3 et a assez d'argent

execute at @s if entity @p[tag=rogue,distance=..15,scores={PH=..89,spell3=0},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell3/nobuyspell3/nobuyspell3_r
# La commande du dessus execute la fonction shop:spell3/nobuyspell3/nobuyspell3_r pour le joueur avec le tag=rogue (= un Assassin) qui a cliqué sur l'item frame spell3 et n'a pas assez d'argent