## appelée par rien
# permet de setup certains items spéciaux qui utilisent encore des conteneurs

# OVERLAY FEU
item replace block 17 95 15 container.6 with magma_block[minecraft:equippable={slot:"head",camera_overlay:"minecraft:overlay/burning1"},enchantments={"binding_curse":1},lore=["----------------","Vous êtes en feu !","----------------"],item_name={"bold":true,"color":"red","text":"Brulure"},tooltip_display={hidden_components:["enchantments"]}] 1


# OVERLAY GLACE
item replace block 17 95 13 container.24 with ice[minecraft:equippable={slot:"head",camera_overlay:"minecraft:overlay/frozen1"},enchantments={"binding_curse":1},lore=["----------------","Vous êtes gelé !","----------------"],item_name={"bold":true,"color":"aqua","text":"Gel"},tooltip_display={hidden_components:["enchantments"]}] 1
