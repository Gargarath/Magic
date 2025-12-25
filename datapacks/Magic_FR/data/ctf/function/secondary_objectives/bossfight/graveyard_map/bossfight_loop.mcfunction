# appelée par ctf:loop lorsque la liche est réveillée
# permet de gerer la liche

execute as @e[type=wither_skeleton,tag=lich] run function ctf:secondary_objectives/bossfight/graveyard_map/display_bossbar
# affiche les pv de la liche dans le bossbar objectif secondaire

execute if entity @a[tag=targetable] unless entity @a[tag=target] as @e[type=wither_skeleton,tag=lich,limit=1] at @s facing entity @p[tag=targetable] feet run teleport @s ~ ~ ~ ~ ~
# si la liche n'a pas de cible -> la fait regarder le joueur le plus proche qui à le tag targetable

# rend la liche invulnérable quand il n'y a pas de joueurs dans l'église
execute if score invulnerable lich matches 0 unless entity @a[tag=targetable] as @e[type=minecraft:wither_skeleton,tag=lich,limit=1] run function ctf:secondary_objectives/bossfight/graveyard_map/invulnerable/become_invulnerable

# rend la liche vulnérable quand il y a des joueurs dans l'église
execute if score invulnerable lich matches 1 if entity @a[tag=targetable] as @e[type=wither_skeleton,tag=lich,limit=1] run function ctf:secondary_objectives/bossfight/graveyard_map/invulnerable/no_more_invulnerability
execute if score invulnerable lich matches 1 at @e[type=wither_skeleton,tag=lich] if entity @a[tag=invisibility_r,distance=..5] run function ctf:secondary_objectives/bossfight/graveyard_map/invulnerable/no_more_invulnerability

# gere les cd de la liche
execute if score cooldown lich matches 1.. run scoreboard players remove cooldown lich 1
execute if score cooldown lich matches 0 run function ctf:secondary_objectives/bossfight/graveyard_map/spells/cooldown_end
# réduit le cooldown, quand il arrive à 0 lance la fonction cooldown_end

# gere les casts de la liche
execute if score cast_time lich matches 1.. as @e[type=wither_skeleton,tag=lich,limit=1] at @s facing entity @p[tag=target] feet run teleport @s ~ ~ ~ ~ ~
# si la liche est en train de caster -> la fait regarder le joueur qu'elle cible
execute if score cast_time lich matches 1.. run scoreboard players remove cast_time lich 1
execute if score cast_time lich matches 0 run function ctf:secondary_objectives/bossfight/graveyard_map/spells/launch_spell
# réduit le cast time -> quand il arrive a 0 lance le spell

# gere la mort de la liche
execute unless entity @e[type=wither_skeleton,tag=lich] if score is_dead lich matches 0 run function ctf:secondary_objectives/bossfight/graveyard_map/lich_death

# gere les lancements de spells
execute if score is_using_spell lich matches 0 unless score cooldown lich matches 0.. if entity @a[tag=targetable] run function ctf:secondary_objectives/bossfight/graveyard_map/spells/cast_spell
# si il y a quelqu'un a porté de la liche, que la liche n'est pas en train de lancer un spell et n'a pas de cooldown

# SPELL 3
execute if score selected_spell lich matches 3 at @a[tag=target] if score cast_time lich matches 1.. run particle minecraft:smoke ~ ~2.1 ~ 0 0 0 0 1 normal @a
# affiche des particle au dessus du joueur qui va drop une aoe
execute if score selected_spell lich matches 3 if score cast_time lich matches 1.. run bossbar set lich:dmg_aoe players @a[tag=target,tag=targetable]
# affiche la bossbar maudit au joueur ciblé
execute if score selected_spell lich matches 3 store result bossbar lich:dmg_aoe value run scoreboard players get cast_time lich
# actualise la bossbar maudit selon lte temps de cast de la liche

execute as @e[type=marker,tag=lich_aoe] at @s run function ctf:secondary_objectives/bossfight/graveyard_map/spells/spell3/update_aoe
# gère l'aoe 1 de la liche (dégats / particule / vie)


# gere la victoire d'une des deux équipes
execute as @a[team=!spectator,nbt={Inventory:[{id:"minecraft:nether_star"}]}] run function ctf:secondary_objectives/bossfight/graveyard_map/picked_up_item

execute as @a[team=!spectator] at @s run function ctf:secondary_objectives/bossfight/graveyard_map/determine_targetable
# determine qui est ciblable par la liche