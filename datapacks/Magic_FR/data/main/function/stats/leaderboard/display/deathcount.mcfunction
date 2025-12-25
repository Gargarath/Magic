## appelée par setup_leaderboard_endgame après la création des statues
## permet d'afficher le score de morts

function lobby:leaderboard/display_titles/display_death_title
# permet d'afficher le titre sur le tableau des scores

execute as @s[type=text_display,tag=leaderboard1_class] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.1.class","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard1_name] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.1.name","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard1_score] run data merge entity @s {text:[{"bold":true,"color":"yellow","nbt":"by_stat.stat_deathcount.1.score","storage":"stats:leaderboards"},{"bold":false,"color":"yellow","text":" morts"}]}
execute as @s[type=mannequin,tag=leaderboard_place1] run data modify entity @s profile.id set from storage stats:leaderboards by_stat.stat_deathcount.1.name.hover_event.uuid
execute as @s[type=mannequin,tag=leaderboard_place1] store result score @s weapon1 run data get storage stats:leaderboards by_stat.stat_deathcount."1".weapon1
execute as @s[type=mannequin,tag=leaderboard_place1] store result score @s spell1 run data get storage stats:leaderboards by_stat.stat_deathcount."1".spell1
execute as @s[type=mannequin,tag=leaderboard_place1] store result score @s spell2 run data get storage stats:leaderboards by_stat.stat_deathcount."1".spell2
execute as @s[type=mannequin,tag=leaderboard_place1] store result score @s spell3 run data get storage stats:leaderboards by_stat.stat_deathcount."1".spell3
execute as @s[type=mannequin,tag=leaderboard_place1] store result score @s chest run data get storage stats:leaderboards by_stat.stat_deathcount."1".chest
execute as @s[type=mannequin,tag=leaderboard_place1] store result score @s legs run data get storage stats:leaderboards by_stat.stat_deathcount."1".legs
execute as @s[type=mannequin,tag=leaderboard_place1] store result score @s boots run data get storage stats:leaderboards by_stat.stat_deathcount."1".boots
execute as @s[type=mannequin,tag=leaderboard_place1] store result score @s leaderboard_stand_class run data get storage stats:leaderboards by_stat.stat_deathcount."1".class_number
execute as @s[type=mannequin,tag=leaderboard_place1] run function main:stats/leaderboard/display/give_equipement/give_equipement

execute as @s[type=text_display,tag=leaderboard2_class] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.2.class","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard2_name] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.2.name","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard2_score] run data merge entity @s {text:[{"bold":true,"color":"yellow","nbt":"by_stat.stat_deathcount.2.score","storage":"stats:leaderboards"},{"bold":false,"color":"yellow","text":" morts"}]}
execute as @s[type=mannequin,tag=leaderboard_place2] run data modify entity @s profile.id set from storage stats:leaderboards by_stat.stat_deathcount.2.name.hover_event.uuid
execute as @s[type=mannequin,tag=leaderboard_place2] store result score @s weapon1 run data get storage stats:leaderboards by_stat.stat_deathcount."2".weapon1
execute as @s[type=mannequin,tag=leaderboard_place2] store result score @s spell1 run data get storage stats:leaderboards by_stat.stat_deathcount."2".spell1
execute as @s[type=mannequin,tag=leaderboard_place2] store result score @s spell2 run data get storage stats:leaderboards by_stat.stat_deathcount."2".spell2
execute as @s[type=mannequin,tag=leaderboard_place2] store result score @s spell3 run data get storage stats:leaderboards by_stat.stat_deathcount."2".spell3
execute as @s[type=mannequin,tag=leaderboard_place2] store result score @s chest run data get storage stats:leaderboards by_stat.stat_deathcount."2".chest
execute as @s[type=mannequin,tag=leaderboard_place2] store result score @s legs run data get storage stats:leaderboards by_stat.stat_deathcount."2".legs
execute as @s[type=mannequin,tag=leaderboard_place2] store result score @s boots run data get storage stats:leaderboards by_stat.stat_deathcount."2".boots
execute as @s[type=mannequin,tag=leaderboard_place2] store result score @s leaderboard_stand_class run data get storage stats:leaderboards by_stat.stat_deathcount."2".class_number
execute as @s[type=mannequin,tag=leaderboard_place2] run function main:stats/leaderboard/display/give_equipement/give_equipement

