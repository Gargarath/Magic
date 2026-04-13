## appele par stuf_warrior si @s a son armure au niveau 5
## lui donne son armure au niveau 5

$item replace entity @s armor.feet with chainmail_boots[attribute_modifiers=[{id:"armor_feet",type:"armor",amount:2.5,operation:"add_value",slot:"feet"},{id:"safe_fall_distance",type:"safe_fall_distance",amount:5,operation:"add_value",slot:"feet"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="$(tr_warrior_boots_5_name)",enchantment_glint_override=false] 1
