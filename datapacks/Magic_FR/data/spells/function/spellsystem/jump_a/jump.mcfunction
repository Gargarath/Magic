## appelée par spells:loop si @s saute
# check si il a crouch avant pour reset son saut

scoreboard players reset @s is_jumping_a

execute if score @s[tag=Has_Blue_flag] jump_crouch_time_a matches 5.. run function gamemode:ctf/usespellwithflag/usespell_blueflag
execute if score @s[tag=Has_Red_flag] jump_crouch_time_a matches 5.. run function gamemode:ctf/usespellwithflag/usespell_redflag

execute if score @s jump_crouch_time_a matches 1.. run function spells:spellsystem/jump_a/reduce_jump_boost/remove_jump_boost
# si @s avait l'effet de jump boost -> lui enlève

