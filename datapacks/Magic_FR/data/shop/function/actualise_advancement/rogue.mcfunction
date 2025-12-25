## appelée par reset_round_rchats en cas de clic sur le reset des chats
# permet de réactualiser les advancement de @s si il est rogue

advancement revoke @s from rogue:passif_r
advancement revoke @s from rogue:passif2_r

advancement grant @s only rogue:passif_r
advancement grant @s only rogue:passif2_r

execute if score @s weapon1 matches 1 run advancement grant @s until rogue:3_r
execute if score @s weapon1 matches 2 run advancement grant @s until rogue:weapon1lvl2_r
execute if score @s weapon1 matches 3 run advancement grant @s until rogue:weapon1lvl3_r
execute if score @s weapon1 matches 4 run advancement grant @s until rogue:weapon1lvl4_r
execute if score @s weapon1 matches 5 run advancement grant @s until rogue:weapon1lvl5_r
execute if score @s weapon1 matches 6 run advancement grant @s until rogue:weapon1lvl6_r
execute if score @s weapon1 matches 7 run advancement grant @s until rogue:weapon1lvl7_r
execute if score @s weapon1 matches 8 run advancement grant @s until rogue:weapon1lvl8_r
execute if score @s weapon1 matches 9 run advancement grant @s until rogue:weapon1lvl9_r
execute if score @s weapon1 matches 10 run advancement grant @s until rogue:weapon1lvl10_r

execute if score @s spell1 matches 1 run advancement grant @s until rogue:5_r
execute if score @s spell1 matches 2 run advancement grant @s until rogue:spell1lvl2_r
execute if score @s spell1 matches 3 run advancement grant @s until rogue:spell1lvl3_r

execute if score @s spell2 matches 1 run advancement grant @s until rogue:1_r

execute if score @s spell3 matches 1 run advancement grant @s until rogue:4_r

execute if score @s chest matches 1 run advancement grant @s until rogue:6_r
execute if score @s chest matches 2 run advancement grant @s until rogue:chestlvl2_r
execute if score @s chest matches 3 run advancement grant @s until rogue:chestlvl3_r
execute if score @s chest matches 4 run advancement grant @s until rogue:chestlvl4_r
execute if score @s chest matches 5 run advancement grant @s until rogue:chestlvl5_r
execute if score @s chest matches 6 run advancement grant @s until rogue:chestlvl6_r
execute if score @s chest matches 7 run advancement grant @s until rogue:chestlvl7_r
execute if score @s chest matches 8 run advancement grant @s until rogue:chestlvl8_r
execute if score @s chest matches 9 run advancement grant @s until rogue:chestlvl9_r
execute if score @s chest matches 10 run advancement grant @s until rogue:chestlvl10_r

execute if score @s legs matches 1 run advancement grant @s until rogue:2_r
execute if score @s legs matches 2 run advancement grant @s until rogue:legslvl2_r
execute if score @s legs matches 3 run advancement grant @s until rogue:legslvl3_r
execute if score @s legs matches 4 run advancement grant @s until rogue:legslvl4_r
execute if score @s legs matches 5 run advancement grant @s until rogue:legslvl5_r
execute if score @s legs matches 6 run advancement grant @s until rogue:legslvl6_r
execute if score @s legs matches 7 run advancement grant @s until rogue:legslvl7_r
execute if score @s legs matches 8 run advancement grant @s until rogue:legslvl8_r
execute if score @s legs matches 9 run advancement grant @s until rogue:legslvl9_r
execute if score @s legs matches 10 run advancement grant @s until rogue:legslvl10_r

execute if score @s boots matches 1 run advancement grant @s until rogue:7_r
execute if score @s boots matches 2 run advancement grant @s until rogue:bootlvl2_r
execute if score @s boots matches 3 run advancement grant @s until rogue:bootlvl3_r
execute if score @s boots matches 4 run advancement grant @s until rogue:bootlvl4_r
execute if score @s boots matches 5 run advancement grant @s until rogue:bootlvl5_r
execute if score @s boots matches 6 run advancement grant @s until rogue:bootlvl6_r
execute if score @s boots matches 7 run advancement grant @s until rogue:bootlvl7_r
execute if score @s boots matches 8 run advancement grant @s until rogue:bootlvl8_r
execute if score @s boots matches 9 run advancement grant @s until rogue:bootlvl9_r
execute if score @s boots matches 10 run advancement grant @s until rogue:bootlvl10_r