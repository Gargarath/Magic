## appelée par join_arena quand @s rejoint l'arène
# lui donne le stuff max pour mage

scoreboard players set @s weapon1 10
scoreboard players set @s chest 10
scoreboard players set @s legs 10
scoreboard players set @s boots 10

scoreboard players set @s spell1 3
scoreboard players set @s spell2 3
scoreboard players set @s spell3 1


scoreboard players set @s weapon1_max_range_m 45
# setup la distance max de l'arme de @s

scoreboard players set @s cooldownspell1 4
scoreboard players set @s cooldownspell2 4
scoreboard players set @s cooldownspell3 -1

scoreboard players set @s cooldown1_clock 20
scoreboard players set @s cooldown2_clock 20
scoreboard players set @s cooldown3_clock -1

execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell1 -1
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell2 -1
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell3 -1
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown1_clock -1
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown2_clock -1
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown3_clock -1
# si on est en mode 0 cooldown -> met tout les CD à -1

scoreboard players remove @s weapon1_mana_m 1
function spells:spellsystem/weapon1_m/refresh_timer/check_timer
# actualise la barre de mana de @s


function stuff:stuff_mage/save_stuff_as_storage/determine_player
function stuff:stuff_mage/stuffmage