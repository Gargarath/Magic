## appelée par main:start_game/setup_players/setup_player
# permet de copier l'armure initiale de @s sur sa statue du shop

$item replace entity @n[type=mannequin,tag=statue_$(player)] armor.chest from entity @s armor.chest
$item replace entity @n[type=mannequin,tag=statue_$(player)] armor.legs from entity @s armor.legs
$item replace entity @n[type=mannequin,tag=statue_$(player)] armor.feet from entity @s armor.feet

# En FFA, fait correspondre la matiere du trim a la couleur choisie par le joueur.
$execute if score $gamemode option_panel matches 0 if score @s opt_color matches 0 run function shop:apply_ffa_statue_trim {player:$(player),material:"quartz"}
$execute if score $gamemode option_panel matches 0 if score @s opt_color matches 1 run function shop:apply_ffa_statue_trim {player:$(player),material:"iron"}
$execute if score $gamemode option_panel matches 0 if score @s opt_color matches 2..3 run function shop:apply_ffa_statue_trim {player:$(player),material:"netherite"}
$execute if score $gamemode option_panel matches 0 if score @s opt_color matches 4..5 run function shop:apply_ffa_statue_trim {player:$(player),material:"diamond"}
$execute if score $gamemode option_panel matches 0 if score @s opt_color matches 6..7 run function shop:apply_ffa_statue_trim {player:$(player),material:"lapis"}
$execute if score $gamemode option_panel matches 0 if score @s opt_color matches 8..9 run function shop:apply_ffa_statue_trim {player:$(player),material:"emerald"}
$execute if score $gamemode option_panel matches 0 if score @s opt_color matches 10..11 run function shop:apply_ffa_statue_trim {player:$(player),material:"amethyst"}
$execute if score $gamemode option_panel matches 0 if score @s opt_color matches 12..13 run function shop:apply_ffa_statue_trim {player:$(player),material:"redstone"}
$execute if score $gamemode option_panel matches 0 if score @s opt_color matches 14..15 run function shop:apply_ffa_statue_trim {player:$(player),material:"gold"}
