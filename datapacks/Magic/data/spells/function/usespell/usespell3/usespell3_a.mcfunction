## appelée par stuff_archer/keybindX
# permet de lancer le spell 1 si possible


execute as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] if score @s spell3 matches 1 run function spells:usespell/usespell3/usespell3lvl1/usespell3lvl1_a
execute as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] if score @s spell3 matches 2 run function spells:usespell/usespell3/usespell3lvl2/usespell3lvl2_a
execute as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] if score @s spell3 matches 3 run function spells:usespell/usespell3/usespell3lvl3/usespell3lvl3_a
# lance le bon spell3 selon le niveau de @s