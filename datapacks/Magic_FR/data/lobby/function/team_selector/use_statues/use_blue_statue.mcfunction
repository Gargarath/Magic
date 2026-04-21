## appelée par lobby:loop quand @s marche sur le pad des bleus
# rend @s bleu

function lobby:team_selector/join_team/blue
# rend @s bleu

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

tellraw @s {entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.tr_became_team_blue",plain:true,"color":"blue","bold":false}
function lobby:hotbar_menu/drop_item