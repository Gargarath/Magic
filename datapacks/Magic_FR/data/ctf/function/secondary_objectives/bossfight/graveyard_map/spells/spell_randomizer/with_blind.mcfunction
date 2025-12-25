## appelée par cast_spell si la cible n'est pas aveuglée
## choisit un des 3 spells selon le randomizer

execute if score spell_randomizer lich matches 1..11 run scoreboard players set selected_spell lich 1
execute if score spell_randomizer lich matches 12..14 run scoreboard players set selected_spell lich 2
execute if score spell_randomizer lich matches 15..16 run scoreboard players set selected_spell lich 3