# appelée par spells:loop quand @s a fini son sort berzerk
# permet de clear la bossbar de @s et de lui donner son cooldown

scoreboard players set @s using_berzerk -1

execute if score @s Player matches 1 run bossbar set berzerk:player1 players
execute if score @s Player matches 2 run bossbar set berzerk:player2 players
execute if score @s Player matches 3 run bossbar set berzerk:player3 players
execute if score @s Player matches 4 run bossbar set berzerk:player4 players
execute if score @s Player matches 5 run bossbar set berzerk:player5 players
execute if score @s Player matches 6 run bossbar set berzerk:player6 players
execute if score @s Player matches 7 run bossbar set berzerk:player7 players
execute if score @s Player matches 8 run bossbar set berzerk:player8 players
execute if score @s Player matches 9 run bossbar set berzerk:player9 players
execute if score @s Player matches 10 run bossbar set berzerk:player10 players
execute if score @s Player matches 11 run bossbar set berzerk:player11 players
execute if score @s Player matches 12 run bossbar set berzerk:player12 players
# clear la bossbar berzerk de @s selon son numéro de joueur

execute if score @s spell1 matches 1..3 run scoreboard players set @s cooldownspell1 20
execute if score $no_cooldowns option_panel matches 0 as @s[scores={spell1=1}] run function stuff:stuff_warrior/cooldowns_w/spell1/spell1lvl1_w with entity @s EnderItems[0].components.minecraft:custom_data
execute if score $no_cooldowns option_panel matches 0 as @s[scores={spell1=2}] run function stuff:stuff_warrior/cooldowns_w/spell1/spell1lvl2_w with entity @s EnderItems[0].components.minecraft:custom_data
execute if score $no_cooldowns option_panel matches 0 as @s[scores={spell1=3}] run function stuff:stuff_warrior/cooldowns_w/spell1/spell1lvl3_w with entity @s EnderItems[0].components.minecraft:custom_data
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s cooldown1_clock 20
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell1 0
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown1_clock 5
# déclanche le cooldown de berzerk de @s selon son niveau de sort

effect clear @s minecraft:strength
effect clear @s minecraft:speed
attribute @s minecraft:max_health modifier remove berzerk
attribute @s minecraft:armor modifier remove berzerk
attribute @s minecraft:armor_toughness modifier remove berzerk
# enlève l'effet de berzerk de @s

execute store result score @s spell1_w_hp_max run attribute @s minecraft:max_health get 1
execute store result score @s spell1_w_hp_now run data get entity @s Health 1
# stock les pv max et la vie actuelle


scoreboard players operation @s spell1_w_hp_target = @s spell1_w_hp_before
execute if score @s spell1_w_hp_target > @s spell1_w_hp_max run scoreboard players operation @s spell1_w_hp_target = @s spell1_w_hp_max
# setup les pv à atteindre pour @s comme ses pv avant le spell (sauf si il a plus de vie qu'avant, dans ce cas on cible son max de avant le spell)


scoreboard players operation @s spell1_w_hp_delta = @s spell1_w_hp_target
scoreboard players operation @s spell1_w_hp_delta -= @s spell1_w_hp_now
execute unless score @s spell1_w_hp_delta matches 1.. run return 0
# Delta = vie qu'on cherche à avoir - vie qu'il a -> si positif alors il a plus de vie qu'avant et on annule la fonction

scoreboard players operation @s spell1_w_ih_q = @s spell1_w_hp_delta
scoreboard players operation @s spell1_w_ih_q /= $6 operations
# on check combien de fois on doit donner 6 PV à @s pour le rendre full vie

execute if score @s spell1_w_ih_q matches 1 run effect give @s instant_health 1 0 true
# +6 PV
execute if score @s spell1_w_ih_q matches 2 run effect give @s instant_health 1 1 true
# +12 PV
execute if score @s spell1_w_ih_q matches 3 run effect give @s instant_health 1 2 true
# +18 PV
execute if score @s spell1_w_ih_q matches 4 run effect give @s instant_health 1 3 true
# +24 PV
execute if score @s spell1_w_ih_q matches 5 run effect give @s instant_health 1 4 true
# +30 PV
execute if score @s spell1_w_ih_q matches 6 run effect give @s instant_health 1 5 true
# +36 PV
execute if score @s spell1_w_ih_q matches 7 run effect give @s instant_health 1 6 true
# +42 PV

# on soigne @s en fonction de la vie qu'il manque à @s