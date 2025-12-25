## appelée par tick_entity si le piege atterit a un endroit inadapté
# permet de le détruire

execute if score @s trap_launcher matches 1 as @a[scores={Player=1}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute if score @s trap_launcher matches 2 as @a[scores={Player=2}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute if score @s trap_launcher matches 3 as @a[scores={Player=3}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute if score @s trap_launcher matches 4 as @a[scores={Player=4}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute if score @s trap_launcher matches 5 as @a[scores={Player=5}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute if score @s trap_launcher matches 6 as @a[scores={Player=6}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute if score @s trap_launcher matches 7 as @a[scores={Player=7}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute if score @s trap_launcher matches 8 as @a[scores={Player=8}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute if score @s trap_launcher matches 9 as @a[scores={Player=9}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute if score @s trap_launcher matches 10 as @a[scores={Player=10}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute if score @s trap_launcher matches 11 as @a[scores={Player=11}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed
execute if score @s trap_launcher matches 12 as @a[scores={Player=12}] run function spells:spellsystem/spell2/spell2_a/trap_get_destroyed

kill @s