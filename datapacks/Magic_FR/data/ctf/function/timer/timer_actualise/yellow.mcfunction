## appelée par timer_actualise/timer_actualise quand on est entre 1:00 et 2:29
# permet d'afficher le temps restant en jaune

data modify storage minecraft:matchinfo time.minutes merge value {"color":"yellow"}
data modify storage minecraft:matchinfo time.colon merge value {"color":"yellow"}
data modify storage minecraft:matchinfo time.seconds.1 merge value {"color":"yellow"}
data modify storage minecraft:matchinfo time.seconds.2 merge value {"color":"yellow"}