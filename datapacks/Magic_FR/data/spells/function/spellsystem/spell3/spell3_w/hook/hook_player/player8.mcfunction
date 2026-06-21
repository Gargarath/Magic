## called by extand_hook/rotate_hook/player8_blue if it collides with a player
## makes the player hooked 

function spells:spellsystem/spell3/spell3_w/hook/retract_hook/start_delete/player8
# launch the retracting of the hook

tag @s remove has_hooked
# indicate that the launcher has hooked someone

execute if entity @a[scores={Player=8},team=blue,tag=!no_team] run scoreboard players set @r[team=red,distance=..1] hooked_by_player 8
execute if entity @a[scores={Player=8},team=red,tag=!no_team] run scoreboard players set @r[team=blue,distance=..1] hooked_by_player 8
execute if entity @a[scores={Player=8},tag=no_team] run scoreboard players set @r[tag=!hook8_immune,distance=..1] hooked_by_player 8
# indicate that the hooked player has been hooked by player 8 depending on his team

execute as @a[scores={hooked_by_player=8}] run function spells:spellsystem/spell3/spell3_w/hook/hook_player/effect_hooked_player
## give the stunned effects to @s (instead of using a long selector that is more laggy)

execute as @a[scores={hooked_by_player=8}] at @s facing entity @a[scores={Player=8},limit=1] eyes run tp @s ~ ~ ~ ~ ~10
# makes the hooked player look at the player that hooked him

execute as @a[scores={hooked_by_player=8}] run function spells:spellsystem/spell3/spell3_w/hook/hook_player/set_bossbar/player8 with entity @s EnderItems[0].components.minecraft:custom_data
# display the bossbar to the player that has been hooked depending on his player level

$bossbar set hook_someone:player8 name ["",{"text":"$(tr_bossbar_hooked_someone)","color":"gray","bold":true},{"selector":"@a[scores={hooked_by_player=8}]","bold":true}]
bossbar set hook_someone:player8 players @s
# display the bossbar to the player that launched the hook

execute as @a[scores={Player=8}] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 100 2 1
# play a sound to the player that launched the hook to indicate he hit someone

scoreboard players set @s is_hooking_w 20
# indicate that the hooker is hooking for 2 seconds (for the bossbar)