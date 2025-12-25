## appelée par stuff_warrior/keybindX
# permet de lancer le spell 1 si possible


execute as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] if score @s spell2 matches 1 run function spells:usespell/usespell2/usespell2lvl1/usespell2lvl1_w
execute as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] if score @s spell2 matches 2 run function spells:usespell/usespell2/usespell2lvl2/usespell2lvl2_w
execute as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] if score @s spell2 matches 3 run function spells:usespell/usespell2/usespell2lvl3/usespell2lvl3_w
# lance le bon spell2 selon le niveau de @s