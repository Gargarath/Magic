## appelée par someone_reconnected si @s vient de rejoindre la map après la partie

stopsound @s
# coupe les sons de @s

tellraw @s ["",{"text":"Vous vous êtes déconnecté dans l'arène ! Vous avez été automatiquement ramené au lobby.","italic":true,"color":"gray"}]

function lobby:arena/quit_arena


execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2
# indique à @s qu'il est passé en mode spectateur