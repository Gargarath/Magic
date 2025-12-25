## appelée par stuff_mage/keybindX
# permet de lancer le spell 1 si possible


execute as @s[scores={trapped=-1,hooked_w=-1},tag=!is_hooking,team=!respawn_red,team=!respawn_blue] if score @s spell3 matches 1 run function spells:usespell/usespell3/usespell3lvl1/usespell3lvl1_m
# lance le bon spell3 selon le niveau de @s