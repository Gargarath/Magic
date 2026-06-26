## appele par stuf_warrior si @s a son armure au niveau 1
## lui donne son armure au niveau 1

$item replace entity @s armor.feet with leather_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:0.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:1,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="$(tr_warrior_boots_1_name)",enchantment_glint_override=false] 1
