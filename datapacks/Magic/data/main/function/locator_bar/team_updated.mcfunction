## Called as a player after their scoreboard team has changed.
# Waits one tick so the final desired range can be cached after every command
# from the current tick has run.

execute unless entity @s[type=minecraft:player] run return 0
tag @s add locator_team_updated
execute unless entity @s[tag=locator_transmit_restore] run schedule function main:locator_bar/refresh_updated_players 1t replace
