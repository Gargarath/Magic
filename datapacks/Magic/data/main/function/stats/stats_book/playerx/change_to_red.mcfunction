## appelée par setup_playerX si @s est rouge
# adapte la première page de son livre pour afficher les scores rouges

## appelée avec un argument {player:"X"}

# 1) Base de la page
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[0].raw set value {text:"$(tr_stats_book_title)\n",bold:1b,extra:[{text:"$(tr_stats_book_subtitle_last_game)",bold:0b,italic:1b},"\n\n\n"]}

# 2) Titre depuis le storage (composant direct)
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[0].raw.extra append value $(ctf_result)


# 3) Espace + scores (numériques) + tiret
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[0].raw.extra append value "\n\n        "
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[0].raw.extra append value {nbt:"game_result.score.red","storage":"stats:leaderboards","plain":true,bold:1b,color:"red"}
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[0].raw.extra append value {text:" - ",bold:1b}
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[0].raw.extra append value {nbt:"game_result.score.blue","storage":"stats:leaderboards","plain":true,bold:1b,color:"blue"}

# 4) Séparateur + étiquettes
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[0].raw.extra append value "\n\n\n\n----------------\n\n"
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[0].raw.extra append value {text:"$(tr_stats_book_team) ",bold:1b}

# 5) Team & Class depuis le storage
# Si ce sont des *composants*, on copie "from storage" :
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[0].raw.extra append from storage stats:leaderboards by_player.$(player_last_game).team
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[0].raw.extra append value {text:"\n$(tr_stats_book_class) ",bold:1b}
$data modify block 13 97 13 Items[{Slot:$(player_last_game)b}].components."minecraft:written_book_content".pages[0].raw.extra append from storage stats:leaderboards by_player.$(player_last_game).class