execute as @s[type=text_display,tag=leaderboard3_class] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.3.class","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard3_name] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.3.name","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard3_score] run data merge entity @s {text:[{"bold":true,"color":"yellow","nbt":"by_stat.stat_deathcount.3.score","storage":"stats:leaderboards"},{"bold":false,"color":"yellow","text":" morts"}]}
execute as @s[type=mannequin,tag=leaderboard_place3] run data modify entity @s profile.id set from storage stats:leaderboards by_stat.stat_deathcount.3.name.hover_event.uuid
execute as @s[type=mannequin,tag=leaderboard_place3] store result score @s weapon1 run data get storage stats:leaderboards by_stat.stat_deathcount."3".weapon1
execute as @s[type=mannequin,tag=leaderboard_place3] store result score @s spell1 run data get storage stats:leaderboards by_stat.stat_deathcount."3".spell1
execute as @s[type=mannequin,tag=leaderboard_place3] store result score @s spell2 run data get storage stats:leaderboards by_stat.stat_deathcount."3".spell2
execute as @s[type=mannequin,tag=leaderboard_place3] store result score @s spell3 run data get storage stats:leaderboards by_stat.stat_deathcount."3".spell3
execute as @s[type=mannequin,tag=leaderboard_place3] store result score @s chest run data get storage stats:leaderboards by_stat.stat_deathcount."3".chest
execute as @s[type=mannequin,tag=leaderboard_place3] store result score @s legs run data get storage stats:leaderboards by_stat.stat_deathcount."3".legs
execute as @s[type=mannequin,tag=leaderboard_place3] store result score @s boots run data get storage stats:leaderboards by_stat.stat_deathcount."3".boots
execute as @s[type=mannequin,tag=leaderboard_place3] store result score @s leaderboard_stand_class run data get storage stats:leaderboards by_stat.stat_deathcount."3".class_number
execute as @s[type=mannequin,tag=leaderboard_place3] run function main:stats/leaderboard/display/give_equipement/give_equipement

execute as @s[type=text_display,tag=leaderboard4_class] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.4.class","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard4_name] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.4.name","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard4_score] run data merge entity @s {text:[{"bold":true,"color":"yellow","nbt":"by_stat.stat_deathcount.4.score","storage":"stats:leaderboards"},{"bold":false,"color":"yellow","text":" morts"}]}
execute as @s[type=mannequin,tag=leaderboard_place4] run data modify entity @s profile.id set from storage stats:leaderboards by_stat.stat_deathcount.4.name.hover_event.uuid
execute as @s[type=mannequin,tag=leaderboard_place4] store result score @s weapon1 run data get storage stats:leaderboards by_stat.stat_deathcount."4".weapon1
execute as @s[type=mannequin,tag=leaderboard_place4] store result score @s spell1 run data get storage stats:leaderboards by_stat.stat_deathcount."4".spell1
execute as @s[type=mannequin,tag=leaderboard_place4] store result score @s spell2 run data get storage stats:leaderboards by_stat.stat_deathcount."4".spell2
execute as @s[type=mannequin,tag=leaderboard_place4] store result score @s spell3 run data get storage stats:leaderboards by_stat.stat_deathcount."4".spell3
execute as @s[type=mannequin,tag=leaderboard_place4] store result score @s chest run data get storage stats:leaderboards by_stat.stat_deathcount."4".chest
execute as @s[type=mannequin,tag=leaderboard_place4] store result score @s legs run data get storage stats:leaderboards by_stat.stat_deathcount."4".legs
execute as @s[type=mannequin,tag=leaderboard_place4] store result score @s boots run data get storage stats:leaderboards by_stat.stat_deathcount."4".boots
execute as @s[type=mannequin,tag=leaderboard_place4] store result score @s leaderboard_stand_class run data get storage stats:leaderboards by_stat.stat_deathcount."4".class_number
execute as @s[type=mannequin,tag=leaderboard_place4] run function main:stats/leaderboard/display/give_equipement/give_equipement

