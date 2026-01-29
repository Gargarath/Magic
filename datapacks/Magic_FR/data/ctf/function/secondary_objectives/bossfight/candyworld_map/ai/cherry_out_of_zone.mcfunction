## appelée par bossfight_loop si la cerise est en dehors de la zone
## remet la cerise dans la zone et la rend invincible si il n'y a plus personne dans la zone

tp @s -19 164 -739
# tp la cerise au milieu

execute unless entity @a[tag=targetable] run function ctf:secondary_objectives/bossfight/candyworld_map/ai/make_invulnerable_and_noai
# si il n'y a personne dans la zone -> rend la cerise invincible
execute if entity @a[tag=targetable] run function ctf:secondary_objectives/bossfight/candyworld_map/ai/chose_spell
# si il y a quelqu'un dans la zone -> relance le système de focus