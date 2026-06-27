## appelée par main:reconnect/leave_arena
# permet d'indiquer à @s dans sa langue qu'il a été ramené au lobby après une déconnexion dans l'arène

$tellraw @s {"text":"$(tr_reconnect_left_arena)","italic":true,"color":"gray"}
