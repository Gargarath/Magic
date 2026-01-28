# Permet de reset le stuff des joueurs qui drop un objet

execute as @a[tag=warrior,scores={drop_item=1..},tag=!in_countdown] run function stuff:stuff_warrior/drop_w
execute as @a[tag=archer,scores={drop_item=1..},tag=!in_countdown] run function stuff:stuff_archer/drop_a
execute as @a[tag=mage,scores={drop_item=1..},tag=!in_countdown] run function stuff:stuff_mage/drop_m
execute as @a[tag=rogue,scores={drop_item=1..},tag=!in_countdown] run function stuff:stuff_rogue/drop_r

execute as @a[scores={drop_item=1..},tag=in_countdown] run function main:launch_arena/countdown/cant_usespell