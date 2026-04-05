## appelée par timer_actualise/timer_actualise quand on à moins de 1:00
# permet d'afficher le temps restant en rouge

data modify storage minecraft:matchinfo time.minutes merge value {"color":"red"}
data modify storage minecraft:matchinfo time.colon merge value {"color":"red"}
data modify storage minecraft:matchinfo time.seconds.1 merge value {"color":"red"}
data modify storage minecraft:matchinfo time.seconds.2 merge value {"color":"red"}