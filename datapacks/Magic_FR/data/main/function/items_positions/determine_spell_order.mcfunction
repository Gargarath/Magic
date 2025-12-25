## appelée par les spell item position des différente classe quand @s a un nouvel ordre d'item dans l'inventaire
# permet de stocker où est placé quel sort dans l'inventaire pour les keybind de @sa


execute if score @s opt_keybind_order matches 1 run scoreboard players set @s temp1_key_slot -999
execute if score @s opt_keybind_order matches 1 run scoreboard players set @s temp2_key_slot -999
execute if score @s opt_keybind_order matches 1 run scoreboard players set @s temp3_key_slot -999

execute if score @s opt_keybind_order matches 2 run scoreboard players set @s temp1_key_slot 999
execute if score @s opt_keybind_order matches 2 run scoreboard players set @s temp2_key_slot 999
execute if score @s opt_keybind_order matches 2 run scoreboard players set @s temp3_key_slot 999

execute if score @s spell1 matches 1.. run scoreboard players operation @s temp1_key_slot = @s spell1_slot2
execute if score @s spell2 matches 1.. run scoreboard players operation @s temp2_key_slot = @s spell2_slot2
execute if score @s spell3 matches 1.. run scoreboard players operation @s temp3_key_slot = @s spell3_slot2

scoreboard players set @s sort_key_slot 0
execute if score @s opt_keybind_order matches 1 if score @s temp1_key_slot < @s temp2_key_slot run scoreboard players set @s sort_key_slot 1
execute if score @s opt_keybind_order matches 2 if score @s temp1_key_slot > @s temp2_key_slot run scoreboard players set @s sort_key_slot 1
execute if score @s sort_key_slot matches 1 run scoreboard players operation @s temp_key_slot = @s temp1_key_slot
execute if score @s sort_key_slot matches 1 run scoreboard players operation @s temp1_key_slot = @s temp2_key_slot
execute if score @s sort_key_slot matches 1 run scoreboard players operation @s temp2_key_slot = @s temp_key_slot

# swap(a,c) si a>c
scoreboard players set @s sort_key_slot 0
execute if score @s opt_keybind_order matches 1 if score @s temp1_key_slot < @s temp3_key_slot run scoreboard players set @s sort_key_slot 1
execute if score @s opt_keybind_order matches 2 if score @s temp1_key_slot > @s temp3_key_slot run scoreboard players set @s sort_key_slot 1
execute if score @s sort_key_slot matches 1 run scoreboard players operation @s temp_key_slot = @s temp1_key_slot
execute if score @s sort_key_slot matches 1 run scoreboard players operation @s temp1_key_slot = @s temp3_key_slot
execute if score @s sort_key_slot matches 1 run scoreboard players operation @s temp3_key_slot = @s temp_key_slot

# swap(b,c) si b>c
scoreboard players set @s sort_key_slot 0
execute if score @s opt_keybind_order matches 1 if score @s temp2_key_slot < @s temp3_key_slot run scoreboard players set @s sort_key_slot 1
execute if score @s opt_keybind_order matches 2 if score @s temp2_key_slot > @s temp3_key_slot run scoreboard players set @s sort_key_slot 1
execute if score @s sort_key_slot matches 1 run scoreboard players operation @s temp_key_slot = @s temp2_key_slot
execute if score @s sort_key_slot matches 1 run scoreboard players operation @s temp2_key_slot = @s temp3_key_slot
execute if score @s sort_key_slot matches 1 run scoreboard players operation @s temp3_key_slot = @s temp_key_slot

# Sortie

scoreboard players operation @s key_slot1 = @s temp1_key_slot
scoreboard players operation @s key_slot2 = @s temp2_key_slot
scoreboard players operation @s key_slot3 = @s temp3_key_slot


## ENREGISTRE CA DANS LES STORAGE POUR DISPLAY

# Joueur 1
execute if score @s Player matches 1 if score @s key_slot1 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.1.key_slot1 set from storage stats:leaderboards by_player.1.spell1
execute if score @s Player matches 1 if score @s key_slot1 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.1.key_slot1 set from storage stats:leaderboards by_player.1.spell2
execute if score @s Player matches 1 if score @s key_slot1 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.1.key_slot1 set from storage stats:leaderboards by_player.1.spell3


