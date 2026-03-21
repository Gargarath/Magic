## appelée par setup_playerX si a un ratio positif
# adapte la deuxième page de son livre pour afficher le ratio


# 1) Base de la page 2
data modify block 13 97 13 Items[{Slot:9b}].components."minecraft:written_book_content".pages[1].raw set value {text:"     [Général]\n\n",bold:1b,extra:[{text:"-------------------\n",bold:0b},{text:"\nRatio : ",bold:0b}]}

# 2) Ratio K/D (valeurs depuis le storage)
data modify block 13 97 13 Items[{Slot:9b}].components."minecraft:written_book_content".pages[1].raw.extra append value {nbt:'by_player."9".stat_kd_ratio1',storage:"stats:leaderboards",color:"gold",bold:1b}
data modify block 13 97 13 Items[{Slot:9b}].components."minecraft:written_book_content".pages[1].raw.extra append value {nbt:'by_player."9".kd_ratio_comma',storage:"stats:leaderboards",interpret:1b,color:"gold",bold:1b}
data modify block 13 97 13 Items[{Slot:9b}].components."minecraft:written_book_content".pages[1].raw.extra append value {nbt:'by_player."9".stat_kd_ratio2',storage:"stats:leaderboards",color:"gold",bold:1b}
data modify block 13 97 13 Items[{Slot:9b}].components."minecraft:written_book_content".pages[1].raw.extra append value "\n\n"

# 3) Kills / morts / dégâts (scores du lecteur @s)
data modify block 13 97 13 Items[{Slot:9b}].components."minecraft:written_book_content".pages[1].raw.extra append value {"nbt":"by_player.9.stat_killcount","storage":"stats:leaderboards","color":"red","bold":false}
data modify block 13 97 13 Items[{Slot:9b}].components."minecraft:written_book_content".pages[1].raw.extra append value {text:" kills\n\n",color:"black",bold:0b}
data modify block 13 97 13 Items[{Slot:9b}].components."minecraft:written_book_content".pages[1].raw.extra append value {"nbt":"by_player.9.stat_deathcount","storage":"stats:leaderboards","color":"red","bold":false}
data modify block 13 97 13 Items[{Slot:9b}].components."minecraft:written_book_content".pages[1].raw.extra append value {text:" morts\n\n",bold:0b}
data modify block 13 97 13 Items[{Slot:9b}].components."minecraft:written_book_content".pages[1].raw.extra append value {"nbt":"by_player.9.stat_total_dmg","storage":"stats:leaderboards","color":"red","bold":false}
data modify block 13 97 13 Items[{Slot:9b}].components."minecraft:written_book_content".pages[1].raw.extra append value {text:" dégâts infligés\n\n",bold:0b}
data modify block 13 97 13 Items[{Slot:9b}].components."minecraft:written_book_content".pages[1].raw.extra append value {"nbt":"by_player.9.stat_dmg_taken","storage":"stats:leaderboards","color":"red","bold":false}
data modify block 13 97 13 Items[{Slot:9b}].components."minecraft:written_book_content".pages[1].raw.extra append value {text:" dégâts reçus",bold:0b}