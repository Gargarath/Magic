## appelée par reset_round_achats en cas de clic sur le reset des chats
# permet de réactualiser les advancement de @s si il est guerrier

advancement revoke @s from warrior:passif_w

advancement grant @s only warrior:passif_w

execute if score @s weapon1 matches 1 run advancement grant @s until warrior:1_w
execute if score @s weapon1 matches 2 run advancement grant @s until warrior:weapon1lvl2_w
execute if score @s weapon1 matches 3 run advancement grant @s until warrior:weapon1lvl3_w
execute if score @s weapon1 matches 4 run advancement grant @s until warrior:weapon1lvl4_w
execute if score @s weapon1 matches 5 run advancement grant @s until warrior:weapon1lvl5_w
execute if score @s weapon1 matches 6 run advancement grant @s until warrior:weapon1lvl6_w
execute if score @s weapon1 matches 7 run advancement grant @s until warrior:weapon1lvl7_w
execute if score @s weapon1 matches 8 run advancement grant @s until warrior:weapon1lvl8_w
execute if score @s weapon1 matches 9 run advancement grant @s until warrior:weapon1lvl9_w
execute if score @s weapon1 matches 10 run advancement grant @s until warrior:weapon1lvl10_w

execute if score @s spell1 matches 1 run advancement grant @s until warrior:3_w
execute if score @s spell1 matches 2 run advancement grant @s until warrior:spell1lvl2_w
execute if score @s spell1 matches 3 run advancement grant @s until warrior:spell1lvl3_w

execute if score @s spell2 matches 1 run advancement grant @s until warrior:6_w
execute if score @s spell2 matches 2 run advancement grant @s until warrior:spell2lvl2_w
execute if score @s spell2 matches 3 run advancement grant @s until warrior:spell2lvl3_w

execute if score @s spell3 matches 1 run advancement grant @s until warrior:2_w

execute if score @s chest matches 1 run advancement grant @s until warrior:4_w
execute if score @s chest matches 2 run advancement grant @s until warrior:chestlvl2_w
execute if score @s chest matches 3 run advancement grant @s until warrior:chestlvl3_w
execute if score @s chest matches 4 run advancement grant @s until warrior:chestlvl4_w
execute if score @s chest matches 5 run advancement grant @s until warrior:chestlvl5_w
execute if score @s chest matches 6 run advancement grant @s until warrior:chestlvl6_w
execute if score @s chest matches 7 run advancement grant @s until warrior:chestlvl7_w
execute if score @s chest matches 8 run advancement grant @s until warrior:chestlvl8_w
execute if score @s chest matches 9 run advancement grant @s until warrior:chestlvl9_w
execute if score @s chest matches 10 run advancement grant @s until warrior:chestlvl10_w

execute if score @s legs matches 1 run advancement grant @s until warrior:5_w
execute if score @s legs matches 2 run advancement grant @s until warrior:legslvl2_w
execute if score @s legs matches 3 run advancement grant @s until warrior:legslvl3_w
execute if score @s legs matches 4 run advancement grant @s until warrior:legslvl4_w
execute if score @s legs matches 5 run advancement grant @s until warrior:legslvl5_w
execute if score @s legs matches 6 run advancement grant @s until warrior:legslvl6_w
execute if score @s legs matches 7 run advancement grant @s until warrior:legslvl7_w
execute if score @s legs matches 8 run advancement grant @s until warrior:legslvl8_w
execute if score @s legs matches 9 run advancement grant @s until warrior:legslvl9_w
execute if score @s legs matches 10 run advancement grant @s until warrior:legslvl10_w

execute if score @s boots matches 1 run advancement grant @s until warrior:7_w
execute if score @s boots matches 2 run advancement grant @s until warrior:bootlvl2_w
execute if score @s boots matches 3 run advancement grant @s until warrior:bootlvl3_w
execute if score @s boots matches 4 run advancement grant @s until warrior:bootlvl4_w
execute if score @s boots matches 5 run advancement grant @s until warrior:bootlvl5_w
execute if score @s boots matches 6 run advancement grant @s until warrior:bootlvl6_w
execute if score @s boots matches 7 run advancement grant @s until warrior:bootlvl7_w
execute if score @s boots matches 8 run advancement grant @s until warrior:bootlvl8_w
execute if score @s boots matches 9 run advancement grant @s until warrior:bootlvl9_w
execute if score @s boots matches 10 run advancement grant @s until warrior:bootlvl10_w