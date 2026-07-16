# appelee par les fonctions qui appliquent l'effet brulure aux entites sans donnees de traduction
# permet de donner l'overlay de feu non traduit

item replace entity @s armor.head with magma_block[minecraft:equippable={slot:"head",camera_overlay:"minecraft:overlay/burning1"},enchantments={"binding_curse":1},lore=["----------------","Vous êtes en feu !","----------------"],item_name={"bold":true,"color":"red","text":"Brulure"},tooltip_display={hidden_components:["enchantments"]}] 1