execute if score @s Player matches 1 if score @s key_slot2 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.1.key_slot2 set from storage stats:leaderboards by_player.1.spell1
execute if score @s Player matches 1 if score @s key_slot2 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.1.key_slot2 set from storage stats:leaderboards by_player.1.spell2
execute if score @s Player matches 1 if score @s key_slot2 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.1.key_slot2 set from storage stats:leaderboards by_player.1.spell3

execute if score @s Player matches 1 if score @s key_slot3 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.1.key_slot3 set from storage stats:leaderboards by_player.1.spell1
execute if score @s Player matches 1 if score @s key_slot3 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.1.key_slot3 set from storage stats:leaderboards by_player.1.spell2
execute if score @s Player matches 1 if score @s key_slot3 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.1.key_slot3 set from storage stats:leaderboards by_player.1.spell3
execute if score @s[tag=!warrior,tag=!rogue] Player matches 1 run data modify storage stats:leaderboards by_player.1.key_slot3 set from storage stats:leaderboards by_player.1.weapon1

# Joueur 2
execute if score @s Player matches 2 if score @s key_slot1 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.2.key_slot1 set from storage stats:leaderboards by_player.2.spell1
execute if score @s Player matches 2 if score @s key_slot1 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.2.key_slot1 set from storage stats:leaderboards by_player.2.spell2
execute if score @s Player matches 2 if score @s key_slot1 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.2.key_slot1 set from storage stats:leaderboards by_player.2.spell3

execute if score @s Player matches 2 if score @s key_slot2 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.2.key_slot2 set from storage stats:leaderboards by_player.2.spell1
execute if score @s Player matches 2 if score @s key_slot2 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.2.key_slot2 set from storage stats:leaderboards by_player.2.spell2
execute if score @s Player matches 2 if score @s key_slot2 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.2.key_slot2 set from storage stats:leaderboards by_player.2.spell3

execute if score @s Player matches 2 if score @s key_slot3 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.2.key_slot3 set from storage stats:leaderboards by_player.2.spell1
execute if score @s Player matches 2 if score @s key_slot3 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.2.key_slot3 set from storage stats:leaderboards by_player.2.spell2
execute if score @s Player matches 2 if score @s key_slot3 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.2.key_slot3 set from storage stats:leaderboards by_player.2.spell3
execute if score @s[tag=!warrior,tag=!rogue] Player matches 2 run data modify storage stats:leaderboards by_player.2.key_slot3 set from storage stats:leaderboards by_player.2.weapon1

# Joueur 3
execute if score @s Player matches 3 if score @s key_slot1 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.3.key_slot1 set from storage stats:leaderboards by_player.3.spell1
execute if score @s Player matches 3 if score @s key_slot1 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.3.key_slot1 set from storage stats:leaderboards by_player.3.spell2
execute if score @s Player matches 3 if score @s key_slot1 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.3.key_slot1 set from storage stats:leaderboards by_player.3.spell3

execute if score @s Player matches 3 if score @s key_slot2 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.3.key_slot2 set from storage stats:leaderboards by_player.3.spell1
execute if score @s Player matches 3 if score @s key_slot2 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.3.key_slot2 set from storage stats:leaderboards by_player.3.spell2
execute if score @s Player matches 3 if score @s key_slot2 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.3.key_slot2 set from storage stats:leaderboards by_player.3.spell3

execute if score @s Player matches 3 if score @s key_slot3 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.3.key_slot3 set from storage stats:leaderboards by_player.3.spell1
execute if score @s Player matches 3 if score @s key_slot3 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.3.key_slot3 set from storage stats:leaderboards by_player.3.spell2
execute if score @s Player matches 3 if score @s key_slot3 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.3.key_slot3 set from storage stats:leaderboards by_player.3.spell3
execute if score @s[tag=!warrior,tag=!rogue] Player matches 3 run data modify storage stats:leaderboards by_player.3.key_slot3 set from storage stats:leaderboards by_player.3.weapon1

# Joueur 4
execute if score @s Player matches 4 if score @s key_slot1 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.4.key_slot1 set from storage stats:leaderboards by_player.4.spell1
execute if score @s Player matches 4 if score @s key_slot1 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.4.key_slot1 set from storage stats:leaderboards by_player.4.spell2
execute if score @s Player matches 4 if score @s key_slot1 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.4.key_slot1 set from storage stats:leaderboards by_player.4.spell3

