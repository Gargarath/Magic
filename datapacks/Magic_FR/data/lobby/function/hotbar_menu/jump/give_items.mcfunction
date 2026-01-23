## appelée par start_jump

clear @s

## JUMP ITEMS
item replace entity @s hotbar.3 from block 13 97 11 container.4
item replace entity @s hotbar.4 from block 13 97 11 container.5


## LIVRE ADMIN
item replace entity @s[scores={operator=2}] hotbar.8 from block 13 97 11 container.0


scoreboard players set @s hotbar_menu 3