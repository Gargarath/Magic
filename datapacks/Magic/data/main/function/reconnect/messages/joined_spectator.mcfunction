## appelée par main:reconnect/someone_joined_during_match
# permet d'indiquer à @s dans sa langue qu'il est passé automatiquement en mode spectateur

$tellraw @s {"text":"$(tr_reconnect_joined_spectator)","italic":true,"color":"gray"}
