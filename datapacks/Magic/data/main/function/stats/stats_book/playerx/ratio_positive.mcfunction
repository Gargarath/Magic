## appelée par setup_playerX si a un ratio positif
# adapte la deuxième page de son livre pour afficher le ratio


# 1) Base de la page 2
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[1].raw set value {text:"     [$(tr_stats_book_general)]\n\n",bold:1b,extra:[{text:"-------------------\n",bold:0b},{text:"\n$(tr_stats_book_ratio) ",bold:0b}]}

# 2) Ratio K/D (valeurs depuis le storage)
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[1].raw.extra append value {nbt:'by_player.$(player_last_game).stat_kd_ratio1',"storage":"stats:leaderboards","plain":true,color:"dark_green",bold:1b}
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[1].raw.extra append value {nbt:'by_player.$(player_last_game).kd_ratio_comma',"storage":"stats:leaderboards",interpret:1b,color:"dark_green",bold:1b}
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[1].raw.extra append value {nbt:'by_player.$(player_last_game).stat_kd_ratio2',"storage":"stats:leaderboards","plain":true,color:"dark_green",bold:1b}
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[1].raw.extra append value "\n\n"

# 3) Kills / morts / dégâts (scores du lecteur @s)
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[1].raw.extra append value {"nbt":"by_player.$(player_last_game).stat_killcount","storage":"stats:leaderboards","plain":true,"color":"red","bold":false}
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[1].raw.extra append value {text:" $(tr_stats_total_kills)\n\n",color:"black",bold:0b}
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[1].raw.extra append value {"nbt":"by_player.$(player_last_game).stat_deathcount","storage":"stats:leaderboards","plain":true,"color":"red","bold":false}
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[1].raw.extra append value {text:" $(tr_stats_deathcount)\n\n",bold:0b}
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[1].raw.extra append value {"nbt":"by_player.$(player_last_game).stat_total_dmg","storage":"stats:leaderboards","plain":true,"color":"red","bold":false}
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[1].raw.extra append value {text:" $(tr_stats_total_dmg)\n\n",bold:0b}
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[1].raw.extra append value {"nbt":"by_player.$(player_last_game).stat_dmg_taken","storage":"stats:leaderboards","plain":true,"color":"red","bold":false}
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[1].raw.extra append value {text:" $(tr_stats_dmg_taken)",bold:0b}