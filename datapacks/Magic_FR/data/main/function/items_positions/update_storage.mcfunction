# appelée par les save_item_position des différentes classes
# save le storage dans l'enderchest de @s (avec les données de où sont placés ses items)

$item replace entity @s enderchest.0 with minecraft:gray_stained_glass_pane[minecraft:custom_data=$(storage)]