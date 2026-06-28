# Selection explicite du francais.

tag @s remove choosing_language
scoreboard players set @s opt_lang 1
function main:initialised/welcome_dialog/apply_language

tag @s add refreshing_language
function main:personnal_data/translation/change_language/refresh_language
tag @s remove refreshing_language

function main:inventory_menu/lang/cleanup_language_items
function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
function main:personnal_data/translation/change_language/tell_changed_language with entity @s EnderItems[0].components.minecraft:custom_data
function main:initialised/welcome_dialog/display_operator_message with entity @s EnderItems[0].components.minecraft:custom_data
playsound entity.experience_orb.pickup master @s ~ ~ ~ 100 1
