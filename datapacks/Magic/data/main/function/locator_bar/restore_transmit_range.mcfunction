## Restores the exact integer base value cached before the forced transition.

execute store result storage main:locator_bar transmit_range int 1 run scoreboard players get @s locator_transmit_cache
function main:locator_bar/apply_transmit_range with storage main:locator_bar
