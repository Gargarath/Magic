## Restores every waypoint range cached during the previous tick.

execute as @a[tag=locator_transmit_restore] run function main:locator_bar/restore_transmit_range
tag @a remove locator_transmit_restore
execute if entity @a[tag=locator_team_updated] run schedule function main:locator_bar/refresh_updated_players 1t replace
