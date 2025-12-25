## appelée par stuff_rogue/keybindX
# permet de lancer le spell 1 si possible


execute as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] if score @s spell1 matches 1 run function spells:usespell/usespell1/usespell1lvl1/usespell1lvl1_r
execute as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] if score @s spell1 matches 2 run function spells:usespell/usespell1/usespell1lvl2/usespell1lvl2_r
execute as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] if score @s spell1 matches 3 run function spells:usespell/usespell1/usespell1lvl3/usespell1lvl3_r
# lance le bon spell1 selon le niveau de @s