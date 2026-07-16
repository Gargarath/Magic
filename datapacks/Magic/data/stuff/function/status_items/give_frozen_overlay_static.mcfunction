# appelee par les fonctions qui appliquent l'effet gel aux entites sans donnees de traduction
# permet de donner l'overlay de glace non traduit

item replace entity @s armor.head with ice[minecraft:equippable={slot:"head",camera_overlay:"minecraft:overlay/frozen1"},enchantments={"binding_curse":1},lore=["----------------","Vous êtes gelé !","----------------"],item_name={"bold":true,"color":"aqua","text":"Gel"},tooltip_display={hidden_components:["enchantments"]}] 1
