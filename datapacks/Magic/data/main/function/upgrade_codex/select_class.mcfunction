$scoreboard players set @s codex_class $(id)
scoreboard players set @s upgrade_codex 0
data modify storage temp:codex macro set from entity @s EnderItems[0].components.minecraft:custom_data
$data modify storage temp:codex macro.class set value "$(class)"
$data modify storage temp:codex macro.suffix set value "$(suffix)"
$data modify storage temp:codex macro.class_icon set value "$(icon)"
$data modify storage temp:codex macro.title_key set value "$(title_key)"
$data modify storage temp:codex macro.description_key set value "$(description_key)"
$data modify storage temp:codex macro.class_title set from entity @s EnderItems[0].components.minecraft:custom_data.$(title_key)
data modify storage temp:codex macro.passive_sprite set value "item/iron_chestplate"
execute if score @s codex_class matches 2 run data modify storage temp:codex macro.passive_sprite set value "item/ender_eye"
execute if score @s codex_class matches 3 run data modify storage temp:codex macro.passive_sprite set value "item/stick"
execute if score @s codex_class matches 4 run data modify storage temp:codex macro.passive_sprite set value "item/shears"
$data modify storage temp:codex macro.weapon1_name set from entity @s EnderItems[0].components.minecraft:custom_data.tr_$(class)_weapon1_base_name
$data modify storage temp:codex macro.spell1_name set from entity @s EnderItems[0].components.minecraft:custom_data.tr_$(class)_spell1_base_name
$data modify storage temp:codex macro.spell2_name set from entity @s EnderItems[0].components.minecraft:custom_data.tr_$(class)_spell2_base_name
$data modify storage temp:codex macro.spell3_name set from entity @s EnderItems[0].components.minecraft:custom_data.tr_$(class)_spell3_base_name
data modify storage temp:codex macro.weapon1_level set value ""
data modify storage temp:codex macro.spell1_level set value ""
data modify storage temp:codex macro.spell2_level set value ""
data modify storage temp:codex macro.spell3_level set value ""
data modify storage temp:codex macro.chest_level set value ""
data modify storage temp:codex macro.legs_level set value ""
data modify storage temp:codex macro.boots_level set value ""
$execute if entity @s[tag=$(class)] store result storage temp:codex macro.weapon1_level int 1 run scoreboard players get @s weapon1
$execute if entity @s[tag=$(class)] store result storage temp:codex macro.spell1_level int 1 run scoreboard players get @s spell1
$execute if entity @s[tag=$(class)] store result storage temp:codex macro.spell2_level int 1 run scoreboard players get @s spell2
$execute if entity @s[tag=$(class)] store result storage temp:codex macro.spell3_level int 1 run scoreboard players get @s spell3
$execute if entity @s[tag=$(class)] store result storage temp:codex macro.chest_level int 1 run scoreboard players get @s chest
$execute if entity @s[tag=$(class)] store result storage temp:codex macro.legs_level int 1 run scoreboard players get @s legs
$execute if entity @s[tag=$(class)] store result storage temp:codex macro.boots_level int 1 run scoreboard players get @s boots
data modify storage temp:codex macro.spell2_max set value 3
execute if score @s codex_class matches 4 run data modify storage temp:codex macro.spell2_max set value 1
data modify storage temp:codex macro.spell3_max set value 1
execute if score @s codex_class matches 2 run data modify storage temp:codex macro.spell3_max set value 3
function main:upgrade_codex/show_class with storage temp:codex macro
