## appelée par reset_round_achats en cas de clic sur le reset des chats
# permet de réactualiser les advancement de @s si il est archer

advancement revoke @s from archer:passif1_a
advancement revoke @s from archer:passif2_a

advancement grant @s only archer:passif1_a
advancement grant @s only archer:passif2_a

execute if score @s weapon1 matches 1 run advancement grant @s until archer:6_a
execute if score @s weapon1 matches 2 run advancement grant @s until archer:weapon1lvl2_a
execute if score @s weapon1 matches 3 run advancement grant @s until archer:weapon1lvl3_a
execute if score @s weapon1 matches 4 run advancement grant @s until archer:weapon1lvl4_a
execute if score @s weapon1 matches 5 run advancement grant @s until archer:weapon1lvl5_a
execute if score @s weapon1 matches 6 run advancement grant @s until archer:weapon1lvl6_a
execute if score @s weapon1 matches 7 run advancement grant @s until archer:weapon1lvl7_a
execute if score @s weapon1 matches 8 run advancement grant @s until archer:weapon1lvl8_a
execute if score @s weapon1 matches 9 run advancement grant @s until archer:weapon1lvl9_a
execute if score @s weapon1 matches 10 run advancement grant @s until archer:weapon1lvl10_a

execute if score @s spell1 matches 1 run advancement grant @s until archer:4_a
execute if score @s spell1 matches 2 run advancement grant @s until archer:spell1lvl2_a
execute if score @s spell1 matches 3 run advancement grant @s until archer:spell1lvl3_a

execute if score @s spell2 matches 1 run advancement grant @s until archer:1_a
execute if score @s spell2 matches 2 run advancement grant @s until archer:spell2lvl2_a
execute if score @s spell2 matches 3 run advancement grant @s until archer:spell2lvl3_a

execute if score @s spell3 matches 1 run advancement grant @s until archer:3_a
execute if score @s spell3 matches 2 run advancement grant @s until archer:spell2lvl2_a
execute if score @s spell3 matches 3 run advancement grant @s until archer:spell2lvl3_a

execute if score @s chest matches 1 run advancement grant @s until archer:7_a
execute if score @s chest matches 2 run advancement grant @s until archer:chestlvl2_a
execute if score @s chest matches 3 run advancement grant @s until archer:chestlvl3_a
execute if score @s chest matches 4 run advancement grant @s until archer:chestlvl4_a
execute if score @s chest matches 5 run advancement grant @s until archer:chestlvl5_a
execute if score @s chest matches 6 run advancement grant @s until archer:chestlvl6_a
execute if score @s chest matches 7 run advancement grant @s until archer:chestlvl7_a
execute if score @s chest matches 8 run advancement grant @s until archer:chestlvl8_a
execute if score @s chest matches 9 run advancement grant @s until archer:chestlvl9_a
execute if score @s chest matches 10 run advancement grant @s until archer:chestlvl10_a

execute if score @s legs matches 1 run advancement grant @s until archer:5_a
execute if score @s legs matches 2 run advancement grant @s until archer:legslvl2_a
execute if score @s legs matches 3 run advancement grant @s until archer:legslvl3_a
execute if score @s legs matches 4 run advancement grant @s until archer:legslvl4_a
execute if score @s legs matches 5 run advancement grant @s until archer:legslvl5_a
execute if score @s legs matches 6 run advancement grant @s until archer:legslvl6_a
execute if score @s legs matches 7 run advancement grant @s until archer:legslvl7_a
execute if score @s legs matches 8 run advancement grant @s until archer:legslvl8_a
execute if score @s legs matches 9 run advancement grant @s until archer:legslvl9_a
execute if score @s legs matches 10 run advancement grant @s until archer:legslvl10_a

execute if score @s boots matches 1 run advancement grant @s until archer:2_a
execute if score @s boots matches 2 run advancement grant @s until archer:bootlvl2_a
execute if score @s boots matches 3 run advancement grant @s until archer:bootlvl3_a
execute if score @s boots matches 4 run advancement grant @s until archer:bootlvl4_a
execute if score @s boots matches 5 run advancement grant @s until archer:bootlvl5_a
execute if score @s boots matches 6 run advancement grant @s until archer:bootlvl6_a
execute if score @s boots matches 7 run advancement grant @s until archer:bootlvl7_a
execute if score @s boots matches 8 run advancement grant @s until archer:bootlvl8_a
execute if score @s boots matches 9 run advancement grant @s until archer:bootlvl9_a
execute if score @s boots matches 10 run advancement grant @s until archer:bootlvl10_a