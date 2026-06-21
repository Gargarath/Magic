# appelee par les fonctions qui appliquent ou restaurent l'effet brulure
# permet de donner l'overlay de feu traduit au joueur

$item replace entity @s armor.head with magma_block[minecraft:equippable={slot:"head",camera_overlay:"minecraft:overlay/burning1"},enchantments={"binding_curse":1},lore=["----------------","$(tr_mage_spell1_status_0_lore_2)","----------------"],item_name={"bold":true,"color":"red","text":"$(tr_mage_spell1_status_0_name)"},tooltip_display={hidden_components:["enchantments"]}] 1
