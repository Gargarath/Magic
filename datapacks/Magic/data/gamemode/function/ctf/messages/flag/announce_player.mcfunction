## appelée par les fonctions de capture, de pose et de sauvegarde des drapeaux
# permet de sauvegarder le nom du joueur concerné puis d'envoyer l'annonce traduite à tous

$data modify storage gamemode:ctf flag_message.actor_name set from storage stats:leaderboards by_player.$(player).name
execute as @a run function gamemode:ctf/messages/flag/display with entity @s EnderItems[0].components.minecraft:custom_data
