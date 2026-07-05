## Joue le son commun lorsqu'un cooldown se termine.

execute if score $no_cooldowns option_panel matches 0 if score @s opt_cd_ready_sound matches 1 at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~
