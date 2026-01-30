## appelée par stopped_sneaking avec schedule
# Permet de retirer le jump boost du joueur 7 si il n'a pas sauté

execute as @a[scores={Player=7},limit=1] run function spells:spellsystem/jump_a/reduce_jump_boost/remove_jump_boost