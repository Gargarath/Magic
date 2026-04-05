# appelée par ctf:secondary_objectives/bossfight/graveyard_map/bossfight_loop
# quand le cast est fini, fait lancer un sort à la liche

scoreboard players reset cast_time lich

execute unless entity @a[tag=target,tag=targetable] run tag @a remove target
execute unless entity @a[tag=target,tag=targetable] run scoreboard players set is_using_spell lich 0
# si la cible n'est plus visible lui enleve le tag cible et permet à la liche dans lancer des sorts de nouveau

execute if entity @a[tag=target,tag=targetable] if score selected_spell lich matches 1 run function gamemode:ctf/secondary_objectives/bossfight/graveyard_map/spells/spell1/cast_spell1
execute if entity @a[tag=target,tag=targetable] if score selected_spell lich matches 2 run function gamemode:ctf/secondary_objectives/bossfight/graveyard_map/spells/spell2/cast_spell2
execute if entity @a[tag=target,tag=targetable] if score selected_spell lich matches 3 run function gamemode:ctf/secondary_objectives/bossfight/graveyard_map/spells/spell3/cast_spell3
# si la cible est encore visible lance le sort x selon quel sort est sélectionné