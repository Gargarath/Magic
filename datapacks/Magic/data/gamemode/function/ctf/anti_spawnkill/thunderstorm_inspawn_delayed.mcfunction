## appelée par thunderstorm_in_spawn
## permet d'enlever le tag no_more_thunder_delayed à @s (qui permet de ne pas afficher la bossbar de tempête de foudre si celle ci est annulée car elle est dans un spawn)

execute as @a[tag=no_more_thunder_delayed] run function spells:spellsystem/spell2/spell2_m/no_more_thunderstorm

tag @a[tag=no_more_thunder_delayed] remove no_more_thunder_delayed