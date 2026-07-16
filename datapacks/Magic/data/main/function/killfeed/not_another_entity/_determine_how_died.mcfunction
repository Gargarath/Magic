# appelé par respawn si @s n'est pas mort d'un autre joueur ou d'un boss
# permet de check si il s'est auto tué ou qu'il est mort de l'environnement

execute if entity @s[tag=self_target] run function main:killfeed/not_another_entity/_killed_itself
execute unless entity @s[tag=self_target] if entity @s[tag=killed_by_ally] run function main:killfeed/not_another_entity/_killed_by_ally
execute unless entity @s[tag=self_target] unless entity @s[tag=killed_by_ally] if entity @s[tag=get_exploded] run function main:killfeed/not_another_entity/_get_exploded

execute unless entity @s[tag=self_target] unless entity @s[tag=killed_by_ally] unless entity @s[tag=get_exploded] run function main:killfeed/not_another_entity/_environement

scoreboard players set @s killfeed_died 0
scoreboard players set @s killfeed_died_checked 0
# reset le flag de @s utilisé pour dire à ctf:respawn de pas check si il est mort par l'environnement (car on vient de l'annoncer)