## appelée par check_rightclick quand @s utilise un l'item de tp checkpoint


execute if entity @s[tag=jumping_1] run function lobby:jump/jump1/tp_checkpoint
execute if entity @s[tag=jumping_2] run function lobby:jump/jump2/tp_checkpoint
execute if entity @s[tag=jumping_3] run function lobby:jump/jump3/tp_checkpoint