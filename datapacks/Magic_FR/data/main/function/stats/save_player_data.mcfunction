## appelée par main:start_game en début de partie pour enregistrer les noms des joueurs dans un storage

data modify storage stats:leaderboards by_player set value {}
# reset les stats par joueur dans le storage

team join Blue_Color @a[tag=blue_team]
team join Red_Color @a[tag=red_team]

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=1},limit=1]"},"","",""]}}
data modify storage stats:leaderboards by_player."1".name set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 1 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=2},limit=1]"},"","",""]}}
data modify storage stats:leaderboards by_player."2".name set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 2 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=3},limit=1]"},"","",""]}}
data modify storage stats:leaderboards by_player."3".name set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 3 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=4},limit=1]"},"","",""]}}
data modify storage stats:leaderboards by_player."4".name set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 4 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=5},limit=1]"},"","",""]}}
data modify storage stats:leaderboards by_player."5".name set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 5 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=6},limit=1]"},"","",""]}}
data modify storage stats:leaderboards by_player."6".name set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 6 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=7},limit=1]"},"","",""]}}
data modify storage stats:leaderboards by_player."7".name set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 7 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=8},limit=1]"},"","",""]}}
data modify storage stats:leaderboards by_player."8".name set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 8 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=9},limit=1]"},"","",""]}}
data modify storage stats:leaderboards by_player."9".name set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 9 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=10},limit=1]"},"","",""]}}
data modify storage stats:leaderboards by_player."10".name set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 10 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=11},limit=1]"},"","",""]}}
data modify storage stats:leaderboards by_player."11".name set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 11 dans le storage

data merge block 14 97 13 {front_text:{messages:[{"selector":"@a[scores={Player=12},limit=1]"},"","",""]}}
data modify storage stats:leaderboards by_player."12".name set from block 14 97 13 front_text.messages[0]
# stock le nom du joueur 12 dans le storage