execute as @s[type=text_display,tag=leaderboard5_class] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.5.class","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard5_name] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.5.name","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard5_score] run data merge entity @s {text:[{"bold":true,"color":"yellow","nbt":"by_stat.stat_deathcount.5.score","storage":"stats:leaderboards"},{"bold":false,"color":"yellow","text":" morts"}]}
execute as @s[type=mannequin,tag=leaderboard_place5] run data modify entity @s profile.id set from storage stats:leaderboards by_stat.stat_deathcount.5.name.hover_event.uuid
execute as @s[type=mannequin,tag=leaderboard_place5] store result score @s weapon1 run data get storage stats:leaderboards by_stat.stat_deathcount."5".weapon1
execute as @s[type=mannequin,tag=leaderboard_place5] store result score @s spell1 run data get storage stats:leaderboards by_stat.stat_deathcount."5".spell1
execute as @s[type=mannequin,tag=leaderboard_place5] store result score @s spell2 run data get storage stats:leaderboards by_stat.stat_deathcount."5".spell2
execute as @s[type=mannequin,tag=leaderboard_place5] store result score @s spell3 run data get storage stats:leaderboards by_stat.stat_deathcount."5".spell3
execute as @s[type=mannequin,tag=leaderboard_place5] store result score @s chest run data get storage stats:leaderboards by_stat.stat_deathcount."5".chest
execute as @s[type=mannequin,tag=leaderboard_place5] store result score @s legs run data get storage stats:leaderboards by_stat.stat_deathcount."5".legs
execute as @s[type=mannequin,tag=leaderboard_place5] store result score @s boots run data get storage stats:leaderboards by_stat.stat_deathcount."5".boots
execute as @s[type=mannequin,tag=leaderboard_place5] store result score @s leaderboard_stand_class run data get storage stats:leaderboards by_stat.stat_deathcount."5".class_number
execute as @s[type=mannequin,tag=leaderboard_place5] run function main:stats/leaderboard/display/give_equipement/give_equipement

execute as @s[type=text_display,tag=leaderboard6_class] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.6.class","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard6_name] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.6.name","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard6_score] run data merge entity @s {text:[{"bold":true,"color":"yellow","nbt":"by_stat.stat_deathcount.6.score","storage":"stats:leaderboards"},{"bold":false,"color":"yellow","text":" morts"}]}
execute as @s[type=mannequin,tag=leaderboard_place6] run data modify entity @s profile.id set from storage stats:leaderboards by_stat.stat_deathcount.6.name.hover_event.uuid
execute as @s[type=mannequin,tag=leaderboard_place6] store result score @s weapon1 run data get storage stats:leaderboards by_stat.stat_deathcount."6".weapon1
execute as @s[type=mannequin,tag=leaderboard_place6] store result score @s spell1 run data get storage stats:leaderboards by_stat.stat_deathcount."6".spell1
execute as @s[type=mannequin,tag=leaderboard_place6] store result score @s spell2 run data get storage stats:leaderboards by_stat.stat_deathcount."6".spell2
execute as @s[type=mannequin,tag=leaderboard_place6] store result score @s spell3 run data get storage stats:leaderboards by_stat.stat_deathcount."6".spell3
execute as @s[type=mannequin,tag=leaderboard_place6] store result score @s chest run data get storage stats:leaderboards by_stat.stat_deathcount."6".chest
execute as @s[type=mannequin,tag=leaderboard_place6] store result score @s legs run data get storage stats:leaderboards by_stat.stat_deathcount."6".legs
execute as @s[type=mannequin,tag=leaderboard_place6] store result score @s boots run data get storage stats:leaderboards by_stat.stat_deathcount."6".boots
execute as @s[type=mannequin,tag=leaderboard_place6] store result score @s leaderboard_stand_class run data get storage stats:leaderboards by_stat.stat_deathcount."6".class_number
execute as @s[type=mannequin,tag=leaderboard_place6] run function main:stats/leaderboard/display/give_equipement/give_equipement

