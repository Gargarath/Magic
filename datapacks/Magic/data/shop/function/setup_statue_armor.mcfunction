## appelée par main:start_game/setup_players/setup_player
# permet de copier l'armure initiale de @s sur sa statue du shop

$item replace entity @n[type=mannequin,tag=statue_$(player)] armor.chest from entity @s armor.chest
$item replace entity @n[type=mannequin,tag=statue_$(player)] armor.legs from entity @s armor.legs
$item replace entity @n[type=mannequin,tag=statue_$(player)] armor.feet from entity @s armor.feet