execute if score @s Player matches 4 if score @s key_slot2 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.4.key_slot2 set from storage stats:leaderboards by_player.4.spell1
execute if score @s Player matches 4 if score @s key_slot2 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.4.key_slot2 set from storage stats:leaderboards by_player.4.spell2
execute if score @s Player matches 4 if score @s key_slot2 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.4.key_slot2 set from storage stats:leaderboards by_player.4.spell3

execute if score @s Player matches 4 if score @s key_slot3 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.4.key_slot3 set from storage stats:leaderboards by_player.4.spell1
execute if score @s Player matches 4 if score @s key_slot3 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.4.key_slot3 set from storage stats:leaderboards by_player.4.spell2
execute if score @s Player matches 4 if score @s key_slot3 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.4.key_slot3 set from storage stats:leaderboards by_player.4.spell3
execute if score @s[tag=!warrior,tag=!rogue] Player matches 4 run data modify storage stats:leaderboards by_player.4.key_slot3 set from storage stats:leaderboards by_player.4.weapon1

# Joueur 5
execute if score @s Player matches 5 if score @s key_slot1 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.5.key_slot1 set from storage stats:leaderboards by_player.5.spell1
execute if score @s Player matches 5 if score @s key_slot1 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.5.key_slot1 set from storage stats:leaderboards by_player.5.spell2
execute if score @s Player matches 5 if score @s key_slot1 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.5.key_slot1 set from storage stats:leaderboards by_player.5.spell3

execute if score @s Player matches 5 if score @s key_slot2 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.5.key_slot2 set from storage stats:leaderboards by_player.5.spell1
execute if score @s Player matches 5 if score @s key_slot2 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.5.key_slot2 set from storage stats:leaderboards by_player.5.spell2
execute if score @s Player matches 5 if score @s key_slot2 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.5.key_slot2 set from storage stats:leaderboards by_player.5.spell3

execute if score @s Player matches 5 if score @s key_slot3 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.5.key_slot3 set from storage stats:leaderboards by_player.5.spell1
execute if score @s Player matches 5 if score @s key_slot3 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.5.key_slot3 set from storage stats:leaderboards by_player.5.spell2
execute if score @s Player matches 5 if score @s key_slot3 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.5.key_slot3 set from storage stats:leaderboards by_player.5.spell3
execute if score @s[tag=!warrior,tag=!rogue] Player matches 5 run data modify storage stats:leaderboards by_player.5.key_slot3 set from storage stats:leaderboards by_player.5.weapon1

# Joueur 6
execute if score @s Player matches 6 if score @s key_slot1 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.6.key_slot1 set from storage stats:leaderboards by_player.6.spell1
execute if score @s Player matches 6 if score @s key_slot1 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.6.key_slot1 set from storage stats:leaderboards by_player.6.spell2
execute if score @s Player matches 6 if score @s key_slot1 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.6.key_slot1 set from storage stats:leaderboards by_player.6.spell3

execute if score @s Player matches 6 if score @s key_slot2 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.6.key_slot2 set from storage stats:leaderboards by_player.6.spell1
execute if score @s Player matches 6 if score @s key_slot2 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.6.key_slot2 set from storage stats:leaderboards by_player.6.spell2
execute if score @s Player matches 6 if score @s key_slot2 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.6.key_slot2 set from storage stats:leaderboards by_player.6.spell3

execute if score @s Player matches 6 if score @s key_slot3 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.6.key_slot3 set from storage stats:leaderboards by_player.6.spell1
execute if score @s Player matches 6 if score @s key_slot3 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.6.key_slot3 set from storage stats:leaderboards by_player.6.spell2
execute if score @s Player matches 6 if score @s key_slot3 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.6.key_slot3 set from storage stats:leaderboards by_player.6.spell3
execute if score @s[tag=!warrior,tag=!rogue] Player matches 6 run data modify storage stats:leaderboards by_player.6.key_slot3 set from storage stats:leaderboards by_player.6.weapon1

# Joueur 7
execute if score @s Player matches 7 if score @s key_slot1 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.7.key_slot1 set from storage stats:leaderboards by_player.7.spell1
execute if score @s Player matches 7 if score @s key_slot1 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.7.key_slot1 set from storage stats:leaderboards by_player.7.spell2
execute if score @s Player matches 7 if score @s key_slot1 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.7.key_slot1 set from storage stats:leaderboards by_player.7.spell3

