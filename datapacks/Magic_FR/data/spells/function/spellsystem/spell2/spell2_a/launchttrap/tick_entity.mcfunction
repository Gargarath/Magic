# Avance vers l'avant selon sa rotation (vitesse ≈ 0.75 bloc/tick)

# OU posé au sol (sous les pieds)
execute if entity @s[nbt={OnGround:1b}] run function spells:spellsystem/spell2/spell2_a/summontrap
execute if block ~ ~ ~ #minecraft:not_solid_blocks run function spells:spellsystem/spell2/spell2_a/launchttrap/traped_launch_failed
# Option : durée de vie max (éviter que ça parte à l’infini)
scoreboard players add @s trap_tick 1
execute if score @s trap_tick matches 60.. run function spells:spellsystem/spell2/spell2_a/launchttrap/traped_launch_failed