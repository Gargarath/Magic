## Caches the final desired range, then applies a different temporary value.
# A hidden waypoint uses an almost-zero range so it cannot be seen during the
# transition while still making the attribute genuinely change.

execute store result score @s locator_transmit_cache run attribute @s minecraft:waypoint_transmit_range base get 1
execute if score @s locator_transmit_cache matches 0 run attribute @s minecraft:waypoint_transmit_range base set 0.000001
execute unless score @s locator_transmit_cache matches 0 run attribute @s minecraft:waypoint_transmit_range base set 0

tag @s remove locator_team_updated
tag @s add locator_transmit_restore
schedule function main:locator_bar/restore_updated_players 1t replace
