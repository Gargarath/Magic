## appelé par determine_slot
## donne son sort à @s selon son numéro de slot

# Niveau 1 - Détruire
item replace entity @s[scores={spell2=1},tag=have_trap] hotbar.4 from block 17 95 13 container.9
# Niveau 2 - Détruire
item replace entity @s[scores={spell2=2},tag=have_trap] hotbar.4 from block 17 95 13 container.10
# Niveau 3 - Détruire
item replace entity @s[scores={spell2=3},tag=have_trap] hotbar.4 from block 17 95 13 container.11

# Niveau 1 - Placer
item replace entity @s[tag=!have_trap,scores={spell2=1}] hotbar.4 from block 17 95 13 container.15
# Niveau 2 - Placer
item replace entity @s[tag=!have_trap,scores={spell2=2}] hotbar.4 from block 17 95 13 container.16
# Niveau 3 - Placer
item replace entity @s[tag=!have_trap,scores={spell2=3}] hotbar.4 from block 17 95 13 container.17