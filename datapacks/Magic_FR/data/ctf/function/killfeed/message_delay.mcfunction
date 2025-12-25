#Appelé par killed après 1 tick, permet d'afficher dans le killfeed le kill qu'il vient d'y avoir

execute as @e[type=#minecraft:spellable,tag=killer,scores={killed_Player=1..}] run function ctf:killfeed/message_display