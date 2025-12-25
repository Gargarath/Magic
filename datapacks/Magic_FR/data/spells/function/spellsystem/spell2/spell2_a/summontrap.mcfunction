## appelée par launchttrap/launch
## permet de poser le piège à ours

execute at @s run playsound minecraft:entity.armor_stand.hit master @a[distance=..10] ~ ~ ~ 100 1

summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["trap"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:purpur_slab",count:1}}}

# invoque l'armorstand trap 1
execute if entity @s[tag=blue_owner,scores={spell2=1}] run summon wandering_trader ~ ~-0.5 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:500f,Tags:["trap","blue","trap1"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:500},{id:"minecraft:scale",base:0.5}],Offers:{}}
# invoque un wandering_trader tag blue et trap 1 si le joueur est team blue et à le spell 2 lvl 1
execute if entity @s[tag=red_owner,scores={spell2=1}] run summon wandering_trader ~ ~-0.7 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:500f,Tags:["trap","red","trap1"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:500},{id:"minecraft:scale",base:0.5}],Offers:{}}
# invoque un wandering_trader tag red et trap 1 si le joueur est team red et à le spell 2 lvl 1
execute if entity @s[tag=no_team_owner,scores={spell2=1}] run summon wandering_trader ~ ~-0.7 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:500f,Tags:["trap","no_team","trap1"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:500},{id:"minecraft:scale",base:0.5}],Offers:{}}
# invoque un wandering_trader tag no_team_owner et trap 1 si le joueur est sans équipe et à le spell 2 lvl 1

execute if entity @s[tag=blue_owner,scores={spell2=2}] run summon wandering_trader ~ ~-0.7 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:500f,Tags:["trap","blue","trap2"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:500},{id:"minecraft:scale",base:0.5}],Offers:{}}
# invoque un wandering_trader tag blue et trap 2 si le joueur est team blue et à le spell 2 lvl 2
execute if entity @s[tag=red_owner,scores={spell2=2}] run summon wandering_trader ~ ~-0.7 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:500f,Tags:["trap","red","trap2"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:500},{id:"minecraft:scale",base:0.5}],Offers:{}}
# invoque un wandering_trader tag red et trap 2 si le joueur est team red et à le spell 2 lvl 2
execute if entity @s[tag=no_team_owner,scores={spell2=2}] run summon wandering_trader ~ ~-0.7 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:500f,Tags:["trap","no_team","trap2"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:500},{id:"minecraft:scale",base:0.5}],Offers:{}}
# invoque un wandering_trader tag no_team_owner et trap 2 si le joueur est sans équipe et à le spell 2 lvl 2

execute if entity @s[tag=blue_owner,scores={spell2=3}] run summon wandering_trader ~ ~-0.7 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:500f,Tags:["trap","blue","trap3"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:500},{id:"minecraft:scale",base:0.5}],Offers:{}}
# invoque un wandering_trader tag blue et trap 3 si le joueur est team blue et à le spell 2 lvl 3
execute if entity @s[tag=red_owner,scores={spell2=3}] run summon wandering_trader ~ ~-0.7 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:500f,Tags:["trap","red","trap3"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:500},{id:"minecraft:scale",base:0.5}],Offers:{}}
# invoque un wandering_trader tag red et trap 3 si le joueur est team red et à le spell 2 lvl 3
execute if entity @s[tag=no_team_owner,scores={spell2=3}] run summon wandering_trader ~ ~-0.7 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:500f,Tags:["trap","no_team","trap3"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:500},{id:"minecraft:scale",base:0.5}],Offers:{}}
# invoque un wandering_trader tag no_team_owner et trap 3 si le joueur est sans équipe et à le spell 2 lvl 3

scoreboard players operation @e[tag=trap,distance=..1.1,tag=!have_trap_number] trap_number_a = @s trap_launcher


execute if score @s trap_launcher matches 1 as @a[scores={Player=1}] run function spells:spellsystem/spell2/spell2_a/launchttrap/traped_landed
execute if score @s trap_launcher matches 2 as @a[scores={Player=2}] run function spells:spellsystem/spell2/spell2_a/launchttrap/traped_landed
execute if score @s trap_launcher matches 3 as @a[scores={Player=3}] run function spells:spellsystem/spell2/spell2_a/launchttrap/traped_landed
execute if score @s trap_launcher matches 4 as @a[scores={Player=4}] run function spells:spellsystem/spell2/spell2_a/launchttrap/traped_landed
execute if score @s trap_launcher matches 5 as @a[scores={Player=5}] run function spells:spellsystem/spell2/spell2_a/launchttrap/traped_landed
execute if score @s trap_launcher matches 6 as @a[scores={Player=6}] run function spells:spellsystem/spell2/spell2_a/launchttrap/traped_landed
execute if score @s trap_launcher matches 7 as @a[scores={Player=7}] run function spells:spellsystem/spell2/spell2_a/launchttrap/traped_landed
execute if score @s trap_launcher matches 8 as @a[scores={Player=8}] run function spells:spellsystem/spell2/spell2_a/launchttrap/traped_landed
execute if score @s trap_launcher matches 9 as @a[scores={Player=9}] run function spells:spellsystem/spell2/spell2_a/launchttrap/traped_landed
execute if score @s trap_launcher matches 10 as @a[scores={Player=10}] run function spells:spellsystem/spell2/spell2_a/launchttrap/traped_landed
execute if score @s trap_launcher matches 11 as @a[scores={Player=11}] run function spells:spellsystem/spell2/spell2_a/launchttrap/traped_landed
execute if score @s trap_launcher matches 12 as @a[scores={Player=12}] run function spells:spellsystem/spell2/spell2_a/launchttrap/traped_landed

kill @s