# ==========================
# PLAYER 1
# ==========================
execute as @a[scores={Player=1},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."1".class set value {text:"[Guerrier]",color:"gold",bold:true}
execute as @a[scores={Player=1},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."1".class set value {text:"[Archer]",color:"green",bold:true}
execute as @a[scores={Player=1},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."1".class set value {text:"[Mage]",color:"dark_purple",bold:true}
execute as @a[scores={Player=1},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."1".class set value {text:"[Assassin]",color:"dark_gray",bold:true}
execute as @a[scores={Player=1},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."1".class_number set value 1
execute as @a[scores={Player=1},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."1".class_number set value 2
execute as @a[scores={Player=1},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."1".class_number set value 3
execute as @a[scores={Player=1},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."1".class_number set value 4
execute as @a[scores={Player=1},limit=1] if entity @s[team=Blue_Color] run data modify storage stats:leaderboards by_player."1".team set value {text:"Bleue",color:"blue"}
execute as @a[scores={Player=1},limit=1] if entity @s[team=Red_Color] run data modify storage stats:leaderboards by_player."1".team set value {text:"Rouge",color:"red"}


# ==========================
# PLAYER 2
# ==========================
execute as @a[scores={Player=2},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."2".class set value {text:"[Guerrier]",color:"gold",bold:true}
execute as @a[scores={Player=2},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."2".class set value {text:"[Archer]",color:"green",bold:true}
execute as @a[scores={Player=2},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."2".class set value {text:"[Mage]",color:"dark_purple",bold:true}
execute as @a[scores={Player=2},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."2".class set value {text:"[Assassin]",color:"dark_gray",bold:true}
execute as @a[scores={Player=2},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."2".class_number set value 1
execute as @a[scores={Player=2},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."2".class_number set value 2
execute as @a[scores={Player=2},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."2".class_number set value 3
execute as @a[scores={Player=2},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."2".class_number set value 4
execute as @a[scores={Player=2},limit=1] if entity @s[team=Blue_Color] run data modify storage stats:leaderboards by_player."2".team set value {text:"Bleue",color:"blue"}
execute as @a[scores={Player=2},limit=1] if entity @s[team=Red_Color] run data modify storage stats:leaderboards by_player."2".team set value {text:"Rouge",color:"red"}

# ==========================
# PLAYER 3
# ==========================
execute as @a[scores={Player=3},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."3".class set value {text:"[Guerrier]",color:"gold",bold:true}
execute as @a[scores={Player=3},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."3".class set value {text:"[Archer]",color:"green",bold:true}
execute as @a[scores={Player=3},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."3".class set value {text:"[Mage]",color:"dark_purple",bold:true}
execute as @a[scores={Player=3},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."3".class set value {text:"[Assassin]",color:"dark_gray",bold:true}
execute as @a[scores={Player=3},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."3".class_number set value 1
execute as @a[scores={Player=3},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."3".class_number set value 2
execute as @a[scores={Player=3},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."3".class_number set value 3
execute as @a[scores={Player=3},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."3".class_number set value 4
execute as @a[scores={Player=3},limit=1] if entity @s[team=Blue_Color] run data modify storage stats:leaderboards by_player."3".team set value {text:"Bleue",color:"blue"}
execute as @a[scores={Player=3},limit=1] if entity @s[team=Red_Color] run data modify storage stats:leaderboards by_player."3".team set value {text:"Rouge",color:"red"}

# ==========================
# PLAYER 4
# ==========================
execute as @a[scores={Player=4},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."4".class set value {text:"[Guerrier]",color:"gold",bold:true}
execute as @a[scores={Player=4},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."4".class set value {text:"[Archer]",color:"green",bold:true}
execute as @a[scores={Player=4},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."4".class set value {text:"[Mage]",color:"dark_purple",bold:true}
execute as @a[scores={Player=4},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."4".class set value {text:"[Assassin]",color:"dark_gray",bold:true}
execute as @a[scores={Player=4},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."4".class_number set value 1
execute as @a[scores={Player=4},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."4".class_number set value 2
execute as @a[scores={Player=4},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."4".class_number set value 3
execute as @a[scores={Player=4},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."4".class_number set value 4
execute as @a[scores={Player=4},limit=1] if entity @s[team=Blue_Color] run data modify storage stats:leaderboards by_player."4".team set value {text:"Bleue",color:"blue"}
execute as @a[scores={Player=4},limit=1] if entity @s[team=Red_Color] run data modify storage stats:leaderboards by_player."4".team set value {text:"Rouge",color:"red"}

# ==========================
# PLAYER 5
# ==========================
execute as @a[scores={Player=5},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."5".class set value {text:"[Guerrier]",color:"gold",bold:true}
execute as @a[scores={Player=5},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."5".class set value {text:"[Archer]",color:"green",bold:true}
execute as @a[scores={Player=5},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."5".class set value {text:"[Mage]",color:"dark_purple",bold:true}
execute as @a[scores={Player=5},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."5".class set value {text:"[Assassin]",color:"dark_gray",bold:true}
execute as @a[scores={Player=5},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."5".class_number set value 1
execute as @a[scores={Player=5},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."5".class_number set value 2
execute as @a[scores={Player=5},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."5".class_number set value 3
execute as @a[scores={Player=5},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."5".class_number set value 4
execute as @a[scores={Player=5},limit=1] if entity @s[team=Blue_Color] run data modify storage stats:leaderboards by_player."5".team set value {text:"Bleue",color:"blue"}
execute as @a[scores={Player=5},limit=1] if entity @s[team=Red_Color] run data modify storage stats:leaderboards by_player."5".team set value {text:"Rouge",color:"red"}

# ==========================
# PLAYER 6
# ==========================
execute as @a[scores={Player=6},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."6".class set value {text:"[Guerrier]",color:"gold",bold:true}
execute as @a[scores={Player=6},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."6".class set value {text:"[Archer]",color:"green",bold:true}
execute as @a[scores={Player=6},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."6".class set value {text:"[Mage]",color:"dark_purple",bold:true}
execute as @a[scores={Player=6},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."6".class set value {text:"[Assassin]",color:"dark_gray",bold:true}
execute as @a[scores={Player=6},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."6".class_number set value 1
execute as @a[scores={Player=6},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."6".class_number set value 2
execute as @a[scores={Player=6},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."6".class_number set value 3
execute as @a[scores={Player=6},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."6".class_number set value 4
execute as @a[scores={Player=6},limit=1] if entity @s[team=Blue_Color] run data modify storage stats:leaderboards by_player."6".team set value {text:"Bleue",color:"blue"}
execute as @a[scores={Player=6},limit=1] if entity @s[team=Red_Color] run data modify storage stats:leaderboards by_player."6".team set value {text:"Rouge",color:"red"}

# ==========================
# PLAYER 7
# ==========================
execute as @a[scores={Player=7},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."7".class set value {text:"[Guerrier]",color:"gold",bold:true}
execute as @a[scores={Player=7},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."7".class set value {text:"[Archer]",color:"green",bold:true}
execute as @a[scores={Player=7},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."7".class set value {text:"[Mage]",color:"dark_purple",bold:true}
execute as @a[scores={Player=7},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."7".class set value {text:"[Assassin]",color:"dark_gray",bold:true}
execute as @a[scores={Player=7},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."7".class_number set value 1
execute as @a[scores={Player=7},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."7".class_number set value 2
execute as @a[scores={Player=7},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."7".class_number set value 3
execute as @a[scores={Player=7},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."7".class_number set value 4
execute as @a[scores={Player=7},limit=1] if entity @s[team=Blue_Color] run data modify storage stats:leaderboards by_player."7".team set value {text:"Bleue",color:"blue"}
execute as @a[scores={Player=7},limit=1] if entity @s[team=Red_Color] run data modify storage stats:leaderboards by_player."7".team set value {text:"Rouge",color:"red"}

# ==========================
# PLAYER 8
# ==========================
execute as @a[scores={Player=8},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."8".class set value {text:"[Guerrier]",color:"gold",bold:true}
execute as @a[scores={Player=8},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."8".class set value {text:"[Archer]",color:"green",bold:true}
execute as @a[scores={Player=8},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."8".class set value {text:"[Mage]",color:"dark_purple",bold:true}
execute as @a[scores={Player=8},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."8".class set value {text:"[Assassin]",color:"dark_gray",bold:true}
execute as @a[scores={Player=8},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."8".class_number set value 1
execute as @a[scores={Player=8},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."8".class_number set value 2
execute as @a[scores={Player=8},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."8".class_number set value 3
execute as @a[scores={Player=8},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."8".class_number set value 4
execute as @a[scores={Player=8},limit=1] if entity @s[team=Blue_Color] run data modify storage stats:leaderboards by_player."8".team set value {text:"Bleue",color:"blue"}
execute as @a[scores={Player=8},limit=1] if entity @s[team=Red_Color] run data modify storage stats:leaderboards by_player."8".team set value {text:"Rouge",color:"red"}

# ==========================
# PLAYER 9
# ==========================
execute as @a[scores={Player=9},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."9".class set value {text:"[Guerrier]",color:"gold",bold:true}
execute as @a[scores={Player=9},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."9".class set value {text:"[Archer]",color:"green",bold:true}
execute as @a[scores={Player=9},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."9".class set value {text:"[Mage]",color:"dark_purple",bold:true}
execute as @a[scores={Player=9},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."9".class set value {text:"[Assassin]",color:"dark_gray",bold:true}
execute as @a[scores={Player=9},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."9".class_number set value 1
execute as @a[scores={Player=9},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."9".class_number set value 2
execute as @a[scores={Player=9},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."9".class_number set value 3
execute as @a[scores={Player=9},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."9".class_number set value 4
execute as @a[scores={Player=9},limit=1] if entity @s[team=Blue_Color] run data modify storage stats:leaderboards by_player."9".team set value {text:"Bleue",color:"blue"}
execute as @a[scores={Player=9},limit=1] if entity @s[team=Red_Color] run data modify storage stats:leaderboards by_player."9".team set value {text:"Rouge",color:"red"}

# ==========================
# PLAYER 10
# ==========================
execute as @a[scores={Player=10},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."10".class set value {text:"[Guerrier]",color:"gold",bold:true}
execute as @a[scores={Player=10},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."10".class set value {text:"[Archer]",color:"green",bold:true}
execute as @a[scores={Player=10},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."10".class set value {text:"[Mage]",color:"dark_purple",bold:true}
execute as @a[scores={Player=10},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."10".class set value {text:"[Assassin]",color:"dark_gray",bold:true}
execute as @a[scores={Player=10},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."10".class_number set value 1
execute as @a[scores={Player=10},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."10".class_number set value 2
execute as @a[scores={Player=10},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."10".class_number set value 3
execute as @a[scores={Player=10},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."10".class_number set value 4
execute as @a[scores={Player=10},limit=1] if entity @s[team=Blue_Color] run data modify storage stats:leaderboards by_player."10".team set value {text:"Bleue",color:"blue"}
execute as @a[scores={Player=10},limit=1] if entity @s[team=Red_Color] run data modify storage stats:leaderboards by_player."10".team set value {text:"Rouge",color:"red"}

# ==========================
# PLAYER 11
# ==========================
execute as @a[scores={Player=11},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."11".class set value {text:"[Guerrier]",color:"gold",bold:true}
execute as @a[scores={Player=11},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."11".class set value {text:"[Archer]",color:"green",bold:true}
execute as @a[scores={Player=11},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."11".class set value {text:"[Mage]",color:"dark_purple",bold:true}
execute as @a[scores={Player=11},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."11".class set value {text:"[Assassin]",color:"dark_gray",bold:true}
execute as @a[scores={Player=11},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."11".class_number set value 1
execute as @a[scores={Player=11},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."11".class_number set value 2
execute as @a[scores={Player=11},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."11".class_number set value 3
execute as @a[scores={Player=11},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."11".class_number set value 4
execute as @a[scores={Player=11},limit=1] if entity @s[team=Blue_Color] run data modify storage stats:leaderboards by_player."11".team set value {text:"Bleue",color:"blue"}
execute as @a[scores={Player=11},limit=1] if entity @s[team=Red_Color] run data modify storage stats:leaderboards by_player."11".team set value {text:"Rouge",color:"red"}

# ==========================
# PLAYER 12
# ==========================
execute as @a[scores={Player=12},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."12".class set value {text:"[Guerrier]",color:"gold",bold:true}
execute as @a[scores={Player=12},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."12".class set value {text:"[Archer]",color:"green",bold:true}
execute as @a[scores={Player=12},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."12".class set value {text:"[Mage]",color:"dark_purple",bold:true}
execute as @a[scores={Player=12},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."12".class set value {text:"[Assassin]",color:"dark_gray",bold:true}
execute as @a[scores={Player=12},limit=1] if entity @s[tag=warrior] run data modify storage stats:leaderboards by_player."12".class_number set value 1
execute as @a[scores={Player=12},limit=1] if entity @s[tag=archer] run data modify storage stats:leaderboards by_player."12".class_number set value 2
execute as @a[scores={Player=12},limit=1] if entity @s[tag=mage] run data modify storage stats:leaderboards by_player."12".class_number set value 3
execute as @a[scores={Player=12},limit=1] if entity @s[tag=rogue] run data modify storage stats:leaderboards by_player."12".class_number set value 4
execute as @a[scores={Player=12},limit=1] if entity @s[team=Blue_Color] run data modify storage stats:leaderboards by_player."12".team set value {text:"Bleue",color:"blue"}
execute as @a[scores={Player=12},limit=1] if entity @s[team=Red_Color] run data modify storage stats:leaderboards by_player."12".team set value {text:"Rouge",color:"red"}

team join non_ready_blue @a[team=Blue_Color]
team join non_ready_red @a[team=Red_Color]