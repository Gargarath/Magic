# appelée par test_player si le flèche de glace est lancée par le joueur 5
# permet de donner un effet de flèche de glace adapté au niveau de flèche de glace du joueur 5

execute if score @a[scores={Player=5},limit=1] spell3 matches 1 run function spells:spellsystem/spell3/spell3_a/get_frozen/player5/lvl1
execute if score @a[scores={Player=5},limit=1] spell3 matches 2 run function spells:spellsystem/spell3/spell3_a/get_frozen/player5/lvl2
execute if score @a[scores={Player=5},limit=1] spell3 matches 3 run function spells:spellsystem/spell3/spell3_a/get_frozen/player5/lvl3