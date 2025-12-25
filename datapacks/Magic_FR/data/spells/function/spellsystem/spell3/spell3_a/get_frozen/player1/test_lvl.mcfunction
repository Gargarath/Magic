# appelée par test_player si le flèche de glace est lancée par le joueur 1
# permet de donner un effet de flèche de glace adapté au niveau de flèche de glace du joueur 1

execute if score @a[scores={Player=1},limit=1] spell3 matches 1 run function spells:spellsystem/spell3/spell3_a/get_frozen/player1/lvl1
execute if score @a[scores={Player=1},limit=1] spell3 matches 2 run function spells:spellsystem/spell3/spell3_a/get_frozen/player1/lvl2
execute if score @a[scores={Player=1},limit=1] spell3 matches 3 run function spells:spellsystem/spell3/spell3_a/get_frozen/player1/lvl3