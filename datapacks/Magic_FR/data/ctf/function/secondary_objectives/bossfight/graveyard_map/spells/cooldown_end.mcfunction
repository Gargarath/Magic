# appelée par ctf:secondary_objectives/bossfight/graveyard_map/bossfight_loop quand son temps de cd est fini
# permet à liche de relancer des spell

scoreboard players set is_using_spell lich 0
tag @a[tag=target] remove target
scoreboard players reset cooldown lich