execute if score @s Player matches 7 if score @s key_slot2 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.7.key_slot2 set from storage stats:leaderboards by_player.7.spell1
execute if score @s Player matches 7 if score @s key_slot2 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.7.key_slot2 set from storage stats:leaderboards by_player.7.spell2
execute if score @s Player matches 7 if score @s key_slot2 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.7.key_slot2 set from storage stats:leaderboards by_player.7.spell3

execute if score @s Player matches 7 if score @s key_slot3 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.7.key_slot3 set from storage stats:leaderboards by_player.7.spell1
execute if score @s Player matches 7 if score @s key_slot3 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.7.key_slot3 set from storage stats:leaderboards by_player.7.spell2
execute if score @s Player matches 7 if score @s key_slot3 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.7.key_slot3 set from storage stats:leaderboards by_player.7.spell3
execute if score @s[tag=!warrior,tag=!rogue] Player matches 7 run data modify storage stats:leaderboards by_player.7.key_slot3 set from storage stats:leaderboards by_player.7.weapon1

# Joueur 8
execute if score @s Player matches 8 if score @s key_slot1 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.8.key_slot1 set from storage stats:leaderboards by_player.8.spell1
execute if score @s Player matches 8 if score @s key_slot1 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.8.key_slot1 set from storage stats:leaderboards by_player.8.spell2
execute if score @s Player matches 8 if score @s key_slot1 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.8.key_slot1 set from storage stats:leaderboards by_player.8.spell3

execute if score @s Player matches 8 if score @s key_slot2 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.8.key_slot2 set from storage stats:leaderboards by_player.8.spell1
execute if score @s Player matches 8 if score @s key_slot2 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.8.key_slot2 set from storage stats:leaderboards by_player.8.spell2
execute if score @s Player matches 8 if score @s key_slot2 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.8.key_slot2 set from storage stats:leaderboards by_player.8.spell3

execute if score @s Player matches 8 if score @s key_slot3 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.8.key_slot3 set from storage stats:leaderboards by_player.8.spell1
execute if score @s Player matches 8 if score @s key_slot3 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.8.key_slot3 set from storage stats:leaderboards by_player.8.spell2
execute if score @s Player matches 8 if score @s key_slot3 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.8.key_slot3 set from storage stats:leaderboards by_player.8.spell3
execute if score @s[tag=!warrior,tag=!rogue] Player matches 8 run data modify storage stats:leaderboards by_player.8.key_slot3 set from storage stats:leaderboards by_player.8.weapon1

# Joueur 9
execute if score @s Player matches 9 if score @s key_slot1 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.9.key_slot1 set from storage stats:leaderboards by_player.9.spell1
execute if score @s Player matches 9 if score @s key_slot1 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.9.key_slot1 set from storage stats:leaderboards by_player.9.spell2
execute if score @s Player matches 9 if score @s key_slot1 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.9.key_slot1 set from storage stats:leaderboards by_player.9.spell3

execute if score @s Player matches 9 if score @s key_slot2 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.9.key_slot2 set from storage stats:leaderboards by_player.9.spell1
execute if score @s Player matches 9 if score @s key_slot2 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.9.key_slot2 set from storage stats:leaderboards by_player.9.spell2
execute if score @s Player matches 9 if score @s key_slot2 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.9.key_slot2 set from storage stats:leaderboards by_player.9.spell3

execute if score @s Player matches 9 if score @s key_slot3 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.9.key_slot3 set from storage stats:leaderboards by_player.9.spell1
execute if score @s Player matches 9 if score @s key_slot3 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.9.key_slot3 set from storage stats:leaderboards by_player.9.spell2
execute if score @s Player matches 9 if score @s key_slot3 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.9.key_slot3 set from storage stats:leaderboards by_player.9.spell3
execute if score @s[tag=!warrior,tag=!rogue] Player matches 9 run data modify storage stats:leaderboards by_player.9.key_slot3 set from storage stats:leaderboards by_player.9.weapon1

# Joueur 10
execute if score @s Player matches 10 if score @s key_slot1 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.10.key_slot1 set from storage stats:leaderboards by_player.10.spell1
execute if score @s Player matches 10 if score @s key_slot1 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.10.key_slot1 set from storage stats:leaderboards by_player.10.spell2
execute if score @s Player matches 10 if score @s key_slot1 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.10.key_slot1 set from storage stats:leaderboards by_player.10.spell3

