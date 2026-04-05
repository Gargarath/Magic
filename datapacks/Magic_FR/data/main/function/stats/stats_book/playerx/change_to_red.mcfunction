## appelée par setup_playerX si @s est rouge
# adapte la première page de son livre pour afficher les scores rouges

## appelée avec un argument {player:"X"}

# 1) Base de la page
$data modify block 13 97 13 Items[{Slot:$(player)b}].components."minecraft:written_book_content".pages[0].raw set value {text:"   [Statistiques]\n",bold:1b,extra:[{text:"    Dernière partie",bold:0b,italic:1b},"\n\n\n"]}

# 2) Titre depuis le storage (composant direct)
$data modify block 13 97 13 Items[{Slot:$(player)b}].components."minecraft:written_book_content".pages[0].raw.extra append from storage stats:leaderboards game.result.title.red

# 3) Espace + scores (numériques) + tiret
$data modify block 13 97 13 Items[{Slot:$(player)b}].components."minecraft:written_book_content".pages[0].raw.extra append value "\n\n        "
$data modify block 13 97 13 Items[{Slot:$(player)b}].components."minecraft:written_book_content".pages[0].raw.extra append value {nbt:"game.result.score.red","storage":"stats:leaderboards","plain":true,bold:1b,color:"red"}
$data modify block 13 97 13 Items[{Slot:$(player)b}].components."minecraft:written_book_content".pages[0].raw.extra append value {text:" - ",bold:1b}
$data modify block 13 97 13 Items[{Slot:$(player)b}].components."minecraft:written_book_content".pages[0].raw.extra append value {nbt:"game.result.score.blue","storage":"stats:leaderboards","plain":true,bold:1b,color:"blue"}

# 4) Séparateur + étiquettes
$data modify block 13 97 13 Items[{Slot:$(player)b}].components."minecraft:written_book_content".pages[0].raw.extra append value "\n\n\n\n----------------\n\n"
$data modify block 13 97 13 Items[{Slot:$(player)b}].components."minecraft:written_book_content".pages[0].raw.extra append value {text:"Équipe : ",bold:1b}

# 5) Team & Class depuis le storage
# Si ce sont des *composants*, on copie "from storage" :
$data modify block 13 97 13 Items[{Slot:$(player)b}].components."minecraft:written_book_content".pages[0].raw.extra append from storage stats:leaderboards by_player.$(player).team
$data modify block 13 97 13 Items[{Slot:$(player)b}].components."minecraft:written_book_content".pages[0].raw.extra append value {text:"\nClasse : ",bold:1b}
$data modify block 13 97 13 Items[{Slot:$(player)b}].components."minecraft:written_book_content".pages[0].raw.extra append from storage stats:leaderboards by_player.$(player).class