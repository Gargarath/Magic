## appelée par spells:loop quand @s va toucher un joueur
# permet d'infliger les dmg

scoreboard players operation @e[type=#spellable,sort=nearest,limit=1,team=!blue] arrow_owner = @s arrow_owner
scoreboard players operation @e[type=#spellable,sort=nearest,limit=1,team=!blue] arrow_charge = @s arrow_charge


execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:luck",amplifier:1b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] luck 1 1 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:luck",amplifier:2b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] luck 1 2 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:luck",amplifier:3b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] luck 1 3 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:luck",amplifier:4b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] luck 1 4 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:luck",amplifier:5b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] luck 1 5 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:luck",amplifier:6b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] luck 1 6 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:luck",amplifier:7b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] luck 1 7 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:luck",amplifier:8b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] luck 1 8 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:luck",amplifier:9b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] luck 1 9 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:luck",amplifier:10b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] luck 1 10 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:luck",amplifier:11b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] luck 1 11 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:luck",amplifier:12b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] luck 1 12 true

execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:unluck",amplifier:1b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] unluck 1 1 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:unluck",amplifier:2b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] unluck 1 2 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:unluck",amplifier:3b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] unluck 1 3 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:unluck",amplifier:4b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] unluck 1 4 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:unluck",amplifier:5b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] unluck 1 5 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:unluck",amplifier:6b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] unluck 1 6 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:unluck",amplifier:7b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] unluck 1 7 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:unluck",amplifier:8b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] unluck 1 8 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:unluck",amplifier:9b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] unluck 1 9 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:unluck",amplifier:10b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] unluck 1 10 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:unluck",amplifier:11b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] unluck 1 11 true
execute if data entity @s item.components."minecraft:potion_contents".custom_effects[{id:"minecraft:unluck",amplifier:12b}] run effect give @e[type=#spellable,sort=nearest,limit=1,team=!blue] unluck 1 12 true

kill @e[type=marker,tag=arrow_rotation,sort=nearest,limit=1]
kill @s