
tp @e[tag=golem_waiting_spot] -519 0 -111
kill @e[tag=golem_waiting_spot]
attribute @e[tag=golem,limit=1] minecraft:follow_range base set 100
summon minecraft:zombie -519 0 -111 {NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,IsBaby:1b,Tags:["golem_waiting_spot"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}]}
tp @e[tag=golem_waiting_spot] -519 149 -111
data modify entity @e[tag=golem,limit=1] angry_at set from entity @e[type=minecraft:zombie,tag=golem_waiting_spot,limit=1] UUID