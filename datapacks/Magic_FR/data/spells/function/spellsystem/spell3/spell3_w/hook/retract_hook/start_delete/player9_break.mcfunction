## called by hook_player/player9_blue if the hook collided
## starts the delete of the hook while playing a sound that says the hook collided

function spells:spellsystem/spell3/spell3_w/hook/retract_hook/delete_hook/player9
execute at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 5 1 0