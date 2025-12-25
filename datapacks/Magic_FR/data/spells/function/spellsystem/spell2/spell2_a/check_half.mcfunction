## appelée par launch_trap/player_X/summon
## permet de poser le piège à ours selon la hauteur

execute unless block ~ ~ ~ #minecraft:half_blocs run function spells:spellsystem/spell2/spell2_a/summontrap
execute if block ~ ~ ~ #minecraft:half_blocs positioned ~ ~0.5 ~ run function spells:spellsystem/spell2/spell2_a/summontrap