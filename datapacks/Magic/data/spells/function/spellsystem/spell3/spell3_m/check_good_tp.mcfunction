## tant que le tp de @s n'est pas à la bonne hauteur, le baisse légérement

execute unless block ~ ~ ~ #spell_beam positioned ~ ~ ~ if block ~ ~90 ~ barrier run function spells:spellsystem/spell3/spell3_m/teleport
execute if block ~ ~ ~ #minecraft:spell_beam run function spells:spellsystem/spell3/spell3_m/can_not_teleport