execute as @s[type=text_display,tag=leaderboard7_class] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.7.class","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard7_name] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.7.name","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard7_score] run data merge entity @s {text:[{"bold":true,"color":"yellow","nbt":"by_stat.stat_deathcount.7.score","storage":"stats:leaderboards"},{"bold":false,"color":"yellow","text":" morts"}]}
execute as @s[type=mannequin,tag=leaderboard_place7] run data modify entity @s profile.id set from storage stats:leaderboards by_stat.stat_deathcount.7.name.hover_event.uuid
execute as @s[type=mannequin,tag=leaderboard_place7] store result score @s weapon1 run data get storage stats:leaderboards by_stat.stat_deathcount."7".weapon1
execute as @s[type=mannequin,tag=leaderboard_place7] store result score @s spell1 run data get storage stats:leaderboards by_stat.stat_deathcount."7".spell1
execute as @s[type=mannequin,tag=leaderboard_place7] store result score @s spell2 run data get storage stats:leaderboards by_stat.stat_deathcount."7".spell2
execute as @s[type=mannequin,tag=leaderboard_place7] store result score @s spell3 run data get storage stats:leaderboards by_stat.stat_deathcount."7".spell3
execute as @s[type=mannequin,tag=leaderboard_place7] store result score @s chest run data get storage stats:leaderboards by_stat.stat_deathcount."7".chest
execute as @s[type=mannequin,tag=leaderboard_place7] store result score @s legs run data get storage stats:leaderboards by_stat.stat_deathcount."7".legs
execute as @s[type=mannequin,tag=leaderboard_place7] store result score @s boots run data get storage stats:leaderboards by_stat.stat_deathcount."7".boots
execute as @s[type=mannequin,tag=leaderboard_place7] store result score @s leaderboard_stand_class run data get storage stats:leaderboards by_stat.stat_deathcount."7".class_number
execute as @s[type=mannequin,tag=leaderboard_place7] run function main:stats/leaderboard/display/give_equipement/give_equipement

execute as @s[type=text_display,tag=leaderboard8_class] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.8.class","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard8_name] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.8.name","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard8_score] run data merge entity @s {text:[{"bold":true,"color":"yellow","nbt":"by_stat.stat_deathcount.8.score","storage":"stats:leaderboards"},{"bold":false,"color":"yellow","text":" morts"}]}
execute as @s[type=mannequin,tag=leaderboard_place8] run data modify entity @s profile.id set from storage stats:leaderboards by_stat.stat_deathcount.8.name.hover_event.uuid
execute as @s[type=mannequin,tag=leaderboard_place8] store result score @s weapon1 run data get storage stats:leaderboards by_stat.stat_deathcount."8".weapon1
execute as @s[type=mannequin,tag=leaderboard_place8] store result score @s spell1 run data get storage stats:leaderboards by_stat.stat_deathcount."8".spell1
execute as @s[type=mannequin,tag=leaderboard_place8] store result score @s spell2 run data get storage stats:leaderboards by_stat.stat_deathcount."8".spell2
execute as @s[type=mannequin,tag=leaderboard_place8] store result score @s spell3 run data get storage stats:leaderboards by_stat.stat_deathcount."8".spell3
execute as @s[type=mannequin,tag=leaderboard_place8] store result score @s chest run data get storage stats:leaderboards by_stat.stat_deathcount."8".chest
execute as @s[type=mannequin,tag=leaderboard_place8] store result score @s legs run data get storage stats:leaderboards by_stat.stat_deathcount."8".legs
execute as @s[type=mannequin,tag=leaderboard_place8] store result score @s boots run data get storage stats:leaderboards by_stat.stat_deathcount."8".boots
execute as @s[type=mannequin,tag=leaderboard_place8] store result score @s leaderboard_stand_class run data get storage stats:leaderboards by_stat.stat_deathcount."8".class_number
execute as @s[type=mannequin,tag=leaderboard_place8] run function main:stats/leaderboard/display/give_equipement/give_equipement

