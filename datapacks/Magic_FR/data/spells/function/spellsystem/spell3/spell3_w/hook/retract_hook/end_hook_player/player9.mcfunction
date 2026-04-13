## called by retract_hook/delete_hook/player9 if there is no more pieces of the hook
## make the hook system stop
tag @s[scores={hook_position=..9}] add short_hook
# if the hook was very short -> give @s a tag to reduce the cooldown

attribute @s[scores={trapped=-1}] minecraft:movement_speed base reset
attribute @s[scores={trapped=-1}] minecraft:jump_strength base reset
attribute @s[scores={trapped=-1}] minecraft:knockback_resistance base reset
## clear immobility from @s if he is not already trapped

execute unless score @s IsAlive matches 1 unless score @s IsAlive matches 501 at @s[team=!respawn_blue,team=!respawn_red] positioned ^ ^ ^1.2 run tp @a[scores={IsAlive=0,hooked_by_player=9}] ~ ~0.8 ~
execute unless score @s IsAlive matches 1 unless score @s IsAlive matches 501 at @s[team=!respawn_blue,team=!respawn_red] positioned ^ ^ ^1.2 run tp @a[scores={IsAlive=500,hooked_by_player=9}] ~ ~0.8 ~
# tp the hooked player in front of @s

execute unless score @s IsAlive matches 1 unless score @s IsAlive matches 501 as @a[scores={IsAlive=0,hooked_by_player=9}] at @s facing entity @a[scores={Player=9}] eyes run tp @s ~ ~ ~ ~ ~40
execute unless score @s IsAlive matches 1 unless score @s IsAlive matches 501 as @a[scores={IsAlive=500,hooked_by_player=9}] at @s facing entity @a[scores={Player=9}] eyes run tp @s ~ ~ ~ ~ ~40
# makes the hooked player look at @s

scoreboard players set @a[scores={IsAlive=0,hooked_by_player=9}] last_caster 9
scoreboard players set @a[scores={IsAlive=500,hooked_by_player=9}] last_caster 9
# si la cible est encore en vie -> tag pour check après 1 tick les pv des joueurs - le tag dépend du numéro de joueur du caster

execute as @a[scores={IsAlive=0,hooked_by_player=9}] run function spells:spellsystem/spell3/spell3_w/hook/apply_dmg
execute as @a[scores={IsAlive=500,hooked_by_player=9}] run function spells:spellsystem/spell3/spell3_w/hook/apply_dmg
# si la cible est encore en vie -> lui inflige des dégats

execute at @s run playsound minecraft:item.armor.equip_iron master @s ~ ~ ~ 100 1 0
# make a sound of grapple that comes back

tag @s remove is_hooking
# allow @s to hook_again if he has the cooldown

execute if score $no_cooldowns option_panel matches 0 if entity @s[tag=short_hook] run scoreboard players set @s cooldownspell3 2
execute if score $no_cooldowns option_panel matches 0 if entity @s[tag=!short_hook] run scoreboard players set @s cooldownspell3 7
# give @s a cooldown depending of if the hook was long or not

clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={spell3_w:1b,spell3_slot:1b}]
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s cooldown3_clock 20

# give @s his cooldown item

execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell3 2
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown3_clock 5
# give lower cooldown if option is enabled

function stuff:stuff_warrior/cooldowns_w/spell3/spell3lvl1_w with entity @s EnderItems[0].components.minecraft:custom_data

tag @s remove short_hook
# remove the tag that reduce cooldown from @s
