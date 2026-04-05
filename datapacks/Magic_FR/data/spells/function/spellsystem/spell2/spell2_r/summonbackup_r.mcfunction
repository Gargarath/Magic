# appelée par spells:usespell/usepell2/usespell2lvl1/usespell2lvl_r 

execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["backup_r"],DisabledSlots:4144959}
execute at @s[team=blue,tag=!no_team] run summon wandering_trader ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:500f,Tags:["backup_r","blue"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:500}],Offers:{}}
execute at @s[team=red,tag=!no_team] run summon wandering_trader ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:500f,Tags:["backup_r","red"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:500}],Offers:{}}
execute at @s[tag=no_team] run summon wandering_trader ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:500f,Tags:["backup_r","no_team"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:500}],Offers:{}}

execute unless entity @s[tag=have_backup_r] unless entity @e[tag=backup_r,scores={backup_number_r=1},type=armor_stand] run function spells:spellsystem/spell2/spell2_r/testbackup/testbackup1
# lance la fonction qui permet d'avoir le score backup_number_r a 1 si personne ne l'a déjà et que @s n'a pas déjà trouvé de backup_number_r
execute unless entity @s[tag=have_backup_r] unless entity @e[tag=backup_r,scores={backup_number_r=2},type=armor_stand] run function spells:spellsystem/spell2/spell2_r/testbackup/testbackup2
# lance la fonction qui permet d'avoir le score backup_number_r a 2 si personne ne l'a déjà et que @s n'a pas déjà trouvé de backup_number_r
execute unless entity @s[tag=have_backup_r] unless entity @e[tag=backup_r,scores={backup_number_r=3},type=armor_stand] run function spells:spellsystem/spell2/spell2_r/testbackup/testbackup3
# lance la fonction qui permet d'avoir le score backup_number_r a 3 si personne ne l'a déjà et que @s n'a pas déjà trouvé de backup_number_r
execute unless entity @s[tag=have_backup_r] unless entity @e[tag=backup_r,scores={backup_number_r=4},type=armor_stand] run function spells:spellsystem/spell2/spell2_r/testbackup/testbackup4
# lance la fonction qui permet d'avoir le score backup_number_r a 4 si personne ne l'a déjà et que @s n'a pas déjà trouvé de backup_number_r
execute unless entity @s[tag=have_backup_r] unless entity @e[tag=backup_r,scores={backup_number_r=5},type=armor_stand] run function spells:spellsystem/spell2/spell2_r/testbackup/testbackup5
# lance la fonction qui permet d'avoir le score backup_number_r a 5 si personne ne l'a déjà et que @s n'a pas déjà trouvé de backup_number_r
execute unless entity @s[tag=have_backup_r] unless entity @e[tag=backup_r,scores={backup_number_r=6},type=armor_stand] run function spells:spellsystem/spell2/spell2_r/testbackup/testbackup6
# lance la fonction qui permet d'avoir le score backup_number_r a 6 si personne ne l'a déjà et que @s n'a pas déjà trouvé de backup_number_r
execute unless entity @s[tag=have_backup_r] unless entity @e[tag=backup_r,scores={backup_number_r=7},type=armor_stand] run function spells:spellsystem/spell2/spell2_r/testbackup/testbackup7
# lance la fonction qui permet d'avoir le score backup_number_r a 7 si personne ne l'a déjà et que @s n'a pas déjà trouvé de backup_number_r
execute unless entity @s[tag=have_backup_r] unless entity @e[tag=backup_r,scores={backup_number_r=8},type=armor_stand] run function spells:spellsystem/spell2/spell2_r/testbackup/testbackup8
# lance la fonction qui permet d'avoir le score backup_number_r a 8 si personne ne l'a déjà et que @s n'a pas déjà trouvé de backup_number_r
execute unless entity @s[tag=have_backup_r] unless entity @e[tag=backup_r,scores={backup_number_r=9},type=armor_stand] run function spells:spellsystem/spell2/spell2_r/testbackup/testbackup9
# lance la fonction qui permet d'avoir le score backup_number_r a 9 si personne ne l'a déjà et que @s n'a pas déjà trouvé de backup_number_r
execute unless entity @s[tag=have_backup_r] unless entity @e[tag=backup_r,scores={backup_number_r=10},type=armor_stand] run function spells:spellsystem/spell2/spell2_r/testbackup/testbackup10
# lance la fonction qui permet d'avoir le score backup_number_r a 10 si personne ne l'a déjà et que @s n'a pas déjà trouvé de backup_number_r
execute unless entity @s[tag=have_backup_r] unless entity @e[tag=backup_r,scores={backup_number_r=11},type=armor_stand] run function spells:spellsystem/spell2/spell2_r/testbackup/testbackup11
# lance la fonction qui permet d'avoir le score backup_number_r a 11 si personne ne l'a déjà et que @s n'a pas déjà trouvé de backup_number_r
execute unless entity @s[tag=have_backup_r] unless entity @e[tag=backup_r,scores={backup_number_r=12},type=armor_stand] run function spells:spellsystem/spell2/spell2_r/testbackup/testbackup12
# lance la fonction qui permet d'avoir le score backup_number_r a 12 si personne ne l'a déjà et que @s n'a pas déjà trouvé de backup_number_r