## appelée par spells:loop quand @s se fait touché par une fleche
# permet d'infliger les dmg

scoreboard players operation @s last_caster = @s arrow_owner
scoreboard players reset @s arrow_owner

tag @s add took_arrow

execute if score @s last_caster matches 1 run function spells:arrow_detection/apply_dmg/hit_by_player1
execute if score @s last_caster matches 2 run function spells:arrow_detection/apply_dmg/hit_by_player2
execute if score @s last_caster matches 3 run function spells:arrow_detection/apply_dmg/hit_by_player3
execute if score @s last_caster matches 4 run function spells:arrow_detection/apply_dmg/hit_by_player4
execute if score @s last_caster matches 5 run function spells:arrow_detection/apply_dmg/hit_by_player5
execute if score @s last_caster matches 6 run function spells:arrow_detection/apply_dmg/hit_by_player6
execute if score @s last_caster matches 7 run function spells:arrow_detection/apply_dmg/hit_by_player7
execute if score @s last_caster matches 8 run function spells:arrow_detection/apply_dmg/hit_by_player8
execute if score @s last_caster matches 9 run function spells:arrow_detection/apply_dmg/hit_by_player9
execute if score @s last_caster matches 10 run function spells:arrow_detection/apply_dmg/hit_by_player10
execute if score @s last_caster matches 11 run function spells:arrow_detection/apply_dmg/hit_by_player11
execute if score @s last_caster matches 12 run function spells:arrow_detection/apply_dmg/hit_by_player12