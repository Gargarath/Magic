## appelée par end_game ou stop_game
# permet de mettre la barre du haut en mode lobby

schedule clear gamemode:ctf/timer/refresh_timer
# désactive la boucle du chronomettre

data modify storage minecraft:matchinfo time.minutes set value "\uE706"
data modify storage minecraft:matchinfo time.colon set value "\uE702"
data modify storage minecraft:matchinfo time.seconds.1 set value "\uE706"
data modify storage minecraft:matchinfo time.seconds.2 set value "\uE706"
# clear le chronometre

data modify storage minecraft:matchinfo.blue flag_state set value {"text":"\uE709"}
data modify storage minecraft:matchinfo.red flag_state set value {"text":"\uE709"}
# clear les drapeau

data modify storage minecraft:matchinfo round set value {"text":"\uE707"}
# enlève l'affichage du round

data modify storage minecraft:matchinfo map set value {"text":"\uE710\uE710\uE710\uE710\uE708","color":"aqua","bold":true}
# enlève l'affichage de la map
