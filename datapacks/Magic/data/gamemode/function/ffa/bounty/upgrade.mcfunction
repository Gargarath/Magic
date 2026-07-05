## Macro appelée lorsqu'un joueur gagne un niveau de prime.

scoreboard players operation $old_bounty_level ffa_bounty_calc = @s ffa_bounty_level
scoreboard players operation @s ffa_bounty_level = @s ffa_bounty_calc

# L'annonce globale n'est envoyée qu'à l'activation initiale.
$execute if score $old_bounty_level ffa_bounty_calc matches 0 run data modify storage gamemode:ffa_bounty target_name set from storage main:killfeed name.$(player)
execute if score $old_bounty_level ffa_bounty_calc matches 0 run scoreboard players operation $bounty_announcement ffa_bounty_calc = @s ffa_bounty_level
execute if score $old_bounty_level ffa_bounty_calc matches 0 run scoreboard players operation $bounty_announcement ffa_bounty_calc *= $ph_per_kills option_panel
execute if score $old_bounty_level ffa_bounty_calc matches 0 store result storage gamemode:ffa_bounty amount int 1 run scoreboard players get $bounty_announcement ffa_bounty_calc
execute if score $old_bounty_level ffa_bounty_calc matches 0 as @a run function gamemode:ffa/bounty/announce_acquired with entity @s EnderItems[0].components.minecraft:custom_data