execute as @s[type=text_display,tag=leaderboard9_class] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.9.class","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard9_name] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.9.name","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard9_score] run data merge entity @s {text:[{"bold":true,"color":"yellow","nbt":"by_stat.stat_deathcount.9.score","storage":"stats:leaderboards"},{"bold":false,"color":"yellow","text":" morts"}]}
execute as @s[type=mannequin,tag=leaderboard_place9] run data modify entity @s profile.id set from storage stats:leaderboards by_stat.stat_deathcount.9.name.hover_event.uuid
execute as @s[type=mannequin,tag=leaderboard_place9] store result score @s weapon1 run data get storage stats:leaderboards by_stat.stat_deathcount."9".weapon1
execute as @s[type=mannequin,tag=leaderboard_place9] store result score @s spell1 run data get storage stats:leaderboards by_stat.stat_deathcount."9".spell1
execute as @s[type=mannequin,tag=leaderboard_place9] store result score @s spell2 run data get storage stats:leaderboards by_stat.stat_deathcount."9".spell2
execute as @s[type=mannequin,tag=leaderboard_place9] store result score @s spell3 run data get storage stats:leaderboards by_stat.stat_deathcount."9".spell3
execute as @s[type=mannequin,tag=leaderboard_place9] store result score @s chest run data get storage stats:leaderboards by_stat.stat_deathcount."9".chest
execute as @s[type=mannequin,tag=leaderboard_place9] store result score @s legs run data get storage stats:leaderboards by_stat.stat_deathcount."9".legs
execute as @s[type=mannequin,tag=leaderboard_place9] store result score @s boots run data get storage stats:leaderboards by_stat.stat_deathcount."9".boots
execute as @s[type=mannequin,tag=leaderboard_place9] store result score @s leaderboard_stand_class run data get storage stats:leaderboards by_stat.stat_deathcount."9".class_number
execute as @s[type=mannequin,tag=leaderboard_place9] run function main:stats/leaderboard/display/give_equipement/give_equipement

execute as @s[type=text_display,tag=leaderboard10_class] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.10.class","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard10_name] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.10.name","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard10_score] run data merge entity @s {text:[{"bold":true,"color":"yellow","nbt":"by_stat.stat_deathcount.10.score","storage":"stats:leaderboards"},{"bold":false,"color":"yellow","text":" morts"}]}
execute as @s[type=mannequin,tag=leaderboard_place10] run data modify entity @s profile.id set from storage stats:leaderboards by_stat.stat_deathcount.10.name.hover_event.uuid
execute as @s[type=mannequin,tag=leaderboard_place10] store result score @s weapon1 run data get storage stats:leaderboards by_stat.stat_deathcount."10".weapon1
execute as @s[type=mannequin,tag=leaderboard_place10] store result score @s spell1 run data get storage stats:leaderboards by_stat.stat_deathcount."10".spell1
execute as @s[type=mannequin,tag=leaderboard_place10] store result score @s spell2 run data get storage stats:leaderboards by_stat.stat_deathcount."10".spell2
execute as @s[type=mannequin,tag=leaderboard_place10] store result score @s spell3 run data get storage stats:leaderboards by_stat.stat_deathcount."10".spell3
execute as @s[type=mannequin,tag=leaderboard_place10] store result score @s chest run data get storage stats:leaderboards by_stat.stat_deathcount."10".chest
execute as @s[type=mannequin,tag=leaderboard_place10] store result score @s legs run data get storage stats:leaderboards by_stat.stat_deathcount."10".legs
execute as @s[type=mannequin,tag=leaderboard_place10] store result score @s boots run data get storage stats:leaderboards by_stat.stat_deathcount."10".boots
execute as @s[type=mannequin,tag=leaderboard_place10] store result score @s leaderboard_stand_class run data get storage stats:leaderboards by_stat.stat_deathcount."10".class_number
execute as @s[type=mannequin,tag=leaderboard_place10] run function main:stats/leaderboard/display/give_equipement/give_equipement

