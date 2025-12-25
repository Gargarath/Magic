## appelée par darkness_trail si @s est touché
## effectue le sort et inflige les dmg à @s

scoreboard players set cooldown lich 1
# met la liche en cooldown

execute as @a[tag=targetable] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100 0
effect give @s minecraft:blindness 5 0 true

function ctf:secondary_objectives/bossfight/graveyard_map/spells/spell2/system/took_darkness_trail
# indique que @s vient de prendre un darkness_trail (pour le killfeed)

#function main:stats/calculate_dmg_dealth/store_hp_before
# lance la fonction qui calcule les dégats subit par @s pour les stats du caster

damage @s 8 minecraft:player_attack by @e[type=#spellable,tag=lich,scores={Player=-2},limit=1]