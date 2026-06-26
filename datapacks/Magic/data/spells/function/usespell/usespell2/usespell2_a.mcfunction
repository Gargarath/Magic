## appelée par stuff_archer/keybindX
# permet de lancer le spell 1 si possible

execute if score @s trap_number_a matches 1.. run function spells:spellsystem/spell2/spell2_a/destroy_own_trap
# si @s a déjà un piege -> le casse

execute if score @s trap_number_a matches 0 as @s[scores={cooldownspell2=-1,trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] if score @s spell2 matches 1 run function spells:usespell/usespell2/usespell2lvl1/usespell2lvl1_a
execute if score @s trap_number_a matches 0 as @s[scores={cooldownspell2=-1,trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] if score @s spell2 matches 2 run function spells:usespell/usespell2/usespell2lvl2/usespell2lvl2_a
execute if score @s trap_number_a matches 0 as @s[scores={cooldownspell2=-1,trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] if score @s spell2 matches 3 run function spells:usespell/usespell2/usespell2lvl3/usespell2lvl3_a
# lance le bon spell2 selon le niveau de @s

