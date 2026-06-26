## appele par stuf_warrior si @s a son armure au niveau 3
## lui donne son armure au niveau 3

$item replace entity @s armor.legs with golden_leggings[attribute_modifiers=[{id:"armor_legs",type:"armor",amount:1.5,operation:"add_value",slot:"legs"},{id:"speed_legs",type:"movement_speed",amount:0.045,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},tooltip_display={hide_tooltip:false,hidden_components:["unbreakable","enchantments","trim"]},enchantments={"binding_curse":1},custom_name="$(tr_warrior_legs_3_name)",enchantment_glint_override=false] 1
