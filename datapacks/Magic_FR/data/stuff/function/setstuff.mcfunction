#Permet d'équiper tous les joueurs avec leur équipement.

tag @s remove save_inventory
execute as @a[tag=warrior,team=!spectator] run function stuff:stuff_warrior/stuffwarrior
execute as @a[tag=archer,team=!spectator] run function stuff:stuff_archer/stuffarcher
execute as @a[tag=mage,team=!spectator] run function stuff:stuff_mage/stuffmage
execute as @a[tag=rogue,team=!spectator,tag=!invisibility_r] run function stuff:stuff_rogue/stuffrogue
execute as @a[tag=rogue,team=!spectator,tag=invisibility_r] run function stuff:stuff_rogue/stuffrogue_invisible
tag @s add save_inventory