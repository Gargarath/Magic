# appelée par ctf:respawns permet de reset le hook de @s

scoreboard players set @s hooked_w 0
function stuff:status_items/refresh_overlay
