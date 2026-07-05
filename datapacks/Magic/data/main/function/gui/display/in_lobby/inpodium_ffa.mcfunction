## appelée depuis le lobby pour afficher le résultat de la dernière FFA
# ingame_ffa possède déjà le rendu complet du classement FFA pour les spectateurs

scoreboard players set @s Player -1
function main:gui/display/in_game/ingame_ffa with entity @s EnderItems[0].components.minecraft:custom_data
scoreboard players set @s Player 0
