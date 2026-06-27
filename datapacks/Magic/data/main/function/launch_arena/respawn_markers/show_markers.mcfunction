# appelée par rien
# permet de voir ou sont les spawnpoint d'une map précise
kill @e[tag=temp]

# map à tester
function main:launch_arena/respawn_markers/candyworld

execute as @e[tag=respawn_spot] at @s run summon armadillo ~ ~ ~ {NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,Tags:["temp"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}]}