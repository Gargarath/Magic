## appelée par spells:loop quand @s va toucher un joueur
# permet de check si c'est pas le lanceur pour lui infliger les dmg

execute if score @e[type=#spellable,sort=nearest,limit=1] Player = @s arrow_owner run function spells:arrow_detection/touch_player_no_team_dmg