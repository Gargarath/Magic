
# Gere l'achat de plastrons


  # Niveau Max

execute at @s if entity @a[distance=..15,scores={chest=10},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:chest/maxbuychest/maxbuychest
# La commande du dessus execute la fonction maxbuychest pour le joueur qui a cliqué sur l'item frame chest mais a atteint le niveau max de l'objet

  # Niveau 10

execute at @s if entity @a[distance=..15,scores={PH=50..,chest=9},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:chest/buychest/buychestlvl10
# La commande du dessus execute la fonction buychestlvl10 pour le joueur qui a cliqué sur l'item frame chest et a assez d'argent

execute at @s if entity @a[distance=..15,scores={PH=..49,chest=9},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:chest/nobuychest/nobuychest
# La commande du dessus execute la fonction nobuychest pour le joueur qui a cliqué sur l'item frame chest mais n'a pas assez d'argent

  # Niveau 9

execute at @s if entity @a[distance=..15,scores={PH=45..,chest=8},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:chest/buychest/buychestlvl9
# La commande du dessus execute la fonction buychestlvl9 pour le joueur qui a cliqué sur l'item frame chest et a assez d'argent

execute at @s if entity @a[distance=..15,scores={PH=..44,chest=8},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:chest/nobuychest/nobuychest
# La commande du dessus execute la fonction nobuychest pour le joueur qui a cliqué sur l'item frame chest mais n'a pas assez d'argent

  # Niveau 8

execute at @s if entity @a[distance=..15,scores={PH=40..,chest=7},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:chest/buychest/buychestlvl8
# La commande du dessus execute la fonction buychestlvl8 pour le joueur qui a cliqué sur l'item frame chest et a assez d'argent

execute at @s if entity @a[distance=..15,scores={PH=..39,chest=7},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:chest/nobuychest/nobuychest
# La commande du dessus execute la fonction nobuychest pour le joueur qui a cliqué sur l'item frame chest mais n'a pas assez d'argent

  # Niveau 7

execute at @s if entity @a[distance=..15,scores={PH=35..,chest=6},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:chest/buychest/buychestlvl7
# La commande du dessus execute la fonction buychestlvl7 pour le joueur qui a cliqué sur l'item frame chest et a assez d'argent

execute at @s if entity @a[distance=..15,scores={PH=..34,chest=6},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:chest/nobuychest/nobuychest
# La commande du dessus execute la fonction nobuychest pour le joueur qui a cliqué sur l'item frame chest mais n'a pas assez d'argent

  # Niveau 6

execute at @s if entity @a[distance=..15,scores={PH=30..,chest=5},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:chest/buychest/buychestlvl6
# La commande du dessus execute la fonction buychestlvl6 pour le joueur qui a cliqué sur l'item frame chest et a assez d'argent

execute at @s if entity @a[distance=..15,scores={PH=..29,chest=5},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:chest/nobuychest/nobuychest
# La commande du dessus execute la fonction nobuychest pour le joueur qui a cliqué sur l'item frame chest mais n'a pas assez d'argent

  # Niveau 5

execute at @s if entity @a[distance=..15,scores={PH=25..,chest=4},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:chest/buychest/buychestlvl5
# La commande du dessus execute la fonction buychestlvl5 pour le joueur qui a cliqué sur l'item frame chest et a assez d'argent

execute at @s if entity @a[distance=..15,scores={PH=..24,chest=4},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:chest/nobuychest/nobuychest
# La commande du dessus execute la fonction nobuychest pour le joueur qui a cliqué sur l'item frame chest mais n'a pas assez d'argent

  # Niveau 4

execute at @s if entity @a[distance=..15,scores={PH=20..,chest=3},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:chest/buychest/buychestlvl4
# La commande du dessus execute la fonction buychestlvl4 pour le joueur qui a cliqué sur l'item frame chest et a assez d'argent

execute at @s if entity @a[distance=..15,scores={PH=..19,chest=3},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:chest/nobuychest/nobuychest
# La commande du dessus execute la fonction nobuychest pour le joueur qui a cliqué sur l'item frame chest mais n'a pas assez d'argent

  # Niveau 3

execute at @s if entity @a[distance=..15,scores={PH=15..,chest=2},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:chest/buychest/buychestlvl3
# La commande du dessus execute la fonction buychestlvl3 pour le joueur qui a cliqué sur l'item frame chest et a assez d'argent

execute at @s if entity @a[distance=..15,scores={PH=..14,chest=2},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:chest/nobuychest/nobuychest
# La commande du dessus execute la fonction nobuychest pour le joueur qui a cliqué sur l'item frame chest mais n'a pas assez d'argent

  # Niveau 2

execute at @s if entity @a[distance=..15,scores={PH=10..,chest=1},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:chest/buychest/buychestlvl2
# La commande du dessus execute la fonction buychestlvl2 pour le joueur qui a cliqué sur l'item frame chest et a assez d'argent

execute at @s if entity @a[distance=..15,scores={PH=..9,chest=1},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:chest/nobuychest/nobuychest
# La commande du dessus execute la fonction nobuychest pour le joueur qui a cliqué sur l'item frame chest mais n'a pas assez d'argent

  # Niveau 1

execute at @s if entity @a[distance=..15,scores={PH=5..,chest=0},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:chest/buychest/buychestlvl1
# La commande du dessus execute la fonction buychestlvl1 pour le joueur qui a cliqué sur l'item frame chest et a assez d'argent

execute at @s if entity @a[distance=..15,scores={PH=..4,chest=0},gamemode=!spectator] as @p[distance=..15,gamemode=!spectator] run function shop:chest/nobuychest/nobuychest
# La commande du dessus execute la fonction nobuychest pour le joueur qui a cliqué sur l'item frame chest mais n'a pas assez d'argent