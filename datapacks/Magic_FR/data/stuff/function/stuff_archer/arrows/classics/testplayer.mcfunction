## appelée par stuff:archer et aussi respawn si @s ne peut utiliser ses flèches
# donne à @s une flèche utilisable

clear @s arrow
clear @s stick

execute if score @s arrows_slot matches 0 run function stuff:stuff_archer/arrows/classics/slot0
execute if score @s arrows_slot matches 1 run function stuff:stuff_archer/arrows/classics/slot1
execute if score @s arrows_slot matches 2 run function stuff:stuff_archer/arrows/classics/slot2
execute if score @s arrows_slot matches 3 run function stuff:stuff_archer/arrows/classics/slot3
execute if score @s arrows_slot matches 4 run function stuff:stuff_archer/arrows/classics/slot4
execute if score @s arrows_slot matches 5 run function stuff:stuff_archer/arrows/classics/slot5
execute if score @s arrows_slot matches 6 run function stuff:stuff_archer/arrows/classics/slot6
execute if score @s arrows_slot matches 7 run function stuff:stuff_archer/arrows/classics/slot7
execute if score @s arrows_slot matches 8 run function stuff:stuff_archer/arrows/classics/slot8