# appelée par spells:loop permet de detecter sur les traps si un joueur est proche

function spells:spellsystem/spell2/spell2_a/particle

execute as @s[tag=trap1,tag=blue] if entity @a[distance=0..1,team=red,tag=!spell_immune] run function spells:spellsystem/spell2/spell2_a/someoneclose/someoneclose1_red
execute as @s[tag=trap1,tag=red] if entity @a[distance=0..1,team=blue,tag=!spell_immune] run function spells:spellsystem/spell2/spell2_a/someoneclose/someoneclose1_blue

execute as @s[tag=trap2,tag=blue] if entity @a[distance=0..1,team=red,tag=!spell_immune] run function spells:spellsystem/spell2/spell2_a/someoneclose/someoneclose2_red
execute as @s[tag=trap2,tag=red] if entity @a[distance=0..1,team=blue,tag=!spell_immune] run function spells:spellsystem/spell2/spell2_a/someoneclose/someoneclose2_blue

execute as @s[tag=trap3,tag=blue] if entity @a[distance=0..1,team=red,tag=!spell_immune] run function spells:spellsystem/spell2/spell2_a/someoneclose/someoneclose3_red
execute as @s[tag=trap3,tag=red] if entity @a[distance=0..1,team=blue,tag=!spell_immune] run function spells:spellsystem/spell2/spell2_a/someoneclose/someoneclose3_blue



execute as @s[scores={trap_number_a=1},tag=no_team] if entity @a[distance=0..1,tag=!spell_immune,tag=!trap1_immune] run function spells:spellsystem/spell2/spell2_a/someoneclose/someoneclose_trap1
execute as @s[scores={trap_number_a=2},tag=no_team] if entity @a[distance=0..1,tag=!spell_immune,tag=!trap2_immune] run function spells:spellsystem/spell2/spell2_a/someoneclose/someoneclose_trap2
execute as @s[scores={trap_number_a=3},tag=no_team] if entity @a[distance=0..1,tag=!spell_immune,tag=!trap3_immune] run function spells:spellsystem/spell2/spell2_a/someoneclose/someoneclose_trap3
execute as @s[scores={trap_number_a=4},tag=no_team] if entity @a[distance=0..1,tag=!spell_immune,tag=!trap4_immune] run function spells:spellsystem/spell2/spell2_a/someoneclose/someoneclose_trap4
execute as @s[scores={trap_number_a=5},tag=no_team] if entity @a[distance=0..1,tag=!spell_immune,tag=!trap5_immune] run function spells:spellsystem/spell2/spell2_a/someoneclose/someoneclose_trap5
execute as @s[scores={trap_number_a=6},tag=no_team] if entity @a[distance=0..1,tag=!spell_immune,tag=!trap6_immune] run function spells:spellsystem/spell2/spell2_a/someoneclose/someoneclose_trap6
execute as @s[scores={trap_number_a=7},tag=no_team] if entity @a[distance=0..1,tag=!spell_immune,tag=!trap7_immune] run function spells:spellsystem/spell2/spell2_a/someoneclose/someoneclose_trap7
execute as @s[scores={trap_number_a=8},tag=no_team] if entity @a[distance=0..1,tag=!spell_immune,tag=!trap8_immune] run function spells:spellsystem/spell2/spell2_a/someoneclose/someoneclose_trap8
execute as @s[scores={trap_number_a=9},tag=no_team] if entity @a[distance=0..1,tag=!spell_immune,tag=!trap9_immune] run function spells:spellsystem/spell2/spell2_a/someoneclose/someoneclose_trap9
execute as @s[scores={trap_number_a=10},tag=no_team] if entity @a[distance=0..1,tag=!spell_immune,tag=!trap10_immune] run function spells:spellsystem/spell2/spell2_a/someoneclose/someoneclose_trap10
execute as @s[scores={trap_number_a=11},tag=no_team] if entity @a[distance=0..1,tag=!spell_immune,tag=!trap11_immune] run function spells:spellsystem/spell2/spell2_a/someoneclose/someoneclose_trap11
execute as @s[scores={trap_number_a=12},tag=no_team] if entity @a[distance=0..1,tag=!spell_immune,tag=!trap12_immune] run function spells:spellsystem/spell2/spell2_a/someoneclose/someoneclose_trap12