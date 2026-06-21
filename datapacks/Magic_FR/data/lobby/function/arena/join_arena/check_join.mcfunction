## appelée par lobby:loop quand @s essaye de rejoindre l'arène du lobby
# permet de check si @s peut rejoindre l'arêne

execute if score $lobby_arena option_panel matches 0 run return run function lobby:arena/join_arena/cant_join/disabled with entity @s EnderItems[0].components.minecraft:custom_data
# si désactivé -> indique que pas possible

execute if entity @s[tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] if entity @s[scores={Player=0}] run function lobby:arena/join_arena/cant_join/no_class
# si @s n'a pas de classe et n'est pas en spec -> lui dit qu'il doit choisir une classe

execute unless entity @s[tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] if entity @s[scores={Player=0}] if score $arena_members Player matches 12.. run function lobby:arena/join_arena/cant_join/too_many_players
# si @s a une classe et n'est pas en spec mais qu'il y a déjà trop de joueurs dans l'arène  -> lui dit qu'il doit attendre

execute unless entity @s[tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] if entity @s[scores={Player=0}] if score $arena_members Player matches ..11 run function lobby:arena/join_arena/join_arena
# si @s a une classe et n'est pas en spec et qu'il y a de la place dans l'arène -> l'envoit dans l'arène

execute if entity @s[scores={Player=-1}] run function lobby:arena/join_arena/join_arena_spectator
# si @s est pas en spec -> l'envoit dans l'arène en spec