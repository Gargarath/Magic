											## ITEM EXCLUSIFS AU GUERRIER ##

			# shop spell2


  # Niveau Max

execute at @s if entity @p[tag=warrior,distance=..15,scores={spell2=3},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/maxbuyspell2/maxbuyspell2_w
# La commande du dessus execute la fonction shop:maxbuyspell2_w pour le joueur avec le tag=warrior (= un guerrier) qui a cliqué sur l'item frame spell2 mais a atteint le niveau max de l'objet

# Niveau 3

execute at @s if entity @p[tag=warrior,distance=..15,scores={PH=90..,spell2=2},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/buyspell2/buyspell2lvl3_w
# La commande du dessus execute la fonction shop:buyspell2lvl3_w pour le joueur avec le tag=warrior (= un guerrier) qui a cliqué sur l'item frame spell2 et a assez d'argent

execute at @s if entity @p[tag=warrior,distance=..15,scores={PH=..89,spell2=2},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/nobuyspell2/nobuyspell2_w
# La commande du dessus execute la fonction shop:spell2/nobuyspell2/nobuyspell2_w pour le joueur avec le tag=warrior (= un guerrier) qui a cliqué sur l'item frame spell2 et n'a pas assez d'argent

# Niveau 2

execute at @s if entity @p[tag=warrior,distance=..15,scores={PH=60..,spell2=1},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/buyspell2/buyspell2lvl2_w
# La commande du dessus execute la fonction shop:buyspell2lvl2_w pour le joueur avec le tag=warrior (= un guerrier) qui a cliqué sur l'item frame spell2 et a assez d'argent

execute at @s if entity @p[tag=warrior,distance=..15,scores={PH=..59,spell2=1},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/nobuyspell2/nobuyspell2_w
# La commande du dessus execute la fonction shop:spell2/nobuyspell2/nobuyspell2_w pour le joueur avec le tag=warrior (= un guerrier) qui a cliqué sur l'item frame spell2 et n'a pas assez d'argent

  # Niveau 1

execute at @s if entity @p[tag=warrior,distance=..15,scores={PH=40..,spell2=0},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/buyspell2/buyspell2lvl1_w
# La commande du dessus execute la fonction shop:buyspell2lvl1_w pour le joueur avec le tag=warrior (= un guerrier) qui a cliqué sur l'item frame spell2 et a assez d'argent

execute at @s if entity @p[tag=warrior,distance=..15,scores={PH=..39,spell2=0},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/nobuyspell2/nobuyspell2_w
# La commande du dessus execute la fonction shop:spell2/nobuyspell2/nobuyspell2_w pour le joueur avec le tag=warrior (= un guerrier) qui a cliqué sur l'item frame spell2 et n'a pas assez d'argent


											## ITEM EXCLUSIFS A L'ARCHER ##

			# shop spell2


  # Niveau Max

execute at @s if entity @p[tag=archer,distance=..15,scores={spell2=3},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/maxbuyspell2/maxbuyspell2_a
# La commande du dessus execute la fonction shop:maxbuyspell2_a pour le joueur avec le tag=archer (= un archer) qui a cliqué sur l'item frame spell2 mais a atteint le niveau max de l'objet

# Niveau 3

execute at @s if entity @p[tag=archer,distance=..15,scores={PH=90..,spell2=2},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/buyspell2/buyspell2lvl3_a
# La commande du dessus execute la fonction shop:buyspell2lvl3_a pour le joueur avec le tag=archer (= un archer) qui a cliqué sur l'item frame spell2 et a assez d'argent

execute at @s if entity @p[tag=archer,distance=..15,scores={PH=..89,spell2=2},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/nobuyspell2/nobuyspell2_a
# La commande du dessus execute la fonction shop:spell2/nobuyspell2/nobuyspell2_a pour le joueur avec le tag=archer (= un archer) qui a cliqué sur l'item frame spell2 et n'a pas assez d'argent

# Niveau 2

execute at @s if entity @p[tag=archer,distance=..15,scores={PH=60..,spell2=1},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/buyspell2/buyspell2lvl2_a
# La commande du dessus execute la fonction shop:buyspell2lvl2_a pour le joueur avec le tag=archer (= un archer) qui a cliqué sur l'item frame spell2 et a assez d'argent

execute at @s if entity @p[tag=archer,distance=..15,scores={PH=..59,spell2=1},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/nobuyspell2/nobuyspell2_a
# La commande du dessus execute la fonction shop:spell2/nobuyspell2/nobuyspell2_a pour le joueur avec le tag=archer (= un archer) qui a cliqué sur l'item frame spell2 et n'a pas assez d'argent

  # Niveau 1

execute at @s if entity @p[tag=archer,distance=..15,scores={PH=30..,spell2=0},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/buyspell2/buyspell2lvl1_a
# La commande du dessus execute la fonction shop:buyspell2lvl1_a pour le joueur avec le tag=archer (= un archer) qui a cliqué sur l'item frame spell2 et a assez d'argent

execute at @s if entity @p[tag=archer,distance=..15,scores={PH=..29,spell2=0},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/nobuyspell2/nobuyspell2_a
# La commande du dessus execute la fonction shop:spell2/nobuyspell2/nobuyspell2_a pour le joueur avec le tag=archer (= un archer) qui a cliqué sur l'item frame spell2 et n'a pas assez d'argent


											## ITEM EXCLUSIFS AU MAGE ##

			# shop spell2


  # Niveau Max

execute at @s if entity @p[tag=mage,distance=..15,scores={spell2=3},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/maxbuyspell2/maxbuyspell2_m
# La commande du dessus execute la fonction shop:maxbuyspell2_m pour le joueur avec le tag=mage (= un mage) qui a cliqué sur l'item frame spell2 mais a atteint le niveau max de l'objet

   # Niveau 3

execute at @s if entity @p[tag=mage,distance=..15,scores={PH=150..,spell2=2},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/buyspell2/buyspell2lvl3_m
# La commande du dessus execute la fonction shop:buyspell2lvl3_m pour le joueur avec le tag=mage (= un mage) qui a cliqué sur l'item frame spell2 et a assez d'argent

execute at @s if entity @p[tag=mage,distance=..15,scores={PH=..149,spell2=2},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/nobuyspell2/nobuyspell2_m
# La commande du dessus execute la fonction shop:spell2/nobuyspell2/nobuyspell2_m pour le joueur avec le tag=mage (= un mage) qui a cliqué sur l'item frame spell2 et n'a pas assez d'argent

   # Niveau 2

execute at @s if entity @p[tag=mage,distance=..15,scores={PH=60..,spell2=1},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/buyspell2/buyspell2lvl2_m
# La commande du dessus execute la fonction shop:buyspell2lvl2_m pour le joueur avec le tag=mage (= un mage) qui a cliqué sur l'item frame spell2 et a assez d'argent

execute at @s if entity @p[tag=mage,distance=..15,scores={PH=..59,spell2=1},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/nobuyspell2/nobuyspell2_m
# La commande du dessus execute la fonction shop:spell2/nobuyspell2/nobuyspell2_m pour le joueur avec le tag=mage (= un mage) qui a cliqué sur l'item frame spell2 et n'a pas assez d'argent

  # Niveau 1

execute at @s if entity @p[tag=mage,distance=..15,scores={PH=30..,spell2=0},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/buyspell2/buyspell2lvl1_m
# La commande du dessus execute la fonction shop:buyspell2lvl1_m pour le joueur avec le tag=mage (= un mage) qui a cliqué sur l'item frame spell2 et a assez d'argent

execute at @s if entity @p[tag=mage,distance=..15,scores={PH=..29,spell2=0},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/nobuyspell2/nobuyspell2_m
# La commande du dessus execute la fonction shop:spell2/nobuyspell2/nobuyspell2_m pour le joueur avec le tag=mage (= un mage) qui a cliqué sur l'item frame spell2 et n'a pas assez d'argent


											## ITEM EXCLUSIFS A L'ASSASSIN ##

			# shop spell2

  # Niveau Max

execute at @s if entity @p[tag=rogue,distance=..15,scores={spell2=1},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/maxbuyspell2/maxbuyspell2_r
# La commande du dessus execute la fonction shop:maxbuyspell2_r pour le joueur avec le tag=rogue (= un Assassin) qui a cliqué sur l'item frame spell2 mais a atteint le niveau max de l'objet


  # Niveau 1

execute at @s if entity @p[tag=rogue,distance=..15,scores={PH=100..,spell2=0},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/buyspell2/buyspell2lvl1_r
# La commande du dessus execute la fonction shop:buyspell2lvl1_r pour le joueur avec le tag=rogue (= un Assassin) qui a cliqué sur l'item frame spell2 et a assez d'argent

execute at @s if entity @p[tag=rogue,distance=..15,scores={PH=..99,spell2=0},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:spell2/nobuyspell2/nobuyspell2_r
# La commande du dessus execute la fonction shop:spell2/nobuyspell2/nobuyspell2_r pour le joueur avec le tag=rogue (= un Assassin) qui a cliqué sur l'item frame spell2 et n'a pas assez d'argent