execute if score @s Player matches 10 if score @s key_slot2 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.10.key_slot2 set from storage stats:leaderboards by_player.10.spell1
execute if score @s Player matches 10 if score @s key_slot2 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.10.key_slot2 set from storage stats:leaderboards by_player.10.spell2
execute if score @s Player matches 10 if score @s key_slot2 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.10.key_slot2 set from storage stats:leaderboards by_player.10.spell3

execute if score @s Player matches 10 if score @s key_slot3 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.10.key_slot3 set from storage stats:leaderboards by_player.10.spell1
execute if score @s Player matches 10 if score @s key_slot3 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.10.key_slot3 set from storage stats:leaderboards by_player.10.spell2
execute if score @s Player matches 10 if score @s key_slot3 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.10.key_slot3 set from storage stats:leaderboards by_player.10.spell3
execute if score @s[tag=!warrior,tag=!rogue] Player matches 10 run data modify storage stats:leaderboards by_player.10.key_slot3 set from storage stats:leaderboards by_player.10.weapon1

# Joueur 11
execute if score @s Player matches 11 if score @s key_slot1 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.11.key_slot1 set from storage stats:leaderboards by_player.11.spell1
execute if score @s Player matches 11 if score @s key_slot1 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.11.key_slot1 set from storage stats:leaderboards by_player.11.spell2
execute if score @s Player matches 11 if score @s key_slot1 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.11.key_slot1 set from storage stats:leaderboards by_player.11.spell3

execute if score @s Player matches 11 if score @s key_slot2 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.11.key_slot2 set from storage stats:leaderboards by_player.11.spell1
execute if score @s Player matches 11 if score @s key_slot2 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.11.key_slot2 set from storage stats:leaderboards by_player.11.spell2
execute if score @s Player matches 11 if score @s key_slot2 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.11.key_slot2 set from storage stats:leaderboards by_player.11.spell3

execute if score @s Player matches 11 if score @s key_slot3 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.11.key_slot3 set from storage stats:leaderboards by_player.11.spell1
execute if score @s Player matches 11 if score @s key_slot3 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.11.key_slot3 set from storage stats:leaderboards by_player.11.spell2
execute if score @s Player matches 11 if score @s key_slot3 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.11.key_slot3 set from storage stats:leaderboards by_player.11.spell3
execute if score @s[tag=!warrior,tag=!rogue] Player matches 11 run data modify storage stats:leaderboards by_player.11.key_slot3 set from storage stats:leaderboards by_player.11.weapon1

# Joueur 12
execute if score @s Player matches 12 if score @s key_slot1 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.12.key_slot1 set from storage stats:leaderboards by_player.12.spell1
execute if score @s Player matches 12 if score @s key_slot1 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.12.key_slot1 set from storage stats:leaderboards by_player.12.spell2
execute if score @s Player matches 12 if score @s key_slot1 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.12.key_slot1 set from storage stats:leaderboards by_player.12.spell3

execute if score @s Player matches 12 if score @s key_slot2 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.12.key_slot2 set from storage stats:leaderboards by_player.12.spell1
execute if score @s Player matches 12 if score @s key_slot2 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.12.key_slot2 set from storage stats:leaderboards by_player.12.spell2
execute if score @s Player matches 12 if score @s key_slot2 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.12.key_slot2 set from storage stats:leaderboards by_player.12.spell3

execute if score @s Player matches 12 if score @s key_slot3 = @s spell1_slot2 run data modify storage stats:leaderboards by_player.12.key_slot3 set from storage stats:leaderboards by_player.12.spell1
execute if score @s Player matches 12 if score @s key_slot3 = @s spell2_slot2 run data modify storage stats:leaderboards by_player.12.key_slot3 set from storage stats:leaderboards by_player.12.spell2
execute if score @s Player matches 12 if score @s key_slot3 = @s spell3_slot2 run data modify storage stats:leaderboards by_player.12.key_slot3 set from storage stats:leaderboards by_player.12.spell3
execute if score @s[tag=!warrior,tag=!rogue] Player matches 12 run data modify storage stats:leaderboards by_player.12.key_slot3 set from storage stats:leaderboards by_player.12.weapon1

function main:gui/display/refresh_gui
# refresh le gui