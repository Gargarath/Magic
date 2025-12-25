# appelée par ctf:loop lorsque la living_cherry est réveillée
# permet de gerer la living_cherry

execute if score is_dead living_cherry matches 0 as @e[type=slime,tag=living_cherry] run function ctf:secondary_objectives/bossfight/candyworld_map/display_bossbar
# affiche les pv de la cerise vivante dans le bossbar objectif secondaire

# Focus
execute if entity @a[tag=targetable] unless entity @a[tag=target] as @e[type=minecraft:slime,tag=living_cherry,limit=1] run function ctf:secondary_objectives/bossfight/candyworld_map/ai/chose_spell
# si il n'y a un joueur dans la zone mais que le living_cherry de focus personne => le fait focus quelqu'un

# gere la mort du living_cherry
execute if score is_dead living_cherry matches 0 unless entity @e[type=slime,tag=living_cherry] run function ctf:secondary_objectives/bossfight/candyworld_map/living_cherry_death
execute if score is_dead living_cherry matches 1 as @e[type=slime,tag=living_cherry] at @s run function ctf:secondary_objectives/bossfight/candyworld_map/tp_residual_slimes
# tues les slimes résiduels
# invincibilité du living_cherry

execute if score invulnerable living_cherry matches 0 as @e[type=slime,tag=living_cherry] at @s unless entity @a[tag=targetable] unless entity @a[tag=target] unless entity @a[tag=invisibility_r,distance=..6] run function ctf:secondary_objectives/bossfight/candyworld_map/ai/make_living_cherry_invulnerable

execute if score invulnerable living_cherry matches 1 as @e[type=slime,tag=living_cherry,limit=1] at @s if entity @a[tag=invisibility_r,distance=..6] run function ctf:secondary_objectives/bossfight/candyworld_map/ai/no_more_invulnerability

# gere la victoire d'une des deux équipes
execute as @a[team=!spectator,nbt={Inventory:[{id:"minecraft:slime_ball"}]}] run function ctf:secondary_objectives/bossfight/candyworld_map/picked_up_item

execute if score is_dead living_cherry matches 0 as @e[type=minecraft:slime,tag=!targetable,limit=1] run function ctf:secondary_objectives/bossfight/candyworld_map/ai/cherry_out_of_zone
# si la cerise est active et qu'il n'y a plus de target -> check si la cerise est encore dans la zone et si non la remet dedans

execute as @e[type=#cherry_and_players] at @s run function ctf:secondary_objectives/bossfight/candyworld_map/determine_targetable
# determine qui est ciblable par la living_cherry



execute if score no_more_slime living_cherry matches 1 if score obj_complete living_cherry matches 1 run function ctf:secondary_objectives/bossfight/candyworld_map/objective_complete
# arrête l'objectif secondaire si il n'y a plus de slime et que l'objet a été ramassé