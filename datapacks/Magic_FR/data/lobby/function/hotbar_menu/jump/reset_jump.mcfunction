## appelée par check_rightclick quand @s utilise l'item de reset de jump


execute if entity @s[tag=jumping_1] run function lobby:jump/jump1/reset_jump
execute if entity @s[tag=jumping_2] run function lobby:jump/jump2/reset_jump
execute if entity @s[tag=jumping_3] run function lobby:jump/jump3/reset_jump