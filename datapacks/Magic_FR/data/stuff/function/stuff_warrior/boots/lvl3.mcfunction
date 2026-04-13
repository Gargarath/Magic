## appele par stuf_warrior si @s a son armure au niveau 3
## lui donne son armure au niveau 3

$item replace entity @s armor.feet with golden_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:1.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:3,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="$(tr_warrior_boots_3_name)",enchantment_glint_override=false] 1
