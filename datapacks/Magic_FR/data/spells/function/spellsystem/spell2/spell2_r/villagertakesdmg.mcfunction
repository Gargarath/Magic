# appelée par spells:loop permet de savoir quel wandering_trader a subit des dégats et ainsi savoir quelle voie des ombres suprimmer

execute at @s run playsound minecraft:entity.zombie.break_wooden_door master @a[distance=..5] ~ ~ ~ 100 2
execute if entity @s[scores={backup_number_r=1}] as @a[scores={backup_number_r=1}] run function spells:spellsystem/spell2/spell2_r/killbackup_r
execute if entity @s[scores={backup_number_r=2}] as @a[scores={backup_number_r=2}] run function spells:spellsystem/spell2/spell2_r/killbackup_r
execute if entity @s[scores={backup_number_r=3}] as @a[scores={backup_number_r=3}] run function spells:spellsystem/spell2/spell2_r/killbackup_r
execute if entity @s[scores={backup_number_r=4}] as @a[scores={backup_number_r=4}] run function spells:spellsystem/spell2/spell2_r/killbackup_r
execute if entity @s[scores={backup_number_r=5}] as @a[scores={backup_number_r=5}] run function spells:spellsystem/spell2/spell2_r/killbackup_r
execute if entity @s[scores={backup_number_r=6}] as @a[scores={backup_number_r=6}] run function spells:spellsystem/spell2/spell2_r/killbackup_r
execute if entity @s[scores={backup_number_r=7}] as @a[scores={backup_number_r=7}] run function spells:spellsystem/spell2/spell2_r/killbackup_r
execute if entity @s[scores={backup_number_r=8}] as @a[scores={backup_number_r=8}] run function spells:spellsystem/spell2/spell2_r/killbackup_r
execute if entity @s[scores={backup_number_r=9}] as @a[scores={backup_number_r=9}] run function spells:spellsystem/spell2/spell2_r/killbackup_r
execute if entity @s[scores={backup_number_r=10}] as @a[scores={backup_number_r=10}] run function spells:spellsystem/spell2/spell2_r/killbackup_r
execute if entity @s[scores={backup_number_r=11}] as @a[scores={backup_number_r=11}] run function spells:spellsystem/spell2/spell2_r/killbackup_r
execute if entity @s[scores={backup_number_r=12}] as @a[scores={backup_number_r=12}] run function spells:spellsystem/spell2/spell2_r/killbackup_r