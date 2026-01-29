

#particle flame ~ ~ ~ 0 0 0 0.0001 1 force
execute if block ~ ~ ~ #spell_beam positioned ~ ~-1 ~ positioned ^ ^ ^1 positioned ~ ~1 ~ run function spells:spellsystem/spell3/spell3_m/trail
execute unless block ~ ~ ~ #spell_beam positioned ~ ~ ~ if block ~ ~90 ~ barrier run function spells:spellsystem/spell3/spell3_m/show_can_tp
execute unless block ~ ~ ~ #spell_beam positioned ~ ~ ~ unless block ~ ~90 ~ barrier run scoreboard players set @s tp_range -1
scoreboard players add @s tp_range 1
execute if entity @s[tag=can_tp_m] run function spells:spellsystem/spell3/spell3_m/check_good_tp