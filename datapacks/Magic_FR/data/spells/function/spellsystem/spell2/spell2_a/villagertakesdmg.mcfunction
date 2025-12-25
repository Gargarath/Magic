# appelée par spells:loop permet de savoir quel wandering_trader a subit des dégats et ainsi savoir quel piège à ours suprimmer

execute at @s run playsound minecraft:entity.zombie.break_wooden_door master @a[distance=..5] ~ ~ ~ 100 2
execute positioned ~ ~-1 ~ if entity @s[scores={trap_number_a=1}] as @a[scores={trap_number_a=1}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute positioned ~ ~-1 ~ if entity @s[scores={trap_number_a=2}] as @a[scores={trap_number_a=2}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute positioned ~ ~-1 ~ if entity @s[scores={trap_number_a=3}] as @a[scores={trap_number_a=3}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute positioned ~ ~-1 ~ if entity @s[scores={trap_number_a=4}] as @a[scores={trap_number_a=4}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute positioned ~ ~-1 ~ if entity @s[scores={trap_number_a=5}] as @a[scores={trap_number_a=5}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute positioned ~ ~-1 ~ if entity @s[scores={trap_number_a=6}] as @a[scores={trap_number_a=6}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute positioned ~ ~-1 ~ if entity @s[scores={trap_number_a=7}] as @a[scores={trap_number_a=7}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute positioned ~ ~-1 ~ if entity @s[scores={trap_number_a=8}] as @a[scores={trap_number_a=8}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute positioned ~ ~-1 ~ if entity @s[scores={trap_number_a=9}] as @a[scores={trap_number_a=9}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute positioned ~ ~-1 ~ if entity @s[scores={trap_number_a=10}] as @a[scores={trap_number_a=10}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute positioned ~ ~-1 ~ if entity @s[scores={trap_number_a=11}] as @a[scores={trap_number_a=11}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute positioned ~ ~-1 ~ if entity @s[scores={trap_number_a=12}] as @a[scores={trap_number_a=12}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed