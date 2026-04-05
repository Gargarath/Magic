## appelée par timer_actualise/timer_actualise quand on est entre 2:30 et 5:00
# permet d'afficher le temps restant en vert

data modify storage minecraft:matchinfo time.minutes merge value {"color":"green"}
data modify storage minecraft:matchinfo time.colon merge value {"color":"green"}
data modify storage minecraft:matchinfo time.seconds.1 merge value {"color":"green"}
data modify storage minecraft:matchinfo time.seconds.2 merge value {"color":"green"}