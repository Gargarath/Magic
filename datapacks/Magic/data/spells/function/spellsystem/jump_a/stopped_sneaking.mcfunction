## appelée par spells:loop si @s n'est plus accroupi

tag @s remove sneaking_jump_a

execute if score @s Player matches 1 run schedule function spells:spellsystem/jump_a/reduce_jump_boost/player1 9t
execute if score @s Player matches 2 run schedule function spells:spellsystem/jump_a/reduce_jump_boost/player2 9t
execute if score @s Player matches 3 run schedule function spells:spellsystem/jump_a/reduce_jump_boost/player3 9t
execute if score @s Player matches 4 run schedule function spells:spellsystem/jump_a/reduce_jump_boost/player4 9t
execute if score @s Player matches 5 run schedule function spells:spellsystem/jump_a/reduce_jump_boost/player5 9t
execute if score @s Player matches 6 run schedule function spells:spellsystem/jump_a/reduce_jump_boost/player6 9t
execute if score @s Player matches 7 run schedule function spells:spellsystem/jump_a/reduce_jump_boost/player7 9t
execute if score @s Player matches 8 run schedule function spells:spellsystem/jump_a/reduce_jump_boost/player8 9t
execute if score @s Player matches 9 run schedule function spells:spellsystem/jump_a/reduce_jump_boost/player9 9t
execute if score @s Player matches 10 run schedule function spells:spellsystem/jump_a/reduce_jump_boost/player10 9t
execute if score @s Player matches 11 run schedule function spells:spellsystem/jump_a/reduce_jump_boost/player11 9t
execute if score @s Player matches 12 run schedule function spells:spellsystem/jump_a/reduce_jump_boost/player12 9t
# schedule le retrait du jump boost selon le numéro de joueur de @s
