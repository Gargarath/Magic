## appelée par les fonctions de chute et de retour automatique des drapeaux
# permet d'envoyer à tous les joueurs l'annonce de drapeau dans leur langue personnelle

execute as @a run function gamemode:ctf/messages/flag/display with entity @s EnderItems[0].components.minecraft:custom_data
