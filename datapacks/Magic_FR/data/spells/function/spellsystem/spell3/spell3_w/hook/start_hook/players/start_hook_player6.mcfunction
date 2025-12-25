## called by start_hook/test_player if @s is the player 6
## launch @s hook

kill @e[tag=hook_w_player6]
# destroy the previous hook from @s (just in case)

scoreboard players set @s hook_position 0
scoreboard players reset @s hook_max_range_w

# indicate that @s hook lenght is now 0
scoreboard players set @s usespell 0
# reset @s right click detector (for launching the spell)

attribute @s minecraft:movement_speed base set 0
attribute @s minecraft:jump_strength base set 0
attribute @s minecraft:knockback_resistance base set 1
# immobilise @s

tag @a remove hook6_immune
execute if entity @s[tag=blue_team,tag=!no_team] run tag @a[tag=blue_team] add hook6_immune
execute if entity @s[tag=red_team,tag=!no_team] run tag @a[tag=red_team] add hook6_immune
execute if entity @s[tag=no_team] run tag @s add hook6_immune

execute at @s rotated as @s positioned ^ ^-0.5 ^1 if block ~ ~1.5 ~ #minecraft:spell_beam run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["hook_w","hook_w_player6","hook_w_player6_new"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:iron_bars",count:1,components:{"minecraft:custom_model_data":{strings:["hook"]}}}}}
# if @s hook isn't too long and if the block in front of him is transparent -> summon the head of the hook in front of him (armorstand with tags and custom model on the head)
 
scoreboard players add @e[tag=hook_w_player6] hook_position 1
# add every piece of the hook 1 to their position

execute rotated as @s as @e[type=minecraft:armor_stand,tag=hook_w_player6,scores={hook_position=1},limit=1] positioned as @s run function spells:spellsystem/spell3/spell3_w/hook/extand_hook/rotate_hook/rotate_player6
# call a function as the head piece that make it rotate to be like the player

execute at @s rotated as @s positioned ^ ^-0.5 ^1 unless block ~ ~1.5 ~ #minecraft:spell_beam as @a[scores={Player=6}] run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/start_delete/player6_break
# if there is a block that is not transparent 1 block ahead of the hook head -> break the hook
execute at @s rotated as @s positioned ^ ^-0.5 ^1 if block ~ ~1.5 ~ #minecraft:spell_beam positioned ^ ^ ^1 unless block ~ ~1.5 ~ #minecraft:spell_beam as @a[scores={Player=6}] run function spells:spellsystem/spell3/spell3_w/hook/retract_hook/start_delete/player6_break
# if there is a block that is not transparent 1 block ahead of the hook head -> break the hook