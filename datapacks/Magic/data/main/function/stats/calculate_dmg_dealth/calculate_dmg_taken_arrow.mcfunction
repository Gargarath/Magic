##appelé par main:stats/store_hp_after 1t après que @s ait subit un dégat à calculer

execute store result score @s health10 run data get entity @s Health 10
# stock la vie de @s dans un scoreboard en x10 (pour compter les décimales)
execute store result score @s absorption10 run data get entity @s AbsorptionAmount 10
# stock l'absorption de @s dans un scoreboard en x10 (pour compter les décimales)
scoreboard players operation @s hp_after10 = @s health10
# ajoute le montant de vie de @s dans son score de après les dégats
scoreboard players operation @s hp_after10 += @s absorption10
# ajoute le montant d'absorption de @s dans son score de après les dégats

scoreboard players operation @s hp_before10 -= @s hp_after10
# soustrait les pvp après dégats au pvp avant dégats (=dégats reçus)

# --- Attribution des dégâts selon la cible ---
# 1) Cible = BOSS (entity type tag #boss)
execute if entity @s[type=#boss] if score @s last_caster matches 1 run scoreboard players operation @a[scores={Player=1},limit=1] stat_bow_dmg_boss10 += @s hp_before10
execute if entity @s[type=#boss] if score @s last_caster matches 2 run scoreboard players operation @a[scores={Player=2},limit=1] stat_bow_dmg_boss10 += @s hp_before10
execute if entity @s[type=#boss] if score @s last_caster matches 3 run scoreboard players operation @a[scores={Player=3},limit=1] stat_bow_dmg_boss10 += @s hp_before10
execute if entity @s[type=#boss] if score @s last_caster matches 4 run scoreboard players operation @a[scores={Player=4},limit=1] stat_bow_dmg_boss10 += @s hp_before10
execute if entity @s[type=#boss] if score @s last_caster matches 5 run scoreboard players operation @a[scores={Player=5},limit=1] stat_bow_dmg_boss10 += @s hp_before10
execute if entity @s[type=#boss] if score @s last_caster matches 6 run scoreboard players operation @a[scores={Player=6},limit=1] stat_bow_dmg_boss10 += @s hp_before10
execute if entity @s[type=#boss] if score @s last_caster matches 7 run scoreboard players operation @a[scores={Player=7},limit=1] stat_bow_dmg_boss10 += @s hp_before10
execute if entity @s[type=#boss] if score @s last_caster matches 8 run scoreboard players operation @a[scores={Player=8},limit=1] stat_bow_dmg_boss10 += @s hp_before10
execute if entity @s[type=#boss] if score @s last_caster matches 9 run scoreboard players operation @a[scores={Player=9},limit=1] stat_bow_dmg_boss10 += @s hp_before10
execute if entity @s[type=#boss] if score @s last_caster matches 10 run scoreboard players operation @a[scores={Player=10},limit=1] stat_bow_dmg_boss10 += @s hp_before10
execute if entity @s[type=#boss] if score @s last_caster matches 11 run scoreboard players operation @a[scores={Player=11},limit=1] stat_bow_dmg_boss10 += @s hp_before10
execute if entity @s[type=#boss] if score @s last_caster matches 12 run scoreboard players operation @a[scores={Player=12},limit=1] stat_bow_dmg_boss10 += @s hp_before10
# 3) Cible = JOUEUR ENNEMI (Team différente du caster)
execute if entity @s[type=player] if score @s last_caster matches 1 unless score @s team_side = @a[scores={Player=1},limit=1] team_side run scoreboard players operation @a[scores={Player=1},limit=1] stat_bow_dmg_player10 += @s hp_before10
execute if entity @s[type=player] if score @s last_caster matches 2 unless score @s team_side = @a[scores={Player=2},limit=1] team_side run scoreboard players operation @a[scores={Player=2},limit=1] stat_bow_dmg_player10 += @s hp_before10
execute if entity @s[type=player] if score @s last_caster matches 3 unless score @s team_side = @a[scores={Player=3},limit=1] team_side run scoreboard players operation @a[scores={Player=3},limit=1] stat_bow_dmg_player10 += @s hp_before10
execute if entity @s[type=player] if score @s last_caster matches 4 unless score @s team_side = @a[scores={Player=4},limit=1] team_side run scoreboard players operation @a[scores={Player=4},limit=1] stat_bow_dmg_player10 += @s hp_before10
execute if entity @s[type=player] if score @s last_caster matches 5 unless score @s team_side = @a[scores={Player=5},limit=1] team_side run scoreboard players operation @a[scores={Player=5},limit=1] stat_bow_dmg_player10 += @s hp_before10
execute if entity @s[type=player] if score @s last_caster matches 6 unless score @s team_side = @a[scores={Player=6},limit=1] team_side run scoreboard players operation @a[scores={Player=6},limit=1] stat_bow_dmg_player10 += @s hp_before10
execute if entity @s[type=player] if score @s last_caster matches 7 unless score @s team_side = @a[scores={Player=7},limit=1] team_side run scoreboard players operation @a[scores={Player=7},limit=1] stat_bow_dmg_player10 += @s hp_before10
execute if entity @s[type=player] if score @s last_caster matches 8 unless score @s team_side = @a[scores={Player=8},limit=1] team_side run scoreboard players operation @a[scores={Player=8},limit=1] stat_bow_dmg_player10 += @s hp_before10
execute if entity @s[type=player] if score @s last_caster matches 9 unless score @s team_side = @a[scores={Player=9},limit=1] team_side run scoreboard players operation @a[scores={Player=9},limit=1] stat_bow_dmg_player10 += @s hp_before10
execute if entity @s[type=player] if score @s last_caster matches 10 unless score @s team_side = @a[scores={Player=10},limit=1] team_side run scoreboard players operation @a[scores={Player=10},limit=1] stat_bow_dmg_player10 += @s hp_before10
execute if entity @s[type=player] if score @s last_caster matches 11 unless score @s team_side = @a[scores={Player=11},limit=1] team_side run scoreboard players operation @a[scores={Player=11},limit=1] stat_bow_dmg_player10 += @s hp_before10
execute if entity @s[type=player] if score @s last_caster matches 12 unless score @s team_side = @a[scores={Player=12},limit=1] team_side run scoreboard players operation @a[scores={Player=12},limit=1] stat_bow_dmg_player10 += @s hp_before10

#tellraw @a ["",{"nbt":"death_cause.1","storage":"main:killfeed"}]
# a teme ce storage (selon le n° de joueur) permet de préciser de quelle façon il a subit les dégats et donc de mettre dans le spell adapté


scoreboard players set @s last_caster 0
# reset le score qui indique que @s vient de se faire cibler
scoreboard players reset @s health10
scoreboard players reset @s absorption10
scoreboard players reset @s hp_after10
scoreboard players reset @s hp_before10
# reset les scores temporaire de @s

tag @s remove took_arrow