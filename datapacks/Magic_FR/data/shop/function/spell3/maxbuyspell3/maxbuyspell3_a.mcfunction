# Reset l'item frame spell3 et indique que l'on a atteint le niveau maximum

playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 0


execute as @e[tag=spell3,distance=..15,limit=1] run data merge entity @s {ItemRotation:0b}
