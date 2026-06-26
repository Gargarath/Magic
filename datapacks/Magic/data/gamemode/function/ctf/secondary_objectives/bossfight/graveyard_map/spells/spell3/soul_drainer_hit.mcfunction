## appelée par update_aoe si @s est touché par le soul drainer
## inflige les dmg à @s

function gamemode:ctf/secondary_objectives/bossfight/graveyard_map/spells/spell3/took_soul_drainer
# indique que @s vient de prendre un soul_drainer (pour le killfeed)

#function main:stats/calculate_dmg_dealth/store_hp_before
# lance la fonction qui calcule les dégats subit par @s pour les stats du caster

damage @s 12 minecraft:player_attack by @e[type=#spellable,tag=lich,scores={Player=-2},limit=1]