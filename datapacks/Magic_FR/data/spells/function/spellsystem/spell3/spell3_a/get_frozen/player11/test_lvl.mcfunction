# appelée par test_player si le flèche de glace est lancée par le joueur 11
# permet de donner un effet de flèche de glace adapté au niveau de flèche de glace du joueur 11

execute if score @a[scores={Player=11},limit=1] spell3 matches 1 run function spells:spellsystem/spell3/spell3_a/get_frozen/player11/lvl1
execute if score @a[scores={Player=11},limit=1] spell3 matches 2 run function spells:spellsystem/spell3/spell3_a/get_frozen/player11/lvl2
execute if score @a[scores={Player=11},limit=1] spell3 matches 3 run function spells:spellsystem/spell3/spell3_a/get_frozen/player11/lvl3