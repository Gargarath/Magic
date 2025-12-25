## called by extand_hook/rotate_hook/extand_schedule/player11
## extand the hook by adding 3 new pieces

execute at @s rotated as @s positioned ~ ~0.5 ~ unless entity @a[tag=!hook11_immune,distance=..1] positioned ~ ~-0.5 ~ positioned ^ ^ ^1 if block ~ ~1.5 ~ #minecraft:spell_beam unless entity @e[tag=hook_w_player11,scores={hook_position=20..}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["hook_w","hook_w_player11","hook_w_player11_new"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:iron_bars",count:1,components:{"minecraft:custom_model_data":{strings:["hook"]}}}}}
# executed 1 block ahead -> if there is no players or colliding block -> summon a new piece

execute at @s rotated as @s positioned ~ ~0.5 ~ positioned ^ ^ ^1 unless entity @a[tag=!hook11_immune,distance=..1] positioned ~ ~-0.5 ~ positioned ^ ^ ^1 if block ~ ~1.5 ~ #minecraft:spell_beam unless entity @e[tag=hook_w_player11,scores={hook_position=20..}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["hook_w","hook_w_player11","hook_w_player11_new"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:iron_bars",count:1,components:{"minecraft:custom_model_data":{strings:["hook"]}}}}}
# executed 2 blocks ahead -> if there is no players or colliding block -> summon a new piece

execute at @s rotated as @s positioned ~ ~0.5 ~ positioned ^ ^ ^2 unless entity @a[tag=!hook11_immune,distance=..1] positioned ~ ~-0.5 ~ positioned ^ ^ ^2 if block ~ ~1.5 ~ #minecraft:spell_beam unless entity @e[tag=hook_w_player11,scores={hook_position=20..}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["hook_w","hook_w_player11","hook_w_player11_new"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:iron_bars",count:1,components:{"minecraft:custom_model_data":{strings:["hook"]}}}}}
# executed 3 blocks ahead -> if there is no players or colliding block -> summon a new piece

execute as @e[tag=hook_w_player11] run function spells:spellsystem/spell3/spell3_w/hook/extand_hook/spawn_hook/player11_increase_lenght
# increases each piece lenght by one and check if the hook is too long

execute as @e[type=minecraft:armor_stand,tag=hook_w_player11,scores={hook_position=1}] positioned as @s run function spells:spellsystem/spell3/spell3_w/hook/extand_hook/rotate_hook/rotate_player11
# as every new pieces call again the function that rotate the piece