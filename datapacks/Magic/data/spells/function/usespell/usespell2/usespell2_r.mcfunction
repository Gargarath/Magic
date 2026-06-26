## appelée par stuff_rogue/keybindX
# permet de lancer le spell 1 si possible

execute if score @s backup_number_r matches 1.. run function spells:spellsystem/spell2/spell2_r/tpbackup_r
# si @s a déjà un tp -> le tp

execute if score @s backup_number_r matches 0 as @s[scores={cooldownspell2=-1,trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] if score @s spell2 matches 1 run function spells:usespell/usespell2/usespell2lvl1/usespell2lvl1_r
# lance le bon spell2 selon le niveau de @s