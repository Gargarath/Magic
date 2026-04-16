# appelée par spells:spellsystem/spell2/spell2_a/gettraped permet a celui dont le piege vient d'etre supprimé (car utilisé) de reset ses stats de piège pour qu'il puisse en utiliser un autre

scoreboard players set @s trap_number_a 0
tag @s remove have_trap
scoreboard players set @s[scores={spell2=1}] cooldownspell2 10
scoreboard players set @s[scores={spell2=2}] cooldownspell2 8
scoreboard players set @s[scores={spell2=3}] cooldownspell2 5
scoreboard players set @s cooldown2_clock 20

execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell2 0
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown2_clock 5

clear @s carrot_on_a_stick[minecraft:custom_data={spell2_a:1b,spell2_slot:1b}]
execute if score $no_cooldowns option_panel matches 0 run clear @s #minecraft:stained_glass_pane[minecraft:custom_data={spell2_slot:1b,cooldownspell2:1b}]
execute if score $no_cooldowns option_panel matches 0 as @s[scores={spell2=1}] run function stuff:stuff_archer/cooldowns_a/spell2/spell2lvl1_a with entity @s EnderItems[0].components.minecraft:custom_data
execute if score $no_cooldowns option_panel matches 0 as @s[scores={spell2=2}] run function stuff:stuff_archer/cooldowns_a/spell2/spell2lvl2_a with entity @s EnderItems[0].components.minecraft:custom_data
execute if score $no_cooldowns option_panel matches 0 as @s[scores={spell2=3}] run function stuff:stuff_archer/cooldowns_a/spell2/spell2lvl3_a with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s Player matches 1 run tag @s remove trap1_immune
execute if score @s Player matches 2 run tag @s remove trap2_immune
execute if score @s Player matches 3 run tag @s remove trap3_immune
execute if score @s Player matches 4 run tag @s remove trap4_immune
execute if score @s Player matches 5 run tag @s remove trap5_immune
execute if score @s Player matches 6 run tag @s remove trap6_immune
execute if score @s Player matches 7 run tag @s remove trap7_immune
execute if score @s Player matches 8 run tag @s remove trap8_immune
execute if score @s Player matches 9 run tag @s remove trap9_immune
execute if score @s Player matches 10 run tag @s remove trap10_immune
execute if score @s Player matches 11 run tag @s remove trap11_immune
execute if score @s Player matches 12 run tag @s remove trap12_immune

execute if score @s Player matches 1 run bossbar set trapped_someone:player1 players
execute if score @s Player matches 2 run bossbar set trapped_someone:player2 players
execute if score @s Player matches 3 run bossbar set trapped_someone:player3 players
execute if score @s Player matches 4 run bossbar set trapped_someone:player4 players
execute if score @s Player matches 5 run bossbar set trapped_someone:player5 players
execute if score @s Player matches 6 run bossbar set trapped_someone:player6 players
execute if score @s Player matches 7 run bossbar set trapped_someone:player7 players
execute if score @s Player matches 8 run bossbar set trapped_someone:player8 players
execute if score @s Player matches 9 run bossbar set trapped_someone:player9 players
execute if score @s Player matches 10 run bossbar set trapped_someone:player10 players
execute if score @s Player matches 11 run bossbar set trapped_someone:player11 players
execute if score @s Player matches 12 run bossbar set trapped_someone:player12 players
