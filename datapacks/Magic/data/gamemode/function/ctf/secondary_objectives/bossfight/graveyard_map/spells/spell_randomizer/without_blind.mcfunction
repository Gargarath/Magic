## appelée par cast_spell si la cible est déjà aveuglée
## choisit un des 2 spells selon le randomizer

execute if score spell_randomizer lich matches 1..13 run scoreboard players set selected_spell lich 1
execute if score spell_randomizer lich matches 14..16 run scoreboard players set selected_spell lich 3