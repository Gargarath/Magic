## appelé par stuf_warrior si @s à son armure au niveau 5
## lui donne son armure au niveau 5

$item replace entity @s armor.chest with chainmail_chestplate[attribute_modifiers=[{id:"armor_chest",type:"armor",amount:2.5,operation:"add_value",slot:"chest"},{id:"hp_chest",type:"max_health",amount:0.75,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="$(tr_warrior_chest_5_name)",enchantment_glint_override=false] 1
