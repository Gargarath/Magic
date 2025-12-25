## appelée par testplayer
# permet de clear la flèche explo de @s selon son numéro de joueur

bossbar set explosive_arrow:player5 players
execute as @e[type=marker,tag=exploraycast5] run function spells:spellsystem/spell1/spell1_a/delete_raycast_marker
kill @e[type=text_display,tag=explo_player_timer5]