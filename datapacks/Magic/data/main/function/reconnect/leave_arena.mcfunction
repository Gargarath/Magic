## appelée par someone_reconnected si @s vient de rejoindre la map après la partie

stopsound @s
# coupe les sons de @s

function main:reconnect/messages/left_arena with entity @s EnderItems[0].components.minecraft:custom_data

execute as @s[tag=in_lobby_arena,scores={Player=1..}] run function lobby:arena/quit_arena
execute as @s[tag=in_lobby_arena,scores={Player=-1}] run function lobby:arena/quit_arena_spec


execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2
# indique à @s qu'il est passé en mode spectateur
