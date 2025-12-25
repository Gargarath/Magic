## appelée par reset_round_mchats en cas de clic sur le reset des chats
# permet de réactualiser les advancement de @s si il est mage

advancement revoke @s from mage:passif_m
advancement grant @s only mage:passif_m

execute if score @s weapon1 matches 1 run advancement grant @s until mage:7_m
execute if score @s weapon1 matches 2 run advancement grant @s until mage:weapon1lvl2_m
execute if score @s weapon1 matches 3 run advancement grant @s until mage:weapon1lvl3_m
execute if score @s weapon1 matches 4 run advancement grant @s until mage:weapon1lvl4_m
execute if score @s weapon1 matches 5 run advancement grant @s until mage:weapon1lvl5_m
execute if score @s weapon1 matches 6 run advancement grant @s until mage:weapon1lvl6_m
execute if score @s weapon1 matches 7 run advancement grant @s until mage:weapon1lvl7_m
execute if score @s weapon1 matches 8 run advancement grant @s until mage:weapon1lvl8_m
execute if score @s weapon1 matches 9 run advancement grant @s until mage:weapon1lvl9_m
execute if score @s weapon1 matches 10 run advancement grant @s until mage:weapon1lvl10_m

execute if score @s spell1 matches 1 run advancement grant @s until mage:5_m
execute if score @s spell1 matches 2 run advancement grant @s until mage:spell1lvl2_m
execute if score @s spell1 matches 3 run advancement grant @s until mage:spell1lvl3_m

execute if score @s spell2 matches 1 run advancement grant @s until mage:2_m
execute if score @s spell2 matches 2 run advancement grant @s until mage:spell2lvl2_m
execute if score @s spell2 matches 3 run advancement grant @s until mage:spell2lvl3_m

execute if score @s spell3 matches 1 run advancement grant @s until mage:6_m

execute if score @s chest matches 1 run advancement grant @s until mage:4_m
execute if score @s chest matches 2 run advancement grant @s until mage:chestlvl2_m
execute if score @s chest matches 3 run advancement grant @s until mage:chestlvl3_m
execute if score @s chest matches 4 run advancement grant @s until mage:chestlvl4_m
execute if score @s chest matches 5 run advancement grant @s until mage:chestlvl5_m
execute if score @s chest matches 6 run advancement grant @s until mage:chestlvl6_m
execute if score @s chest matches 7 run advancement grant @s until mage:chestlvl7_m
execute if score @s chest matches 8 run advancement grant @s until mage:chestlvl8_m
execute if score @s chest matches 9 run advancement grant @s until mage:chestlvl9_m
execute if score @s chest matches 10 run advancement grant @s until mage:chestlvl10_m

execute if score @s legs matches 1 run advancement grant @s until mage:3_m
execute if score @s legs matches 2 run advancement grant @s until mage:legslvl2_m
execute if score @s legs matches 3 run advancement grant @s until mage:legslvl3_m
execute if score @s legs matches 4 run advancement grant @s until mage:legslvl4_m
execute if score @s legs matches 5 run advancement grant @s until mage:legslvl5_m
execute if score @s legs matches 6 run advancement grant @s until mage:legslvl6_m
execute if score @s legs matches 7 run advancement grant @s until mage:legslvl7_m
execute if score @s legs matches 8 run advancement grant @s until mage:legslvl8_m
execute if score @s legs matches 9 run advancement grant @s until mage:legslvl9_m
execute if score @s legs matches 10 run advancement grant @s until mage:legslvl10_m

execute if score @s boots matches 1 run advancement grant @s until mage:1_m
execute if score @s boots matches 2 run advancement grant @s until mage:bootlvl2_m
execute if score @s boots matches 3 run advancement grant @s until mage:bootlvl3_m
execute if score @s boots matches 4 run advancement grant @s until mage:bootlvl4_m
execute if score @s boots matches 5 run advancement grant @s until mage:bootlvl5_m
execute if score @s boots matches 6 run advancement grant @s until mage:bootlvl6_m
execute if score @s boots matches 7 run advancement grant @s until mage:bootlvl7_m
execute if score @s boots matches 8 run advancement grant @s until mage:bootlvl8_m
execute if score @s boots matches 9 run advancement grant @s until mage:bootlvl9_m
execute if score @s boots matches 10 run advancement grant @s until mage:bootlvl10_m