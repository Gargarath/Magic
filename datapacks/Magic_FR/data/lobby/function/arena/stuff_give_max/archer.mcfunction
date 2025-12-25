## appelée par join_arena quand @s rejoint l'arène
# lui donne le stuff max pour archer

scoreboard players set @s weapon1 10
scoreboard players set @s chest 10
scoreboard players set @s legs 10
scoreboard players set @s boots 10

scoreboard players set @s spell1 3
scoreboard players set @s spell2 3
scoreboard players set @s spell3 3

scoreboard players set @s maxarrow 6
scoreboard players operation @s arrow = @s maxarrow
# met le nombre de flèche et max de @s à 6

scoreboard players set @s cooldownspell1 4
scoreboard players set @s cooldownspell2 4
scoreboard players set @s cooldownspell3 4


scoreboard players set @s cooldown1_clock 20
scoreboard players set @s cooldown2_clock 20
scoreboard players set @s cooldown3_clock 20

execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell1 -1
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell2 -1
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell3 -1
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown1_clock -1
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown2_clock -1
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown3_clock -1
# si on est en mode 0 cooldown -> met tout les CD à -1

execute if score @s Player matches 1 run data modify storage gui player.1.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute if score @s Player matches 2 run data modify storage gui player.2.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute if score @s Player matches 3 run data modify storage gui player.3.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute if score @s Player matches 4 run data modify storage gui player.4.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute if score @s Player matches 5 run data modify storage gui player.5.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute if score @s Player matches 6 run data modify storage gui player.6.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute if score @s Player matches 7 run data modify storage gui player.7.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute if score @s Player matches 8 run data modify storage gui player.8.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute if score @s Player matches 9 run data modify storage gui player.9.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute if score @s Player matches 10 run data modify storage gui player.10.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute if score @s Player matches 11 run data modify storage gui player.11.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
execute if score @s Player matches 12 run data modify storage gui player.12.actionbar.right_side set value ["                       ",{"score":{"name":"@s","objective":"arrow"}},{"text":"/"},{"score":{"name":"@s","objective":"maxarrow"}}]
# afiche à droite de la hotbar des archer leur nombre de flèches

function stuff:stuff_archer/save_stuff_as_storage/determine_player
function stuff:stuff_archer/stuffarcher