execute as @s[type=text_display,tag=leaderboard11_class] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.11.class","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard11_name] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.11.name","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard11_score] run data merge entity @s {text:[{"bold":true,"color":"yellow","nbt":"by_stat.stat_deathcount.11.score","storage":"stats:leaderboards"},{"bold":false,"color":"yellow","text":" morts"}]}
execute as @s[type=mannequin,tag=leaderboard_place11] run data modify entity @s profile.id set from storage stats:leaderboards by_stat.stat_deathcount.11.name.hover_event.uuid
execute as @s[type=mannequin,tag=leaderboard_place11] store result score @s weapon1 run data get storage stats:leaderboards by_stat.stat_deathcount."11".weapon1
execute as @s[type=mannequin,tag=leaderboard_place11] store result score @s spell1 run data get storage stats:leaderboards by_stat.stat_deathcount."11".spell1
execute as @s[type=mannequin,tag=leaderboard_place11] store result score @s spell2 run data get storage stats:leaderboards by_stat.stat_deathcount."11".spell2
execute as @s[type=mannequin,tag=leaderboard_place11] store result score @s spell3 run data get storage stats:leaderboards by_stat.stat_deathcount."11".spell3
execute as @s[type=mannequin,tag=leaderboard_place11] store result score @s chest run data get storage stats:leaderboards by_stat.stat_deathcount."11".chest
execute as @s[type=mannequin,tag=leaderboard_place11] store result score @s legs run data get storage stats:leaderboards by_stat.stat_deathcount."11".legs
execute as @s[type=mannequin,tag=leaderboard_place11] store result score @s boots run data get storage stats:leaderboards by_stat.stat_deathcount."11".boots
execute as @s[type=mannequin,tag=leaderboard_place11] store result score @s leaderboard_stand_class run data get storage stats:leaderboards by_stat.stat_deathcount."11".class_number
execute as @s[type=mannequin,tag=leaderboard_place11] run function main:stats/leaderboard/display/give_equipement/give_equipement

execute as @s[type=text_display,tag=leaderboard12_class] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.12.class","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard12_name] run data modify entity @s text set value [{"bold":true,"interpret":true,"nbt":"by_stat.stat_deathcount.12.name","storage":"stats:leaderboards"}]
execute as @s[type=text_display,tag=leaderboard12_score] run data merge entity @s {text:[{"bold":true,"color":"yellow","nbt":"by_stat.stat_deathcount.12.score","storage":"stats:leaderboards"},{"bold":false,"color":"yellow","text":" morts"}]}
execute as @s[type=mannequin,tag=leaderboard_place12] run data modify entity @s profile.id set from storage stats:leaderboards by_stat.stat_deathcount.12.name.hover_event.uuid
execute as @s[type=mannequin,tag=leaderboard_place12] store result score @s weapon1 run data get storage stats:leaderboards by_stat.stat_deathcount."12".weapon1
execute as @s[type=mannequin,tag=leaderboard_place12] store result score @s spell1 run data get storage stats:leaderboards by_stat.stat_deathcount."12".spell1
execute as @s[type=mannequin,tag=leaderboard_place12] store result score @s spell2 run data get storage stats:leaderboards by_stat.stat_deathcount."12".spell2
execute as @s[type=mannequin,tag=leaderboard_place12] store result score @s spell3 run data get storage stats:leaderboards by_stat.stat_deathcount."12".spell3
execute as @s[type=mannequin,tag=leaderboard_place12] store result score @s chest run data get storage stats:leaderboards by_stat.stat_deathcount."12".chest
execute as @s[type=mannequin,tag=leaderboard_place12] store result score @s legs run data get storage stats:leaderboards by_stat.stat_deathcount."12".legs
execute as @s[type=mannequin,tag=leaderboard_place12] store result score @s boots run data get storage stats:leaderboards by_stat.stat_deathcount."12".boots
execute as @s[type=mannequin,tag=leaderboard_place12] store result score @s leaderboard_stand_class run data get storage stats:leaderboards by_stat.stat_deathcount."12".class_number
execute as @s[type=mannequin,tag=leaderboard_place12] run function main:stats/leaderboard/display/give_equipement/give_equipement