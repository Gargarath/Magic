#Permet d'équiper tous les joueurs avec leur équipement.

execute as @a[tag=warrior,scores={Player=1..}] run function stuff:stuff_warrior/stuffwarrior
execute as @a[tag=archer,scores={Player=1..}] run function stuff:stuff_archer/stuffarcher
execute as @a[tag=mage,scores={Player=1..}] run function stuff:stuff_mage/stuffmage
execute as @a[tag=rogue,scores={Player=1..},tag=!invisibility_r] run function stuff:stuff_rogue/stuffrogue
execute as @a[tag=rogue,scores={Player=1..},tag=invisibility_r] run function stuff:stuff_rogue/stuffrogue_invisible
