## appelée par main:reconnect/put_back_in_lobby
# permet d'indiquer à @s dans sa langue que la partie est terminée et qu'il a été ramené au lobby

$tellraw @s {"text":"$(tr_reconnect_match_ended)","italic":true,"color":"gray"}
