# appelée par ctf:loop lorsque le golem est réveillé
# permet de gerer le golem

execute as @e[type=minecraft:iron_golem,tag=golem] run function ctf:secondary_objectives/bossfight/ruin_map/display_bossbar
# affiche les pv du golem dans le bossbar objectif secondaire

# Focus
execute if entity @a[tag=targetable] unless entity @a[tag=target] as @e[type=minecraft:iron_golem,tag=golem,limit=1] run function ctf:secondary_objectives/bossfight/ruin_map/ai/chose_spell
data modify entity @e[tag=golem,limit=1] angry_at set from entity @a[tag=target,tag=targetable,limit=1] UUID
# si il n'y a un joueur dans la zone mais que le golem de focus personne => le fait focus quelqu'un

#execute as @e[type=minecraft:iron_golem,tag=golem] at @s unless block ~ ~-34 ~ minecraft:magenta_wool run tp @s -519 146 -111
# si le golem est en dehors de la zone, le retp au milieu

# gere la mort du golem
execute unless entity @e[tag=golem] if score is_dead golem matches 0 run function ctf:secondary_objectives/bossfight/ruin_map/golem_death

# invincibilité du golem
execute if score invulnerable golem matches 0 unless entity @a[tag=targetable] unless entity @a[tag=target] as @e[type=minecraft:iron_golem,tag=golem,nbt={Invulnerable:0b},limit=1] run function ctf:secondary_objectives/bossfight/ruin_map/ai/make_golem_invulnerable

execute if score invulnerable golem matches 1 as @e[type=iron_golem,tag=golem,limit=1] at @s if entity @a[tag=invisibility_r,distance=..6] run function ctf:secondary_objectives/bossfight/ruin_map/ai/no_more_invulnerability


# actualise la bossbar maudit selon le temps de cast du golem

# gere la victoire d'une des deux équipes
execute as @a[scores={Player=1..},nbt={Inventory:[{id:"minecraft:emerald_block"}]}] run function ctf:secondary_objectives/bossfight/ruin_map/picked_up_item


execute if entity @a[tag=target] unless entity @a[tag=target,tag=targetable] as @e[type=iron_golem,tag=golem] run function ctf:secondary_objectives/bossfight/ruin_map/ai/reset_aggro
# si il n'y a plus personne a focus, reset l'aggro du golem
execute if entity @e[type=minecraft:zombie,tag=golem_waiting_spot] positioned -519 146 -111 if entity @e[tag=golem,distance=..2] run function ctf:secondary_objectives/bossfight/ruin_map/ai/freeze_golem
# permet de freeze le golem une fois qu'il est retourné à son spot

execute as @a[scores={Player=1..}] at @s run function ctf:secondary_objectives/bossfight/ruin_map/determine_targetable
# determine qui est ciblable par le golem